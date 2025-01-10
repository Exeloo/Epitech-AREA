<script lang="ts">
	import { page } from '$app/stores';

	interface Props {
		title: string;
		link: string;
	}
	let { title, link }: Props = $props();
</script>

<a href={link} class="{$page.url.pathname === link ? 'bg-neutral-500 font-bold' : ''} w-full">
	{title}
</a>
