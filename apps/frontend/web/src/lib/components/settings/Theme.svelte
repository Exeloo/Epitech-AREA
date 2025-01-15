<script lang="ts">
	import { selectedTheme } from '$lib/components/settings/theme';
	import { get } from 'svelte/store';

	interface Props {
		name: string;
		img: string;
	}
	let { name, img }: Props = $props();

	const handleSelection = () => {
		if (get(selectedTheme) === name) {
			selectedTheme.set(null);
		} else {
			selectedTheme.set(name);
		}
	};

	let isSelected = $derived(get(selectedTheme) === name);
</script>

<button class="rounded dark:bg-gray-700" onclick={handleSelection}>
	<img src={img} alt={name} class="rounded-xl outline outline-gray-300" />
	<span class="flex">
		<input type="checkbox" checked={isSelected} readonly />
		<span>{name}</span>
	</span>
</button>
