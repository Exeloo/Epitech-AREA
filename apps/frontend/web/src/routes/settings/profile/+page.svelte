<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import { load_getMe, type User$data, type User$input, UserStore } from '$houdini';
	import { onMount } from 'svelte';
	import type { Readable } from 'svelte/store';

	let userStore: UserStore = new UserStore();

	let info: Readable<User$data | null> & { variables: User$input; kind: any } & {};

	onMount(async () => {
		const query = await load_getMe({});
		const { data } = await query.getMe.fetch({});

		if (!data || !data.getMe) return;

		info = userStore.get(data.getMe);
		console.log(info);
	});
</script>

{#if $info}
	<div class="flex flex-col gap-5">
		<Input title="Username" value={$info.username} />
		<Input title="Email" value={$info.email} />
		<div class="flex gap-8">
			<Input title="Firstname" value={$info.firstName} />
			<Input title="Lastname" value={$info.lastName} />
		</div>
		<Input title="Description" dataType="textarea" value={$info.description || ''} />
		<button class="rounded-full bg-purple-800 py-2 text-xl font-bold">Save</button>
	</div>
{/if}
