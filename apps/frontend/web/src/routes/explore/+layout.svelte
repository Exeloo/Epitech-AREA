<script>
	import ExploreNav from '$lib/explore/ExploreNav.svelte';
</script>

<div class="p-10">
	<ExploreNav />
	<div class="grid w-full gap-8 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
		<slot />
	</div>
</div>
<a aria-label="new" href="/applet/new/">
	<div class="fixed bottom-10 right-10 w-16 h-16 rounded-full bg-primary flex justify-center items-center text-2xl text-white">
		<i class="fi fi-br-plus flex justify-center items-center"></i>
	</div>
</a>
