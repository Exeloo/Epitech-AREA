<script lang="ts">
	import '../app.css';
	let { children } = $props();
</script>

<div class="w-full bg-neutral-100">
	<header
		class="sticky top-0 z-50 flex w-full items-center justify-between rounded-b-xl bg-white p-5 shadow-md shadow-neutral-200"
	>
		<a href="/"><h1 class="text-3xl font-bold">AREA</h1></a>
		<form class="mx-auto w-1/4">
			<label for="default-search" class="sr-only mb-2 text-sm font-medium text-neutral-900"
				>Search</label
			>
			<div class="relative">
				<div class="pointer-events-none absolute inset-y-0 start-0 flex items-center ps-3">
					<svg
						class="h-4 w-4 text-neutral-700"
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
					class="h-10 w-full rounded-xl bg-neutral-100 p-4 ps-10 text-sm placeholder-neutral-500 shadow-inner outline outline-1 outline-neutral-500"
					placeholder="Search providers"
					required
				/>
			</div>
		</form>
		<div class="text-md flex items-center justify-center gap-4 font-semibold">
			<a href="/auth/login" class="text-neutral-800">Log in</a>
			<a href="/auth/signup" class="rounded-xl bg-primary px-3 py-2 text-white">Sign up</a>
		</div>
	</header>
	<main class="w-screen min-h-screen flex justify-center">
		{@render children()}
	</main>
</div>
