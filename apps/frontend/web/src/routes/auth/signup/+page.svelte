<script lang="ts">
	import Input from '$lib/auth/Input.svelte';
	import Submit from '$lib/auth/Submit.svelte';
	import Validation from '$lib/auth/Validation.svelte';
	import { RegisterStore } from '$houdini';

	let username = $state('');
	let email = $state('');
	let firstname = $state('First');
	let lastName = $state('Last');
	let password = $state('');
	// let rememberMe = $state(false);

	async function handleSubmit(event: any): Promise<any> {
		event.preventDefault();

		try {
			const query = new RegisterStore();
			const { data, errors } = await query.mutate({
				data: {
					email: email,
					password: password,
					username: username,
					firstName: firstname,
					lastName: lastName
				}
			});

			if (!data) {
				console.log(errors);
				return errors;
			}

			console.log('Register successful:', query);
			alert('Register successful!');

			window.location.href = '/dashboard';
		} catch (error) {
			console.error('Unexpected error:', error);
		}
	}
</script>

<form onsubmit={handleSubmit} class="flex w-full flex-col gap-2">
	<Input bind:value={username} title="Username" placeholder="Enter your username" dataType="text" />
	<Input bind:value={email} title="Email" placeholder="Enter your email" dataType="email" />
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
		Already have an account?<a href="/auth/login/" class="pl-2 font-semibold">Log in</a>
	</p>
</form>
