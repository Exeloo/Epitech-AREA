<script lang="ts">
    import type {MouseEventHandler} from "svelte/elements";

    interface Props {
        text: string,
        onsubmit: MouseEventHandler<HTMLButtonElement>
    }
    const { text, onsubmit}: Props = $props();
</script>

<button type="submit" onclick={onsubmit} class="bg-primary text-white font-bold w-full py-2 rounded-xl text-xl shadow-md shadow-gray-500">
    {text}
</button>