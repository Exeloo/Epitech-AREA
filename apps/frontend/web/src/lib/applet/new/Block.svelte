<script lang="ts">
    interface Props {
        title: string,
    }
    let { title }: Props = $props();
</script>

<div class="bg-neutral-200 py-2 px-4 rounded-xl">
    {title}
</div>