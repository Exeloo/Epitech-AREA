<script lang="ts">
	import { selectedTheme } from '$lib/components/settings/theme';
	import { get } from 'svelte/store';

	interface Props {
		name: string;
		img: string;
	}
	let { name, img }: Props = $props();

	const handleSelection = () => {
		if (get(selectedTheme) !== name) {
			selectedTheme.set(name);
		}
	};
</script>

<button class="space-y-2 rounded font-semibold dark:bg-gray-700" onclick={handleSelection}>
	<img src={img} alt={name} class="rounded-xl outline outline-gray-300 dark:outline-gray-900" />
	{name}
</button>
