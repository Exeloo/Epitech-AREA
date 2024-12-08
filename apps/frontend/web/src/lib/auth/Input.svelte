<script lang="ts">
    interface Props {
        title: string,
        placeholder: string,
        dataType?: "text" | "email" | "password",
        value: string,
    }
    let { title, placeholder, dataType="text", value = $bindable()}: Props = $props();
</script>

<div class="w-full">
    <label class="flex flex-col font-medium text-neutral-700 gap-1">
        {title}
        <input bind:value={value} class="outline outline-1 outline-gray-300 px-4 py-3 rounded-xl shadow-inner placeholder-neutral-400 bg-neutral-50" name="{title}" type="{dataType}" placeholder="{placeholder}"/>
    </label>
</div>