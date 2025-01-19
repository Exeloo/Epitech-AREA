<script lang="ts">
	interface Props {
		title: string;
		placeholder?: string;
		dataType?: 'text' | 'email' | 'password' | 'textarea';
		value: string;
	}
	let { title, placeholder, dataType = 'text', value = $bindable() }: Props = $props();
</script>

<div class="w-full">
	<label class="flex flex-col gap-1 font-medium text-neutral-700 dark:text-neutral-200">
		{title}
		{#if dataType === 'textarea'}
			<textarea
				bind:value
				rows="4"
				class="rounded-xl bg-neutral-50 px-4 py-3 text-sm placeholder-neutral-400 shadow-inner outline outline-1 outline-gray-300 dark:bg-gray-600 dark:font-semibold dark:text-white dark:outline-gray-800"
				name={title}
				{placeholder}
			></textarea>
		{:else}
			<input
				bind:value
				class="w-full rounded-xl bg-neutral-50 px-4 py-3 placeholder-neutral-400 shadow-inner outline outline-1 outline-gray-300 dark:bg-gray-600 dark:font-semibold dark:text-white dark:outline-gray-800"
				name={title}
				type={dataType}
				{placeholder}
			/>
		{/if}
	</label>
</div>
