<script lang="ts">
	import { page } from '$app/stores';
	import { textSize } from '$lib/components/settings/stores';

	interface Props {
		title: string;
		link: string;
	}
	let { title, link }: Props = $props();

	let actif = $derived($page.url.pathname === link);

	let currentTextSize: 'lg' | 'xl' | '2xl' = $state('xl');

	textSize.subscribe((size) => {
		currentTextSize = size;
	});
</script>

<a
	href={link}
	class="{actif
		? 'border-l-4 border-purple-600 bg-gray-200 font-bold dark:bg-gray-600'
		: ''} w-full rounded-xl px-4 py-2 {`text-${currentTextSize}`}"
>
	{title}
</a>
