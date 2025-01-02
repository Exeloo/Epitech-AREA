<script lang="ts">
	import Input from '$lib/components/Input.svelte';
	import Checkbox from '$lib/auth/Checkbox.svelte';
	import Submit from '$lib/auth/Submit.svelte';
	import { fragment, graphql, load_login } from '$houdini';

	let email = $state('');
	let password = $state('');
	let rememberMe = $state(false);

	async function handleSubmit(event: any): Promise<any> {
		event.preventDefault();

		try {
			const query = await load_login({});
			const { data, errors } = await query.login.fetch({
				variables: { data: { email: email, password: password } }
			});

			if (!data || !data.login) {
				console.log(errors);
				return errors;
			}

			let queryResult = $state(
				fragment(
					data.login,
					graphql(`
						fragment TokenFields on AuthTokenResponse {
							token
							refreshToken
							tokenExpiresAt
						}
					`)
				)
			);

			queryResult.subscribe((data) => {
				console.log('Login successful:', query);
				alert('Login successful!');

				if (rememberMe) {
					localStorage.setItem('token', data.token);
					localStorage.setItem('refreshToken', data.refreshToken);
				} else {
					sessionStorage.setItem('token', data.token);
					sessionStorage.setItem('refreshToken', data.refreshToken);
				}
				window.location.href = '/';
			});
		} catch (error) {
			console.error('Unexpected error:', error);
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
