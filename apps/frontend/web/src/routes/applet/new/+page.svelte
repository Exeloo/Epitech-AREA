<script>
	import Block from '$lib/applet/new/Block.svelte';
	import { BlockType } from '$lib/applet/new/types';
</script>

<div class="mt-20 flex flex-col gap-10">
	<Block title="If this" type={BlockType.Triggers} focus={true} />
	<Block title="Then" type={BlockType.Actions} />
</div>
