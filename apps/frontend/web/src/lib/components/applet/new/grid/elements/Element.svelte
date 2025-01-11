<script lang="ts">
	import type { ElementValues } from '$lib/components/applet/new/types';

	interface Props {
		id: string;
		title?: string;
		description?: string;
		inputs: string;
		element: ElementValues | null;
	}
	let {
		id,
		title = 'Title',
		description = 'Description',
		inputs,
		element = $bindable()
	}: Props = $props();

	interface EntryParams {
		type: string;
	}

	let open = $state(false);

	const parsedInputs = JSON.parse(inputs) as Record<string, EntryParams>;

	let elementInputs: Record<string, string> = $state({});

	let isSelected = $derived(element && element.actionId === id);

	const inputsArray = parsedInputs
		? Object.entries(parsedInputs).map(([key, value]) => {
				return { title: key, type: value.type };
			})
		: [];

	function addInputs() {
		if (element) {
			element.inputs = Object.assign({}, elementInputs);
			element.actionId = id;
		}
	}
</script>

<div
	class="rounded-xl border p-3 text-sm {isSelected
		? 'border-2 border-purple-500 bg-purple-100'
		: 'bg-neutral-50'}"
>
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
					<div class="flex items-center gap-1">
						<span class="font-bold">{input.title}</span>
						{#if isSelected && elementInputs[input.title] !== element.inputs[input.title]}
							<i class="fi fi-rr-medical-star flex justify-center text-xs text-red-600"></i>
						{/if}
					</div>
					<input bind:value={elementInputs[input.title]} class="rounded-lg border px-2" />
				</div>
			{/each}
			<div class="flex justify-center">
				<button
					onclick={addInputs}
					class="w-fit rounded-full bg-primary px-2 py-1 text-lg font-bold text-white shadow"
				>
					{isSelected ? 'Edit' : 'Add'}
				</button>
			</div>
		</div>
	{/if}
</div>
