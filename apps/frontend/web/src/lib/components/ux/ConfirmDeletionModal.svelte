<script lang="ts">
	interface Props {
		open?: boolean;
		onDeleteConfirm: () => void;
	}
	let { open = $bindable(false), onDeleteConfirm }: Props = $props();
</script>

<div
	id="default-modal"
	aria-hidden="true"
	class="{open
		? ''
		: 'hidden'} fixed inset-0 z-50 flex max-h-full w-full items-center justify-center overflow-y-auto overflow-x-hidden"
>
	<!-- eslint-disable-next-line svelte/no-unused-svelte-ignore -->
	<!-- svelte-ignore a11y_click_events_have_key_events, a11y_no_static_element_interactions (because utils for modal handling) -->
	<!-- eslint-disable-next-line svelte/valid-compile -->
	<div class="absolute inset-0 bg-black opacity-50" onclick={() => (open = false)}></div>
	<div
		class="relative flex h-1/3 w-full flex-col rounded-lg bg-white shadow sm:w-1/2 md:w-2/3 lg:w-1/2 xl:w-1/3 dark:bg-gray-800"
	>
		<div class="flex h-full w-full flex-col items-center justify-center gap-20">
			<div class="text-2xl font-bold">Are you sure to delete this ?</div>
			<div class="flex gap-20 text-xl text-white">
				<button class="rounded-full bg-gray-500 px-8 py-2" onclick={() => (open = false)}>
					Cancel
				</button>
				<button class="rounded-full bg-red-600 px-8 py-2" onclick={onDeleteConfirm}>
					Confirm
				</button>
			</div>
		</div>
	</div>
</div>
