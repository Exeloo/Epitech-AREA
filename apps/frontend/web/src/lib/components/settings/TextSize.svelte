<script lang="ts">
	import { textSize } from './stores';

	interface Props {
		size: 'lg' | 'xl' | '2xl';
	}
	let { size }: Props = $props();

	let selected = $derived(size === $textSize);
</script>

<button
	aria-label="text size"
	onclick={() => textSize.set(size)}
	class="rounded-xl border-2 font-semibold {selected
		? 'border-gray-900 bg-gray-300 dark:bg-gray-600'
		: 'border-gray-500'} p-4 {`text-${size}`}"
>
	aA
</button>
