<script lang="ts">
	interface Props {
		title: string;
		placeholder: string;
		dataType?: 'text' | 'email' | 'password';
		value: string;
	}
	let { title, placeholder, dataType = 'text', value = $bindable() }: Props = $props();
</script>

<div class="w-full">
	<label class="flex flex-col gap-1 font-medium text-neutral-700 dark:text-neutral-200">
		{title}
		<input
			bind:value
			class="rounded-xl bg-neutral-50 px-4 py-3 placeholder-neutral-400 shadow-inner outline outline-1 outline-gray-300 dark:bg-gray-500 dark:placeholder-neutral-200 dark:outline-gray-700"
			name={title}
			type={dataType}
			{placeholder}
		/>
	</label>
</div>
