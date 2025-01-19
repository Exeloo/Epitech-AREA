<script lang="ts">
	import { writable } from 'svelte/store';

	interface Props {
		title: string;
		action: {
			id: number;
			actionId: string;
			input: string;
			provider: {
				name: string;
				color: string;
				img: string;
			};
		};
	}
	let { title, action = $bindable() }: Props = $props();

	let actions = writable(Object.entries(JSON.parse(action.input)));

	const capitalize = (str: string) => str.charAt(0).toUpperCase() + str.slice(1);

	actions.subscribe((values) => {
		action.input = JSON.stringify(Object.fromEntries(values));
	});
</script>

<div
	class="flex w-full items-center justify-between gap-10 rounded-2xl bg-neutral-800 px-8 py-4 text-4xl text-white"
>
	<div class="flex flex-col items-center justify-center gap-10 rounded-2xl font-bold">
		{title}
		<div
			style="background-color: {action.provider.color}"
			class="rounded-3xl p-3 text-base text-black"
		>
			<img class="h-24 w-24" src={action.provider.img} alt={action.provider.name} />
		</div>
	</div>
	<div class="flex w-[70rem] flex-col gap-16 p-10">
		<div class="font-bold">
			{action.actionId.split('-').map(capitalize).join(' ')}
		</div>
		<div class="flex flex-col items-center justify-center gap-5">
			<!-- eslint-disable-next-line @typescript-eslint/no-unused-vars -->
			{#each $actions as [key, value], i}
				<div class="flex w-full items-center justify-center gap-5 text-2xl">
					<div class="w-2/5">
						{key.split('_').map(capitalize).join(' ')}
					</div>
					<input class="w-3/5 rounded-lg text-black" bind:value={$actions[i][1]} />
				</div>
			{/each}
		</div>
	</div>
</div>
