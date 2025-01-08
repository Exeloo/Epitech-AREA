<script lang="ts">
	import ProviderCard from '$lib/card/ProviderCard.svelte';
	import ProviderWidget from '../../explore/providers/ProviderWidget.svelte';

	let providers = [
		{
			id: '1',
			name: '5-Minute Crafts',
			description: 'Craft ideas for everyone.',
			img: '/path/to/5-minute-crafts-logo.png',
			color: '#00AEEF',
			triggers: { id: 't1', name: 'Trigger 1', description: 'Example trigger' },
			actions: { id: 'a1', name: 'Action 1', description: 'Example action' }
		},
		{
			id: '2',
			name: 'The Verge on YouTube',
			description: 'Technology news and updates.',
			img: '/path/to/verge-logo.png',
			color: '#4A3AFF',
			triggers: { id: 't2', name: 'Trigger 2', description: 'Example trigger' },
			actions: { id: 'a2', name: 'Action 2', description: 'Example action' }
		}
		// Add more providers here...
	];

	let selectedProvider = null;

	function openWidget(provider) {
		selectedProvider = provider;
	}

	function closeWidget() {
		selectedProvider = null;
	}
</script>

<!-- Updated Grid Layout -->
<div class="grid gap-x-6 gap-y-8 p-4 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
	{#each providers as provider}
		<div class="flex flex-col">
			<!-- Updated size for ProviderCard -->
			<ProviderCard {provider} class="h-[25rem] w-[20rem]" on:click={() => openWidget(provider)} />
		</div>
	{/each}
</div>

{#if selectedProvider}
	<ProviderWidget provider={selectedProvider} {closeWidget} />
{/if}
