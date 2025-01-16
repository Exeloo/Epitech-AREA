<script lang="ts">
	import { page } from '$app/stores';

	interface Props {
		title: string;
		link: string;
	}
	let { title, link }: Props = $props();

	let actif = $derived($page.url.pathname === link);

	$effect(() => {
		console.log(title + ' > ' + actif + ': ' + $page.url.pathname + ' != ' + link);
	});
</script>

<a
	href={link}
	class="{actif
		? 'border-l-4 border-purple-600 font-bold dark:bg-gray-600'
		: ''} w-full rounded-xl px-4 py-2"
>
	{title}
</a>
