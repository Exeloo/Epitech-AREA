<script lang="ts">
	import { type BaseApplet, BaseAppletStore } from '$houdini';
	import Slider from '$lib/components/explore/card/Slider.svelte';
	import Card from './Card.svelte';

	interface Props {
		applet: BaseApplet;
	}
	let { applet }: Props = $props();

	let colors = ['#77DDFF', '#FF77B2', '#FF9C77', '#F5DF4D'];

	let info = $state(new BaseAppletStore().get(applet));
	let color = colors[Math.floor(Math.random() * colors.length)];
</script>

<Card {color}>
	<div class="flex justify-between">
		<a href="/apps/frontend/web/static" class="font-bold">BillHarper_</a>
		<div class="flex w-14 gap-2">
			<a href="/apps/frontend/web/static"
				><img
					src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1024px-Instagram_icon.png"
					alt="instagram"
					class="h-6"
				/></a
			>
			<a href="/apps/frontend/web/static"
				><img
					src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Gmail_icon_%282020%29.svg/1280px-Gmail_icon_%282020%29.svg.png"
					alt="gmail"
					class="h-6"
				/></a
			>
		</div>
	</div>
	<p class="text-4xl font-bold drop-shadow-lg">
		{$info?.description}
	</p>
	<Slider />
</Card>
