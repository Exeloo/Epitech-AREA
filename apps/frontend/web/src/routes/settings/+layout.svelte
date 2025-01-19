<script lang="ts">
	import SettingsNav from '$lib/components/settings/SettingsNav.svelte';

	let { children } = $props();
</script>

<div class="flex h-screen w-full justify-center gap-5 py-10">
	<div class="w-32 md:w-56">
		<SettingsNav />
	</div>
	<div class="w-1/2 sm:w-1/3">
		{@render children()}
	</div>
</div>
