<script>
	import ExploreNav from '$lib/components/explore/ExploreNav.svelte';
	import NewAppletButton from '$lib/components/applet/NewAppletButton.svelte';
</script>

<div class="h-full w-full p-10 md:px-20">
	<ExploreNav />
	<slot />
</div>
<NewAppletButton />
