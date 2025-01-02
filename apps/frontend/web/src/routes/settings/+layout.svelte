<script lang="ts">
	import SettingsNav from '$lib/settings/SettingsNav.svelte';

	let { children } = $props();
</script>

<div class="flex h-screen w-full">
	<div class="flex-shrink-0 basis-1/4 bg-gray-200">
		<SettingsNav />
	</div>
	<div class="flex-grow basis-3/4 bg-white">
		{@render children()}
	</div>
</div>
