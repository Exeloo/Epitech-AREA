<script lang="ts">
	import Theme from '$lib/components/settings/Theme.svelte';
	import darkImg from '$lib/images/dark.png';
	import lightImg from '$lib/images/light.png';
	import TextSize from '$lib/components/settings/TextSize.svelte';
	import { textSize } from '$lib/components/settings/stores.js';

	let currentTextSize: 'lg' | 'xl' | '2xl' = $state('xl');

	textSize.subscribe((size) => {
		currentTextSize = size;
	});
</script>

<div class="flex flex-col gap-5">
	<div class="flex flex-col gap-4">
		<h3 class="font-bold {`text-${currentTextSize}`}">Themes</h3>
		<div class="flex w-full flex-col gap-5 lg:flex-row">
			<Theme name="Dark" img={darkImg} />
			<Theme name="Light" img={lightImg} />
		</div>
	</div>
	<div class="flex flex-col gap-4">
		<h3 class="font-bold {`text-${currentTextSize}`}">Text size</h3>
		<div class="flex w-full flex-col gap-5 lg:flex-row">
			<TextSize size="lg" />
			<TextSize size="xl" />
			<TextSize size="2xl" />
		</div>
	</div>
</div>
