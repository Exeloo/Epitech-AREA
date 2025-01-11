<script lang="ts">
	import SettingsNav from '$lib/components/settings/SettingsNav.svelte';

	let { children } = $props();
</script>

<div class="flex h-screen w-full">
	<div class="bg-gray-200">
		<SettingsNav />
	</div>
	<div class="bg-white">
		{@render children()}
	</div>
</div>
