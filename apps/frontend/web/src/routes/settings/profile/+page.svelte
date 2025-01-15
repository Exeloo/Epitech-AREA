<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import { UserStore } from '$houdini';
	import type { PageData } from './$houdini';

	interface Props {
		data: PageData;
	}
	let { data }: Props = $props();

	let { getMe } = $derived(data);
	let userStore: UserStore = new UserStore();

	let info = $derived(userStore.get($getMe));
</script>

{#if $info}
	<Input title="Name" placeholder="Name" value={$info.username} />
{/if}
