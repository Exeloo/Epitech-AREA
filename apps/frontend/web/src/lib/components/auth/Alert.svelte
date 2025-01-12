<script lang="ts">
	interface Props {
		message: string;
		error?: boolean;
	}
	let { message, error = false }: Props = $props();
</script>

<div
	class="w-full rounded-xl border {error
		? 'border-red-800 bg-red-400'
		: 'border-green-800 bg-green-400'} p-2 text-center"
>
	<span>{message}</span>
</div>
