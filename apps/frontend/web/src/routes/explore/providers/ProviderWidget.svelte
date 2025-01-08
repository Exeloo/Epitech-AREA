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
		};
		actions: {
			id: string;
			name: string;
			description: string;
		};
	} | null;

	export let closeWidget: () => void;
</script>

{#if provider}
	<div class="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-md">
		<div class="relative w-full max-w-md rounded-xl bg-white p-8 shadow-xl">
			<!-- Close Button -->
			<button
				class="absolute right-3 top-3 flex h-10 w-10 items-center justify-center rounded-full bg-gray-100 text-gray-600 hover:bg-gray-200 hover:text-gray-900 focus:outline-none focus:ring focus:ring-gray-300 focus:ring-offset-2"
				on:click={closeWidget}
				aria-label="Close widget"
			>
				✕
			</button>
			<!-- Provider Name -->
			<h3 class="mb-4 text-center text-2xl font-bold text-gray-800">{provider.name}</h3>

			<!-- Provider Description -->
			<p class="text-center text-sm leading-relaxed text-gray-600">
				{provider.description}
				{provider.triggers.name}
				{provider.triggers.description}
				{provider.actions.name}
				{provider.actions.description}
			</p>
		</div>
	</div>
{/if}
