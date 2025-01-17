<script lang="ts">
	import Input from '$lib/components/Inputs/Input.svelte';
	import { load_getMe, updateMeStore, type User$data, type User$input, UserStore } from '$houdini';
	import { onMount } from 'svelte';
	import type { Readable } from 'svelte/store';

	let userStore: UserStore = new UserStore();
	const updateStore = new updateMeStore();

	let info: Readable<User$data | null> & { variables: User$input; kind: any } & {};

	async function save() {
		if (!$info) return;

		try {
			const query = await updateStore.mutate({
				data: {
					username: $info.username,
					firstName: $info.firstName,
					lastName: $info.lastName,
					email: $info.email,
					description: $info.description
				}
			});
			console.log(query);
		} catch (error) {
			console.error(error);
		}
	}

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
		<Input title="Username" bind:value={$info.username} />
		<Input title="Email" bind:value={$info.email} />
		<div class="flex w-full flex-col gap-8 md:flex-row">
			<Input title="Firstname" bind:value={$info.firstName} />
			<Input title="Lastname" bind:value={$info.lastName} />
		</div>
		{#if $info.description}
			<Input title="Description" dataType="textarea" bind:value={$info.description} />
		{/if}
		<button onclick={save} class="rounded-xl bg-purple-800 py-2 text-xl font-bold text-white shadow"
			>Save</button
		>
	</div>
{/if}
