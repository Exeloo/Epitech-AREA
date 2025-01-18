<script lang="ts">
	import { page } from '$app/stores';
	import { errorsStore, successStore } from '$lib/components/auth/stores';
	import { onDestroy, onMount } from 'svelte';
	import Alert from '$lib/components/auth/Alert.svelte';

	let errors: string[] = [];
	let success: string[] = [];

	const unsubscribeErrors = errorsStore.subscribe((value) => {
		errors = value;
	});

	const unsubscribeSuccess = successStore.subscribe((value) => {
		success = value;
	});

	onDestroy(() => {
		unsubscribeErrors();
		unsubscribeSuccess();
	});

	onMount(() => {});
</script>

<div class="flex h-full w-96 flex-col items-center justify-center gap-5 py-8">
	<h2 class="text-3xl font-semibold">
		{$page.url.pathname !== '/auth/signup' ? 'Login in to your account' : 'Create an account'}
	</h2>
	<p class="font-medium text-neutral-600 dark:text-neutral-300">
		{$page.url.pathname !== '/auth/signup'
			? 'Welcome back ! Please enter your details.'
			: 'The adventure begins here'}
	</p>
	<div
		class="relative flex w-full items-center justify-center rounded-xl bg-gray-200 font-semibold outline outline-1 outline-neutral-300 dark:bg-gray-600 dark:text-white dark:outline-gray-800"
	>
		<div
			class="absolute left-0 rounded-xl bg-white outline outline-1 outline-neutral-300 transition-all duration-300 dark:bg-gray-800 dark:outline-gray-900"
			style="height: 100%; width: 50%; transform: translateX({$page.url.pathname === '/auth/login'
				? '100%'
				: '0%'})"
		></div>
		<a
			href="/auth/signup"
			class="relative z-10 w-full rounded-full py-2 text-center transition-all duration-300 {$page
				.url.pathname !== '/auth/signup'
				? 'text-gray-500 dark:text-neutral-300'
				: ''}"
		>
			Sign up
		</a>
		<a
			href="/auth/login"
			class="relative z-10 w-full rounded-full py-2 text-center transition-all duration-300 {$page
				.url.pathname !== '/auth/login'
				? 'text-gray-500 dark:text-neutral-300'
				: ''}"
		>
			Log in
		</a>
	</div>
	<div class="flex w-full flex-col gap-2">
		{#each errors as err}
			<Alert message={err} error={true} />
		{/each}
		{#each success as suc}
			<Alert message={suc} />
		{/each}
	</div>
	<slot />
</div>
