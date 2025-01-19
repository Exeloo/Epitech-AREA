<script lang="ts">
	import '../app.css';
	import { getSession, load_getMe, type User$data, type User$input, UserStore } from '$houdini';
	import { onMount } from 'svelte';
	import logo from '$lib/images/logo.png';
	import type { Readable } from 'svelte/store';
	import Searchbar from '$lib/components/explore/Searchbar.svelte';

	// eslint-disable-next-line no-undef
	let session: App.Session | null = $state(null);
	let { children } = $props();

	let userStore: UserStore = new UserStore();

	let info: (Readable<User$data | null> & { variables: User$input; kind: any } & {}) | undefined =
		$state();

	onMount(async () => {
		session = await getSession();

		const query = await load_getMe({});
		const { data } = await query.getMe.fetch({});

		if (!data || !data.getMe) return;

		info = userStore.get(data.getMe);
		console.log(info);
	});
</script>

<div class="h-full w-full bg-neutral-100 dark:bg-gray-700 dark:text-white">
	<header
		class="sticky top-0 z-50 flex w-full items-center justify-between bg-white p-5 shadow-md shadow-neutral-200 dark:bg-gray-800 dark:shadow-gray-800"
	>
		<a href="/" class="flex items-center justify-between">
			<img src={logo} alt="logo" class="h-10" />
			<h1 class="text-2xl font-black">AETHER</h1>
		</a>
		<Searchbar />
		<div class="text-md flex items-center justify-center gap-4 font-semibold">
			{#if session?.user}
				<a href="/auth/logout" class="text-neutral-800 dark:text-white">Log out</a>
				<a
					aria-label="settings"
					href="/settings/"
					class="flex h-10 w-10 items-center justify-center rounded-full bg-purple-700"
				>
					{#if $info && $info.picture}
						<img src={$info.picture} alt="User profile" class="rounded-full" />
					{:else}
						<i class="fi fi-rr-user flex justify-center text-xl text-white"></i>
					{/if}
				</a>
			{:else}
				<a href="/auth/login" class="text-neutral-800 dark:text-white">Log in</a>
				<a href="/auth/signup" class="rounded-xl bg-primary px-3 py-2 text-white">Sign up</a>
			{/if}
		</div>
	</header>
	<main class="flex min-h-[calc(100vh-90px)] w-screen justify-center">
		<div class="flex w-full flex-col items-center gap-5">
			{@render children()}
		</div>
	</main>
</div>
