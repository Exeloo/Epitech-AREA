<script lang="ts">
	let colors = ['#77DDFF', '#FF77B2', '#FF9C77', '#F5DF4D'];

	let color = colors[Math.floor(Math.random() * colors.length)];
</script>

<div
	class="flex h-96 w-80 flex-col justify-between rounded-3xl p-7"
	style="background-color: {color};"
>
	<slot />
</div>
