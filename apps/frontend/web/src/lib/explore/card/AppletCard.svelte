<script>
	import Slider from '$lib/explore/card/Slider.svelte';
	import Card from './Card.svelte';
</script>

<Card color="#ffffff">
	<div class="flex justify-between">
		<a href="/apps/frontend/web/static" class="font-bold">BillHarper_</a>
		<div class="flex w-14 gap-2">
			<a href="/apps/frontend/web/static"
				><img
					src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1024px-Instagram_icon.png"
					alt="instagram"
					class="h-6"
				/></a
			>
			<a href="/apps/frontend/web/static"
				><img
					src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Gmail_icon_%282020%29.svg/1280px-Gmail_icon_%282020%29.svg.png"
					alt="gmail"
					class="h-6"
				/></a
			>
		</div>
	</div>
	<p class="text-4xl font-bold drop-shadow-lg">
		Transfer instagram DM by email with a gmail account
	</p>
	<Slider />
</Card>
