<script lang="ts">
	interface Props {
		overall?: boolean;
		value: boolean;
	}
	const { overall = false, value = $bindable() }: Props = $props();
</script>

<div class="text-secondary relative flex items-center rounded-full">
	<input
		id="checkbox-all-search"
		type="checkbox"
		value=""
		class="checked:border-secondary checked:bg-secondary peer relative z-10 h-5 w-5 cursor-pointer appearance-none rounded-md border-2 border-neutral-300 checked:bg-opacity-20 checked:bg-center"
	/>
	<label for="checkbox-all-search" class="sr-only">checkbox</label>
	{#if overall}
		<i
			class="fi fi-br-minus absolute inset-0 hidden items-center justify-center text-xs peer-checked:flex"
		></i>
	{:else}
		<i
			class="fi fi-br-check absolute inset-0 hidden items-center justify-center text-xs peer-checked:flex"
		></i>
	{/if}
</div>
