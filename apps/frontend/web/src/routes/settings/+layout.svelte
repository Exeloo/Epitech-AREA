<script lang="ts">
	import SettingsNav from '$lib/components/settings/SettingsNav.svelte';

	let { children } = $props();
</script>

<div class="flex h-screen w-full justify-center">
	<div class="w-56">
		<SettingsNav />
	</div>
	<div class="w-1/2">
		{@render children()}
	</div>
</div>
