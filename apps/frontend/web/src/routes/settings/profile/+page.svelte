<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import { load_getMe, UserStore } from '$houdini';
	import { onMount } from 'svelte';

	let userStore: UserStore = new UserStore();

	let info;

	onMount(async () => {
		const query = await load_getMe({});
		const { data } = await query.getMe.fetch({});

		if (!data || !data.getMe) return;

		info = userStore.get(data.getMe);
		console.log(info);
	});
</script>

{#if $info}
	<Input title="Username" value={$info.username} />
{/if}
