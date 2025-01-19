<script lang="ts">
	import { page } from '$app/stores';

	let selected = $derived($page.url.pathname !== '/explore/providers' ? 0 : 1);
</script>

<div class="relative mb-10 flex w-full justify-start gap-6">
	<a href="/explore" class="text-center text-2xl font-bold"> Applets </a>
	<a href="/explore/providers" class="text-center text-2xl font-bold"> Providers </a>
	<div
		class="absolute bottom-[-4px] h-1 w-20 rounded bg-neutral-700 transition-transform duration-300 dark:bg-gray-400"
		style={`transform: translateX(${selected * 160}%);`}
	></div>
</div>
