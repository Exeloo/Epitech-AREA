<script lang="ts">
	interface Props {
		title: string;
	}
	let { title }: Props = $props();
</script>

<div class="rounded-xl bg-neutral-200 px-4 py-2">
	{title}
</div>
