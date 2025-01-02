<script lang="ts">
    interface Props {
        title: string;
        link: string;
    }
    let { title, link }: Props = $props();
</script>

<a href={link} class="w-full">
    {title}
</a>