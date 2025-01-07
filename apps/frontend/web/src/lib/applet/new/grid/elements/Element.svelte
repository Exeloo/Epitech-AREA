<script lang="ts">
	import type { ElementValues } from '$lib/applet/new/types';

	interface EntryParams {
		type: string;
	}

	interface Props {
		title?: string;
		description?: string;
		inputs: string;
		element: ElementValues | null;
	}
	let {
		title = 'Title',
		description = 'Description',
		inputs,
		element = $bindable()
	}: Props = $props();

	let open = $state(false);

	const parsedInputs = JSON.parse(inputs) as Record<string, EntryParams>;

	const inputsArray = parsedInputs
		? Object.entries(parsedInputs).map(([key, value]) => {
				console.log(key + ': ' + value);
				return { title: key, type: value.type };
			})
		: [];
</script>

<div class="rounded-xl border bg-neutral-50 p-3 text-sm">
	<button onclick={() => (open = !open)} class="flex w-full items-center justify-between">
		<span class="flex flex-col items-start gap-1">
			<span class="font-bold">{title}</span>
			<span class="text-start">{description}</span>
		</span>
		<i class="fi fi-rr-angle-small-down flex justify-center"></i>
	</button>
	{#if open && element}
		<hr class="my-3" />
		<div class="flex flex-col gap-2">
			{#each inputsArray as input}
				<div class="flex justify-between gap-2">
					<span class="font-bold">{input.title}</span>
					<input bind:value={element.inputs[input.title]} class="rounded-lg border px-2" />
				</div>
			{/each}
			<div class="flex justify-center">
				<button class="w-fit rounded-full bg-primary px-2 py-1 text-lg font-bold text-white shadow">
					Add
				</button>
			</div>
		</div>
	{/if}
</div>
