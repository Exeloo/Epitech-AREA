<script lang="ts">
	import { onMount } from 'svelte';

	let isDragging = $state(false);
	let isOn = $state(false);
	let isConnected = $state(false);

	let buttonWidth: number = $state(40);
	let parentWidth = $state(0);

	let startX: number = $state(0);
	let offsetX: number = $state(0);

	let parentDiv: HTMLElement;
	let button: HTMLElement;

	onMount(() => {
		if (parentDiv) {
			parentWidth = parentDiv.offsetWidth;

			const buttonElement = parentDiv.querySelector('button');
			if (buttonElement) {
				buttonWidth = buttonElement.offsetWidth;
			}
		}
	});

	const startDrag = (event: MouseEvent) => {
		isDragging = true;
		startX = event.clientX - offsetX;
		document.addEventListener('mousemove', onDrag);
		document.addEventListener('mouseup', stopDrag);
	};

	const onDrag = (event: MouseEvent) => {
		if (isDragging) {
			offsetX = event.clientX - startX;

			if (offsetX < 0) offsetX = 0;
			if (offsetX > parentWidth - buttonWidth) offsetX = parentWidth - buttonWidth - 8;
		}
	};

	const stopDrag = () => {
		isDragging = false;
		document.removeEventListener('mousemove', onDrag);
		document.removeEventListener('mouseup', stopDrag);

		const threshold = parentWidth / 2;
		const wasOn = isOn;
		isOn = offsetX > threshold;

		if (!isOn && wasOn) {
			isConnected = false;
		}

		offsetX = isOn ? parentWidth - buttonWidth - 8 : 0;

		if (isOn && !isConnected) {
			setTimeout(() => {
				isConnected = true;
			}, 2000);
		}
	};
</script>

<div class="relative" bind:this={parentDiv}>
	<!-- Slider Background -->
	<div
		class="flex h-12 w-full items-center justify-center rounded-full bg-neutral-100 transition-colors duration-300"
		class:bg-blue-500={isOn}
		class:bg-neutral-100={!isOn}
	>
		<!-- Text State -->
		<div
			class="w-full items-center text-center font-bold text-white transition-all duration-300"
			style="transform: translateY({isConnected ? '-50%' : '0'});"
		>
			<div class="transition-opacity duration-500" style="opacity: {isOn && !isConnected ? 1 : 0};">
				Connecting...
			</div>
			<div class="transition-opacity duration-500" style="opacity: {isConnected ? 1 : 0};">
				Connected
			</div>
		</div>
	</div>

	<!-- Slider Button -->
	<button
		aria-label="connect slider"
		bind:this={button}
		class="absolute left-1 top-1 transform rounded-full shadow-md transition-transform duration-300 ease-in-out"
		class:bg-neutral-100={isOn}
		class:bg-blue-500={!isOn}
		style="width: {buttonWidth}px; height: {buttonWidth}px; transform: translateX({offsetX}px);"
		onmousedown={startDrag}
	></button>
</div>
