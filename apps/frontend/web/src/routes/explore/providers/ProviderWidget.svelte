<script lang="ts">
    export let provider: {
        id: string;
        name: string;
        description: string;
        img: string;
        color: string;
        triggers: {
            id: string;
            name: string;
            description: string;
        }
        actions: {
            id: string;
            name: string;
            description: string;
        }
    } | null;

    export let closeWidget: () => void;
</script>

{#if provider}
    <div class="fixed inset-0 bg-black/60 backdrop-blur-md flex items-center justify-center z-50">
        <div class="p-8 bg-white shadow-xl rounded-xl max-w-md w-full relative">
            <!-- Close Button -->
            <button
                    class="absolute top-3 right-3 bg-gray-100 hover:bg-gray-200 rounded-full w-10 h-10 flex items-center justify-center text-gray-600 hover:text-gray-900 focus:outline-none focus:ring focus:ring-gray-300 focus:ring-offset-2"
                    on:click={closeWidget}
                    aria-label="Close widget"
            >
                ✕
            </button>

            <!-- Provider Image -->
            <div class="flex items-center justify-center mb-6">
                <img src={provider.img} class="h-24 w-24 rounded-full shadow-lg" />
            </div>

            <!-- Provider Name -->
            <h3 class="text-2xl font-bold text-center text-gray-800 mb-4">{provider.name}</h3>

            <!-- Provider Description -->
            <p class="text-center text-gray-600 text-sm leading-relaxed">
                {provider.description}
                {provider.triggers.name}
                {provider.triggers.description}
                {provider.actions.name}
                {provider.actions.description}

            </p>
        </div>

    </div>
{/if}