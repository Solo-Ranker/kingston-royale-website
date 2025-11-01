<script lang="ts">
	import '../app.css';
	
	// template css
	import '../css/bootstrap.min.css';
	import '../css/plugins.css';
	import '../css/swiper.css';
	import '../css/style.css';
	import '../css/coloring.css';

	// color schema
	import '../css/colors/scheme-01.css';

	import favicon from '$lib/assets/favicon.svg';
	import Navbar from '$lib/components/Navbar.svelte';
	import Footer from '$lib/components/Footer.svelte';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<Navbar />
{@render children?.()}
<Footer />