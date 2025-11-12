<script>
	import { onMount } from 'svelte';

	// --- Apartment Data ---
	const apartmentUnits = [
		{
			id: 1,
			title: 'The Cozy Studio',
			size: '37 m²',
			image: '/apartment/1.jpg',
			link: '#'
		},
		{
			id: 2,
			title: 'The Nook Alcove',
			size: '46 m²',
			image: '/apartment/2.jpg',
			link: '#'
		},
		{
			id: 3,
			title: 'The Junior Suite',
			size: '60 m²',
			image: '/apartment/3.jpg',
			link: '#'
		},
		{
			id: 4,
			title: 'The Urban Retreat',
			size: '93 m²',
			image: '/apartment/4.jpg',
			link: '#'
		},
		{
			id: 5,
			title: 'The Family Haven',
			size: '139 m²',
			image: '/apartment/5.jpg',
			link: '#'
		},
		{
			id: 6,
			title: 'The Penthouse Oasis',
			size: '186 m²',
			image: '/apartment/6.jpg',
			link: '#'
		}
	];

	const totalUnits = apartmentUnits.length;

	// --- Reactive State ---
	// CHANGED: Start focused on the 2nd element (index 1)
	let activeIndex = 1;

	// --- Custom Styles for Complex Effects ---
	const customStyles = {
		// This is passed as an inline style for the bottom gradient
		gradientEdgeBottom: 'linear-gradient(to top, rgba(0,0,0,0.8), rgba(0,0,0,0))'
	};

	// Define card and gap widths using responsive units for the 'peek' effect
	// INITIALIZED to a default safe value (Desktop 60vw)
	let cardWidthVw = 60; // vw unit
	const gapWidthVw = 4; // vw unit (for space-x-[4vw])

	/**
	 * UPDATED: Sets cardWidthVw based on window.innerWidth.
	 * This is now only called client-side within onMount and window.onresize.
	 */
	function handleResize() {
		if (typeof window !== 'undefined') {
			// Desktop/Tablet: Card is 60vw wide
			if (window.innerWidth >= 768) {
				cardWidthVw = 60;
			} else {
				// Mobile: Card is 80vw wide
				cardWidthVw = 80;
			}
		}
	}

	// --- Lifecycle Hook for Responsiveness ---
	onMount(() => {
		// Run initial sizing calculation
		handleResize();

		// Attach resize listener
		window.addEventListener('resize', handleResize);

		// Cleanup function returns from onMount
		return () => window.removeEventListener('resize', handleResize);
	});

	// --- Navigation Logic (Infinite Loop Implemented) ---
	function handlePrev() {
		// If activeIndex is 0, wrap around to the last index (totalUnits - 1).
		activeIndex = activeIndex > 0 ? activeIndex - 1 : totalUnits - 1;
	}

	function handleNext() {
		// If activeIndex is the last index, wrap around to 0.
		activeIndex = activeIndex < totalUnits - 1 ? activeIndex + 1 : 0;
	}

	// --- Reactive Transform Style Calculation (Updated for centering 1 card) ---
	$: transformStyle = (() => {
		// The starting point for the track to center the first element (activeIndex = 0)
		// is 50vw - (cardWidthVw / 2)
		const centerOffset = 50 - cardWidthVw / 2; // Result in vw

		// The shift for each step is (cardWidthVw + gapWidthVw)
		const totalShiftVw = activeIndex * (cardWidthVw + gapWidthVw);

		// Total Transform = Center Offset - Accumulated Shift
		return `translateX(calc(${centerOffset}vw - ${totalShiftVw}vw))`;
	})();
</script>

<section class="font-inter relative overflow-hidden bg-teal-900 pt-16 pb-16 sm:pt-24">
	<!-- Header Section -->
	<div class="relative z-20 container mx-auto max-w-6xl px-4">
		<div class="mb-8 flex flex-col items-center text-center">
			<div class="mb-2 text-sm font-semibold tracking-widest text-teal-300 uppercase">
				Elevated Comfort
			</div>
			<h2 class="text-5xl font-extrabold text-white sm:text-6xl">Choose a Unit</h2>
		</div>
	</div>

	<!-- Carousel Container -->
	<div class="relative w-full overflow-hidden">
		<!-- Navigation Buttons (Full Width, Edge Placement, Desktop only) -->
		<div class="absolute inset-y-0 z-40 hidden w-full justify-between px-4 lg:flex">
			<!-- Removed disabled attributes for infinite loop -->
			<button
				on:click={handlePrev}
				class="ml-0 self-center rounded-r-full bg-black/50 p-4 text-white shadow-lg transition-colors duration-300 hover:bg-black/70"
				aria-label="Previous Unit"
			>
				<svg
					xmlns="http://www.w3.org/2000/svg"
					width="24"
					height="24"
					viewBox="0 0 24 24"
					fill="none"
					stroke="currentColor"
					stroke-width="2"
					stroke-linecap="round"
					stroke-linejoin="round"
					class="lucide lucide-chevron-left"><path d="m15 18-6-6 6-6" /></svg
				>
			</button>
			<button
				on:click={handleNext}
				class="mr-0 self-center rounded-l-full bg-black/50 p-4 text-white shadow-lg transition-colors duration-300 hover:bg-black/70"
				aria-label="Next Unit"
			>
				<svg
					xmlns="http://www.w3.org/2000/svg"
					width="24"
					height="24"
					viewBox="0 0 24 24"
					fill="none"
					stroke="currentColor"
					stroke-width="2"
					stroke-linecap="round"
					stroke-linejoin="round"
					class="lucide lucide-chevron-right"><path d="m9 18 6-6-6-6" /></svg
				>
			</button>
		</div>

		<!-- Track - Uses transform for sliding. Removed py-8 for full bleed -->
		<div
			class="flex transition-transform duration-700 ease-in-out"
			style="transform: {transformStyle}; gap: {gapWidthVw}vw"
		>
			<!-- Svelte's #each block replaces array.map() -->
			{#each apartmentUnits as unit}
				<!-- Set explicit responsive width for the focus view -->
				<!-- Now relies on the client-side calculated cardWidthVw -->
				<div class="flex-shrink-0" style="width: {cardWidthVw}vw;">
					<div class="h-full">
						<div
							class="group relative h-[500px] w-full flex-shrink-0 snap-center overflow-hidden rounded-xl text-white shadow-2xl transition-transform duration-500 ease-in-out"
						>
							<!-- Image Container with Hover Scale -->
							<div class="h-full overflow-hidden">
								<img
									src={unit.image}
									alt={unit.title}
									class="h-full w-full object-cover transition-transform duration-700 group-hover:scale-110"
								/>
							</div>

							<!-- Hover Overlay: Dark Blur -->
							<div
								class="absolute inset-0 z-10 bg-black/40 opacity-0 transition-opacity duration-500 group-hover:opacity-100"
							></div>

							<!-- Hover Content: View Details Button -->
							<div
								class="absolute inset-0 z-20 flex translate-y-10 items-center justify-center opacity-0 transition-opacity duration-500 group-hover:translate-y-0 group-hover:opacity-100"
							>
								<a
									href={unit.link}
									class="rounded-full border border-white px-6 py-3 text-sm font-semibold tracking-wider text-white uppercase shadow-lg transition duration-300 hover:bg-white hover:text-gray-900"
								>
									View Details
								</a>
							</div>

							<!-- Bottom Information -->
							<div
								class="absolute bottom-0 z-30 w-full p-6 text-center transition-all duration-300 sm:p-8"
							>
								<!-- Background Gradient for Text Legibility -->
								<div
									class="absolute bottom-0 left-0 z-[-1] h-40 w-full"
									style="background: {customStyles.gradientEdgeBottom}"
								></div>

								<div class="flex items-end justify-between">
									<h3 class="mb-0 text-2xl font-bold tracking-tight">
										{unit.title}
									</h3>
									<div class="flex items-center space-x-1 text-sm font-medium opacity-80">
										<!-- Maximize SVG (Inlined as a fallback for Lucide) -->
										<svg
											xmlns="http://www.w3.org/2000/svg"
											width="16"
											height="16"
											viewBox="0 0 24 24"
											fill="none"
											stroke="currentColor"
											stroke-width="2"
											stroke-linecap="round"
											stroke-linejoin="round"
											class="text-teal-300"
											><path d="M8 3H5a2 2 0 0 0-2 2v3" /><path d="M18 3h3a2 2 0 0 1 2 2v3" /><path
												d="M3 16v3a2 2 0 0 0 2 2h3"
											/><path d="M16 21h3a2 2 0 0 0 2-2v-3" /></svg
										>
										<span>Size {unit.size}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			{/each}
		</div>

		<!-- Mobile Navigation (Updated: Removed disabled state) -->
		<div class="mt-6 flex justify-center space-x-3 lg:hidden">
			<button
				on:click={handlePrev}
				class="rounded-full bg-gray-800 p-2 text-white shadow-lg transition-colors duration-300 hover:bg-teal-600"
				aria-label="Previous Unit"
			>
				<svg
					xmlns="http://www.w3.org/2000/svg"
					width="20"
					height="20"
					viewBox="0 0 24 24"
					fill="none"
					stroke="currentColor"
					stroke-width="2"
					stroke-linecap="round"
					stroke-linejoin="round"
					class="lucide lucide-chevron-left"><path d="m15 18-6-6 6-6" /></svg
				>
			</button>

			<!-- Simple indicators kept for mobile reference -->
			{#each apartmentUnits as _, index}
				<div
					class={`h-2 w-2 rounded-full transition-all duration-300 ${
						index === activeIndex ? 'w-6 bg-teal-500' : 'bg-gray-700'
					}`}
				></div>
			{/each}

			<button
				on:click={handleNext}
				class="rounded-full bg-gray-800 p-2 text-white shadow-lg transition-colors duration-300 hover:bg-teal-600"
				aria-label="Next Unit"
			>
				<svg
					xmlns="http://www.w3.org/2000/svg"
					width="20"
					height="20"
					viewBox="0 0 24 24"
					fill="none"
					stroke="currentColor"
					stroke-width="2"
					stroke-linecap="round"
					stroke-linejoin="round"
					class="lucide lucide-chevron-right"><path d="m9 18 6-6-6-6" /></svg
				>
			</button>
		</div>
	</div>
</section>
