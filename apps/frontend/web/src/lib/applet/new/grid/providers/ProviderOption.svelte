<script lang="ts">
	import {
		type BaseProvider,
		BaseProviderStore,
		load_getProviderById,
		type ProviderWithManifest$data,
		ProviderWithManifestStore
	} from '$houdini';

	interface Props {
		provider: BaseProvider;
		selectedProvider: ProviderWithManifest$data | null;
	}
	let { provider, selectedProvider = $bindable() }: Props = $props();

	let info = $state(new BaseProviderStore().get(provider));

	async function selectProvider() {
		if (!$info) return;

		const query = await load_getProviderById({ variables: { id: $info.id } });
		const { data, errors } = await query.getProviderById.fetch();

		console.log(errors);
		if (!data || !data.getProviderById) return;

		new ProviderWithManifestStore().get(data.getProviderById).subscribe((provider) => {
			selectedProvider = provider;
		});
	}
</script>

{#if $info}
	<button
		onclick={selectProvider}
		class="flex h-full flex-col items-center justify-center"
		style="background-color: {$info.color};"
	>
		<img src={$info.img} alt="instagram" class="h-20 w-20" />
	</button>
{/if}
