<script>
	import ExploreNav from '$lib/components/explore/ExploreNav.svelte';
</script>

<div class="w-full p-10 md:px-20">
	<ExploreNav />
	<div class="flex w-auto flex-wrap justify-center gap-8 bg-gray-600">
		<slot />
	</div>
</div>
<a aria-label="new" href="/applet/new/">
	<div
		class="fixed bottom-10 right-10 flex h-16 w-16 items-center justify-center rounded-full bg-primary text-2xl text-white"
	>
		<i class="fi fi-br-plus flex items-center justify-center"></i>
	</div>
</a>
