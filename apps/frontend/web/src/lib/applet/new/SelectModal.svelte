<script lang="ts">
	interface Props {
		open?: boolean;
	}
	let { open = $bindable(false) }: Props = $props();
</script>

<div
	id="default-modal"
	tabindex="-1"
	aria-hidden="true"
	class="{open
		? ''
		: 'hidden'} fixed z-50 max-h-full w-full items-center justify-center overflow-y-auto overflow-x-hidden"
>
	<div class="relative max-h-full w-full max-w-2xl p-4">
		<div class="relative rounded-lg bg-white shadow dark:bg-gray-700">
			<div
				class="flex items-center justify-between rounded-t border-b p-4 md:p-5 dark:border-gray-600"
			>
				<h3 class="text-xl font-semibold text-gray-900 dark:text-white">Terms of Service</h3>
				<button
					onclick={() => (open = false)}
					type="button"
					class="ms-auto inline-flex h-8 w-8 items-center justify-center rounded-lg bg-transparent text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600 dark:hover:text-white"
					data-modal-hide="default-modal"
				>
					<svg
						class="h-3 w-3"
						aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg"
						fill="none"
						viewBox="0 0 14 14"
					>
						<path
							stroke="currentColor"
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"
						/>
					</svg>
					<span class="sr-only">Close modal</span>
				</button>
			</div>
		</div>
	</div>
</div>
