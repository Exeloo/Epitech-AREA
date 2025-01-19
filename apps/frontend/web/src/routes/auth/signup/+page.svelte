<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import Submit from '$lib/components/auth/Submit.svelte';
	import Validation from '$lib/components/auth/Validation.svelte';
	import { load_login, RegisterStore, TokenFieldsStore } from '$houdini';
	import { errorsStore } from '$lib/components/auth/stores';
	import OAuthLogin from '$lib/components/auth/oauth/OAuthLogin.svelte';
	import { setTokenInCookies } from '$lib/components/auth/cookies';

	let username = $state('');
	let email = $state('');
	let firstname = $state('');
	let lastname = $state('');
	let password = $state('');

	const registerStore = new RegisterStore();

	function checkPasswordLength() {
		return password.length >= 8;
	}

	function checkPasswordStrength() {
		const specialChars = /[ `!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?~]/;
		return specialChars.test(password);
	}

	async function handleSubmit(event: any): Promise<any> {
		event.preventDefault();

		try {
			let registerQuery = await registerStore.mutate({
				data: {
					firstName: firstname,
					lastName: lastname,
					username: username,
					email: email,
					password: password
				}
			});

			console.log(registerQuery);

			if (!registerQuery.data) {
				new Error('Internal Server Error');
				return registerQuery.errors;
			}

			const loginQuery = await load_login({
				variables: { data: { email: email, password: password } }
			});
			console.log(loginQuery);

			const { data, errors } = await loginQuery.login.fetch();

			if (!data || !data.login || errors) {
				new Error('Internal Server Error');
				return errors;
			}

			let queryResult = $state(new TokenFieldsStore().get(data.login));

			queryResult.subscribe(setTokenInCookies);
		} catch (e) {
			errorsStore.set(['One or more fields have errors. Please correct them and try again.']);
			console.error(e);
		}
	}
</script>

<form onsubmit={handleSubmit} class="flex w-full flex-col gap-2">
	<Input bind:value={username} title="Username" placeholder="Enter your username" dataType="text" />
	<Input bind:value={email} title="Email" placeholder="Enter your email" dataType="email" />
	<Input
		bind:value={firstname}
		title="Firstname"
		placeholder="Enter your firstname"
		dataType="text"
	/>
	<Input bind:value={lastname} title="Lastname" placeholder="Enter your lastname" />
	<Input
		bind:value={password}
		title="Password"
		placeholder="Create your password"
		dataType="password"
	/>
	<Validation description="Must be at least 8 characters" valid={checkPasswordLength()} />
	<Validation description="Must contain one special character" valid={checkPasswordStrength()} />
	<Submit
		onsubmit={handleSubmit}
		text="Get started"
		on={checkPasswordLength() && checkPasswordStrength()}
	/>
	<p>
		Already have an account ?<a href="/auth/login/" class="pl-2 font-semibold">Log in</a>
	</p>
	<hr class="my-5" />
	<OAuthLogin />
</form>
