<script lang="ts">
	import { onMount } from 'svelte';

	onMount(() => {
		document.cookie = `token=""; path=/; Max-Age=0; Secure; SameSite=Strict`;
		document.cookie = `refreshToken=""; path=/; Max-Age=0; Secure; SameSite=Strict`;

		window.location.href = '/login';
	});
</script>
