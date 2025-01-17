<script lang="ts">
	import { type BaseApplet, BaseAppletStore } from '$houdini';
	import Card from './Card.svelte';

	interface Props {
		applet: BaseApplet;
	}
	let { applet }: Props = $props();

	let colors = ['#77DDFF', '#FF77B2', '#FF9C77', '#F5DF4D'];

	let info = $state(new BaseAppletStore().get(applet));
	let color = colors[Math.floor(Math.random() * colors.length)];
</script>

{#if $info}
	<a href="/explore/applets/{$info.id}" class="w-fit">
		<Card {color}>
			<div>
				<h3 class="text-4xl font-bold drop-shadow-lg">
					{$info.name}
				</h3>
				<p class="text-2xl drop-shadow-lg">
					{$info.description}
				</p>
			</div>
		</Card>
	</a>
{/if}
