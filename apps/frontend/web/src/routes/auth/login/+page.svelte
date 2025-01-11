<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import Checkbox from '$lib/components/auth/Checkbox.svelte';
	import Submit from '$lib/components/auth/Submit.svelte';
	import { load_login, TokenFieldsStore } from '$houdini';
	import { errorsStore } from '$lib/components/auth/stores';

	let email = $state('');
	let password = $state('');
	let rememberMe = $state(false);

	async function handleSubmit(event: any): Promise<any> {
		event.preventDefault();

		try {
			const query = await load_login({
				variables: { data: { email: email, password: password } }
			});
			console.log(query);

			const { data, errors } = await query.login.fetch();

			if (!data || !data.login || errors) {
				new Error('Internal Server Error');
				return errors;
			}

			let queryResult = $state(new TokenFieldsStore().get(data.login));

			queryResult.subscribe((data) => {
				if (!data) {
					console.log('Login error');
					return;
				}

				const maxAge = rememberMe ? 60 * 60 * 24 * 7 : undefined;
				document.cookie = `token=${data.token}; path=/; ${rememberMe ? `Max-Age=${maxAge}` : ''}; Secure; SameSite=Strict`;
				document.cookie = `refreshToken=${data.refreshToken}; path=/; ${rememberMe ? `Max-Age=${maxAge}` : ''}; Secure; SameSite=Strict`;

				window.location.href = '/';
			});
		} catch (e) {
			errorsStore.set(['Invalid Credentials']);
			console.error(e);
		}
	}
</script>

<form onsubmit={handleSubmit} class="flex w-full flex-col gap-2">
	<Input bind:value={email} title="Email" placeholder="Enter your email" dataType="email" />
	<Input
		bind:value={password}
		title="Password"
		placeholder="Enter your password"
		dataType="password"
	/>
	<div class="flex w-full justify-between">
		<div class="mb-4 flex items-center">
			<Checkbox bind:value={rememberMe} />
			<label for="remember-checkbox" class="text-md ms-2 font-medium text-neutral-600">
				Remember me
			</label>
		</div>
		<a href="/" class="text-secondary font-bold">Forgot password</a>
	</div>
	<Submit onsubmit={handleSubmit} text="Sign in" />
	<p>
		Don't have an account?<a href="/auth/signup/" class="pl-2 font-semibold">Sign up</a>
	</p>
</form>
