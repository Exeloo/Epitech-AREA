<script lang="ts">
	import '../app.css';
	import { getSession } from '$houdini';
	import { onMount } from 'svelte';

	// eslint-disable-next-line no-undef
	let session: App.Session | null = $state(null);
	let { children } = $props();

	onMount(async () => {
		session = await getSession();
	});
</script>

<div class="w-full bg-neutral-100 dark:bg-gray-700 dark:text-white">
	<header
		class="sticky top-0 z-50 flex w-full items-center justify-between bg-white p-5 shadow-md shadow-neutral-200 dark:bg-gray-800 dark:shadow-gray-800"
	>
		<a href="/"><h1 class="text-3xl font-bold">AREA</h1></a>
		<form class="mx-auto w-1/4">
			<label for="default-search" class="sr-only mb-2 text-sm font-medium text-neutral-900"
				>Search</label
			>
			<div class="relative">
				<div class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
					<svg
						class="h-4 w-4 text-neutral-700 dark:text-gray-300"
						aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg"
						fill="none"
						viewBox="0 0 20 20"
					>
						<path
							stroke="currentColor"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
						/>
					</svg>
				</div>
				<input
					type="search"
					id="default-search"
					class="h-10 w-full rounded-xl bg-neutral-100 pl-10 text-sm placeholder-neutral-500 shadow-inner outline outline-1 outline-neutral-500 dark:bg-gray-700 dark:placeholder-neutral-200 dark:outline-gray-600"
					placeholder="Search providers"
					required
				/>
			</div>
		</form>
		<div class="text-md flex items-center justify-center gap-4 font-semibold">
			{#if session?.user}
				<a href="/auth/logout" class="text-neutral-800 dark:text-white">Log out</a>
				<a
					aria-label="settings"
					href="/settings/"
					class="flex h-10 w-10 items-center justify-center rounded-full bg-purple-700"
				>
					<i class="fi fi-rr-user flex justify-center text-xl"></i>
				</a>
			{:else}
				<a href="/auth/login" class="text-neutral-800 dark:text-white">Log in</a>
				<a href="/auth/signup" class="rounded-xl bg-primary px-3 py-2 text-white">Sign up</a>
			{/if}
		</div>
	</header>
	<main class="flex min-h-[calc(100vh-80px)] w-screen justify-center">
		<div class="flex w-full flex-col items-center gap-5 px-40">
			{@render children()}
		</div>
	</main>
</div>
