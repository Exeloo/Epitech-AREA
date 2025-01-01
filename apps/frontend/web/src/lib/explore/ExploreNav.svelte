<script lang="ts">
	import {onMount} from "svelte";

	let selectedButton = $state(0);

	onMount(() => {
		const currentUrl = window.location.pathname;
		if (currentUrl === '/providers') {
			selectedButton = 1;
		} else {
			selectedButton = 0;
		}
	});

</script>

<div class="relative mb-10 flex gap-6">
	<a href="/" onclick={() => (selectedButton = 0)} class="text-center text-2xl font-bold">
		Applets
	</a>
	<a href="/providers" onclick={() => (selectedButton = 1)} class="text-center text-2xl font-bold">
		Providers
	</a>
	<div
		class="absolute bottom-[-4px] h-1 w-20 rounded bg-neutral-700 transition-transform duration-300"
		style={`transform: translateX(${selectedButton * 160}%);`}
	></div>
</div>
