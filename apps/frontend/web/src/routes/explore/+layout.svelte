<script>
	import ExploreNav from '$lib/components/explore/ExploreNav.svelte';
</script>

<div class="h-full w-full p-10 md:px-20">
	<ExploreNav />
	<slot />
</div>
<a aria-label="new" href="/applet/new/">
	<div
		class="fixed bottom-10 right-10 flex h-16 w-16 items-center justify-center rounded-full bg-primary text-2xl text-white"
	>
		<i class="fi fi-br-plus flex items-center justify-center"></i>
	</div>
</a>
