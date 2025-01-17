<script>
	import Theme from '$lib/components/settings/Theme.svelte';
	import darkImg from '$lib/images/dark.png';
	import lightImg from '$lib/images/light.png';
</script>

<div class="flex w-full flex-col gap-5 lg:flex-row">
	<Theme name="Dark" img={darkImg} />
	<Theme name="Light" img={lightImg} />
</div>
