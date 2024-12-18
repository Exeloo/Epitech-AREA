<script>
	import ExploreNav from '$lib/explore/ExploreNav.svelte';
</script>

<div class="p-10">
	<ExploreNav />
	<div class="grid w-full gap-8 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
		<slot />
	</div>
</div>
