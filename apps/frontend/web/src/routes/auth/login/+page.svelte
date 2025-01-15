<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import Checkbox from '$lib/components/auth/Checkbox.svelte';
	import Submit from '$lib/components/auth/Submit.svelte';
	import OAuthLogin from '$lib/components/auth/oauth/OAuthLogin.svelte';
	import { errorsStore, successStore } from '$lib/components/auth/stores';
	import { load_login, TokenFieldsStore } from '$houdini';
	import { onMount } from 'svelte';

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

			queryResult.subscribe(setTokenInCookies);
		} catch (e) {
			errorsStore.set(['Invalid Credentials']);
			console.error(e);
		}
	}

	const setTokenInCookies = (data: any) => {
		if (!data) {
			console.log('Login error');
			return;
		}

		const maxAge = rememberMe ? 60 * 60 * 24 * 7 : undefined;
		document.cookie = `token=${data.token}; path=/; ${rememberMe ? `Max-Age=${maxAge}` : ''}; Secure; SameSite=Strict`;
		document.cookie = `refreshToken=${data.refreshToken}; path=/; ${rememberMe ? `Max-Age=${maxAge}` : ''}; Secure; SameSite=Strict`;

		window.location.href = '/';
	};

	onMount(() => {
		const url = new URL(window.location.href);
		const successMessage = url.searchParams.get('success');
		if (successMessage) {
			successStore.set([successMessage]);
		}

		const token = url.searchParams.get('token');
		const refreshToken = url.searchParams.get('refreshToken');
		const tokenExpiresAt = url.searchParams.get('tokenExpiresAt');
		if (token && refreshToken && tokenExpiresAt) {
			setTokenInCookies({ token, refreshToken, tokenExpiresAt });
		}
	});
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
			<label
				for="remember-checkbox"
				class="text-md ms-2 font-medium text-neutral-600 dark:text-neutral-200"
			>
				Remember me
			</label>
		</div>
		<a href="/" class="text-secondary font-bold">Forgot password</a>
	</div>
	<Submit onsubmit={handleSubmit} text="Sign in" />
	<p>
		Don't have an account?<a href="/auth/signup/" class="pl-2 font-semibold">Sign up</a>
	</p>
	<hr class="my-5" />
	<OAuthLogin />
</form>
