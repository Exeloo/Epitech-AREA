<script lang="ts">
	// export let valid: boolean = false;
	export let description: string;
</script>

<div class="flex w-full items-center gap-2">
	<div class="peer relative z-10 h-5 w-5 rounded-full bg-neutral-300">
		<i class="fi fi-br-check absolute inset-0 flex items-center justify-center text-xs text-white"
		></i>
	</div>
	<p>
		{description}
	</p>
</div>
