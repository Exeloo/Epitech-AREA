<script lang="ts">
	import { onMount } from 'svelte';

	let isOn = $state(false);
	let buttonWidth: number = $state(40);
	let parentWidth = $state(0);
	let startX: number = $state(0);
	let offsetX: number = $state(0);
	let isDragging = $state(false);

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
			if (offsetX > parentWidth - buttonWidth) offsetX = parentWidth - buttonWidth;
		}
	};

	const stopDrag = () => {
		isDragging = false;
		document.removeEventListener('mousemove', onDrag);
		document.removeEventListener('mouseup', stopDrag);

		if (offsetX >= parentWidth * 0.75) {
			isOn = true;
		} else {
			isOn = false;
		}

		console.log(offsetX + ' > ' + parentWidth * 0.75);
		offsetX = isOn ? parentWidth - buttonWidth - 8 : 0;
	};

	const toggleButton = () => {
		isOn = !isOn;
		offsetX = isOn ? parentWidth - buttonWidth - 8 : 0;
	};
</script>

<div class="relative" bind:this={parentDiv}>
	<div class="h-12 w-full rounded-full bg-neutral-100"></div>
	<button
		aria-label="connect slider"
		bind:this={button}
		class="absolute left-1 top-1 transform rounded-full bg-blue-500 shadow-md transition-transform duration-300 ease-in-out"
		style="width: {buttonWidth}px; height: {buttonWidth}px; transform: translateX({offsetX}px);"
		onmousedown={startDrag}
		onclick={toggleButton}
	></button>
</div>
