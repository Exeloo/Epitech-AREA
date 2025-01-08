<script lang="ts">
	export let color: string;

	// $$restProps is used to forward all other properties (like class)
</script>

<!-- Forward $$restProps to the root element -->
<div
		class="flex h-96 w-80 flex-col justify-between rounded-3xl p-7"
		style="background-color: {color};"

		{...$$restProps}
>
<slot />
</div>