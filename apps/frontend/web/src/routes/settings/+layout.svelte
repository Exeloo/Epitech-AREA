<script lang="ts">
    import SettingsNav from "$lib/settings/SettingsNav.svelte";

    let { children } = $props();
</script>

<div class="h-screen w-full flex">
    <div class="basis-1/4 flex-shrink-0 bg-gray-200">
        <SettingsNav/>
    </div>
    <div class="basis-3/4 flex-grow bg-white">
        {@render children()}
    </div>
</div>
