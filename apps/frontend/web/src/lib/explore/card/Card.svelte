<script lang="ts">
	export let color;
</script>

<div
	class="flex h-96 w-80 flex-col justify-between rounded-3xl p-7"
	style="background-color: {color};"
>
	<slot />
</div>
