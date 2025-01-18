<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import Submit from '$lib/components/auth/Submit.svelte';
	import Validation from '$lib/components/auth/Validation.svelte';
	import { RegisterStore } from '$houdini';
	import { errorsStore } from '$lib/components/auth/stores';
	import OAuthLogin from '$lib/components/auth/oauth/OAuthLogin.svelte';

	let username = $state('');
	let email = $state('');
	let firstname = $state('');
	let lastname = $state('');
	let password = $state('');

	const registerStore = new RegisterStore();

	async function handleSubmit(event: any): Promise<any> {
		event.preventDefault();

		try {
			const query = await registerStore.mutate({
				data: {
					firstName: firstname,
					lastName: lastname,
					username: username,
					email: email,
					password: password
				}
			});

			console.log(query);

			if (!query.data) {
				new Error('Internal Server Error');
				return query.errors;
			}

			window.location.href =
				'/auth/login/?success=Account%20created%20successfully.%20You%20can%20login%20now!';
		} catch (e) {
			errorsStore.set(['Invalid Credentials']);
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
	<Validation description="Must be at least 8 characters" />
	<Validation description="Must contain one special character" />
	<Submit onsubmit={handleSubmit} text="Get started" />
	<p>
		Already have an account ?<a href="/auth/login/" class="pl-2 font-semibold">Log in</a>
	</p>
	<hr class="my-5" />
	<OAuthLogin />
</form>
