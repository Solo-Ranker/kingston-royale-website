<script lang="ts">
	import { onMount } from 'svelte';
	import { setLocale, getLocale } from '$lib/paraglide/runtime';
	import * as m from '$lib/paraglide/messages.js';

	let menuOpen = false;
	let dropdownOpen = false;

	const toggleMenu = () => {
		menuOpen = !menuOpen;
		document.documentElement.style.overflow = menuOpen ? 'hidden' : '';
	};

	const closeMenu = () => {
		menuOpen = false;
		document.documentElement.style.overflow = '';
	};

	const handleKey = (e: KeyboardEvent) => {
		if (e.key === 'Escape') {
			closeMenu();
			dropdownOpen = false;
		}
	};

	const toggleDropdown = () => {
		dropdownOpen = !dropdownOpen;
	};

	const selectLocale = (code: 'en' | 'km' | 'zh' | 'jp' | 'ru') => {
		setLocale(code);
		dropdownOpen = false;
		// You could add logic to persist locale in localStorage or route query
	};

	onMount(() => {
		document.addEventListener('keydown', handleKey);
	});
</script>

<header class="transparent header-dark header-float">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="header-inner">
					<div class="de-flex">
						<div class="de-flex-col">
							<!-- logo begin -->
							<div id="logo">
								<a href="/">
									<img
										class="logo-main w-90 h-50 object-cover"
										src="src/lib/assets/logo.png"
										alt="Kingston Logo"
									/>
									<img
										class="logo-scroll"
										src="/kingston/logo/transparent-logo.png"
										alt="Kingston Logo"
									/>
									<img
										class="logo-mobile"
										src="/kingston/logo/transparent-logo.png"
										alt="Kingston Logo"
									/>
								</a>
							</div>
							<!-- logo close -->
						</div>

						<div class="de-flex-col">
							<div class="de-flex-col header-col-mid">
								<ul id="mainmenu">
									<!-- <li>
										<a class="menu-item" href="#">Home</a>
										<ul class="mega">
											<li>
												<div class="container">
													<div class="sb-menu p-4">
														<div class="row g-3">
															<div class="col-lg-2 col-md-4 col-sm-6 text-center">
																<div class="hover soft-shadow relative overflow-hidden text-center">
																	<a class="p-0" href="index.html">
																		<img
																			src="images/demo/homepage-1.webp"
																			class="hover-scale-1-1 relative w-100"
																			alt=""
																		/>
																	</a>
																</div>
																<h6 class="mt-3">Single Property 1</h6>
															</div>

															<div class="col-lg-2 col-md-4 col-sm-6 text-center">
																<div class="hover soft-shadow relative overflow-hidden text-center">
																	<a class="p-0" href="01_single-property-2.html">
																		<img
																			src="images/demo/homepage-2.webp"
																			class="hover-scale-1-1 relative w-100"
																			alt=""
																		/>
																	</a>
																</div>
																<h6 class="mt-3">Single Property 2</h6>
															</div>

															<div class="col-lg-2 col-md-4 col-sm-6 text-center">
																<div class="hover soft-shadow relative overflow-hidden text-center">
																	<a class="p-0" href="01_single-property-3.html">
																		<img
																			src="images/demo/homepage-6.webp"
																			class="hover-scale-1-1 relative w-100"
																			alt=""
																		/>
																	</a>
																</div>
																<h6 class="mt-3">Single Property 3</h6>
															</div>

															<div class="col-lg-2 col-md-4 col-sm-6 text-center">
																<div class="hover soft-shadow relative overflow-hidden text-center">
																	<a class="p-0" href="02_apartment-homepage-1.html">
																		<img
																			src="images/demo/homepage-3.webp"
																			class="hover-scale-1-1 relative w-100"
																			alt=""
																		/>
																	</a>
																</div>
																<h6 class="mt-3">Apartment 1</h6>
															</div>

															<div class="col-lg-2 col-md-4 col-sm-6 text-center">
																<div class="hover soft-shadow relative overflow-hidden text-center">
																	<a class="p-0" href="02_apartment-homepage-2.html">
																		<img
																			src="images/demo/homepage-4.webp"
																			class="hover-scale-1-1 relative w-100"
																			alt=""
																		/>
																	</a>
																</div>
																<h6 class="mt-3">Apartment 2</h6>
															</div>

															<div class="col-lg-2 col-md-4 col-sm-6 text-center">
																<div class="hover soft-shadow relative overflow-hidden text-center">
																	<a class="p-0" href="03_apartment-rent-onepage.html">
																		<img
																			src="images/demo/homepage-5.webp"
																			class="hover-scale-1-1 relative w-100"
																			alt=""
																		/>
																	</a>
																</div>
																<h6 class="mt-3">Single Apartment</h6>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</li> -->
									<li><a class="menu-item" href="#section-overview">OUR PROJECTS</a></li>
									<li><a class="menu-item" href="#section-rooms">BUY</a></li>
									<li><a class="menu-item" href="#section-gallery">RENT</a></li>
									<li><a class="menu-item" href="#section-floorplan">ABOUT US</a></li>
									<li><a class="menu-item" href="#section-contact">CONTACT US</a></li>
								</ul>
							</div>
						</div>

						<div class="de-flex-col">
							<!-- <a class="btn-main fx-slide w-100" href="#section-contact"
								><span>Schedule a Visit</span></a
							>

							<div class="menu_side_area">
								<span id="menu-btn"></span>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
