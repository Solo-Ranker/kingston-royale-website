<script lang="ts">
	import { fadeUp } from '$lib/transitions/fade-up';
</script>

<section id="section-overview">
	<div class="container">
		<div class="row g-4 justify-content-between">
			<div class="spacer-double"></div>
			<div class="col-lg-5">
				<div class="ps-lg-3">
					<div transition:fadeUp={{ delay: 400, duration: 800 }} class="subtitle">
						Home Overview
					</div>
					<h2 transition:fadeUp={{ delay: 400, duration: 800 }}>
						Luxury living where comfort meets timeless style, effortlessly
					</h2>

					<p transition:fadeUp={{ delay: 400, duration: 800 }}>
						Eu eiusmod ut ut dolore nulla in incididunt nulla elit ea aute in adipisicing officia
						ullamco qui proident non est laboris commodo deserunt magna deserunt voluptate laborum
						irure cillum dolor.
					</p>

					<a class="btn-main fx-slide" href="#"><span>Schedule a Visit</span></a>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="row g-4">
					<div class="col-md-6">
						<div class="rounded-1 h-100">
							<img src="/kingston/icons-color/1.png" class="w-70px mb-4" alt="" />
							<div class="relative" transition:fadeUp={{ delay: 400, duration: 800 }}>
								<h4>Smart Home System</h4>
								<p class="mb-0">
									Velit irure occaecat do consectetur dolore officia magna ut anim ut.
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="rounded-1 h-100">
							<img src="/kingston/icons-color/2.png" class="w-70px mb-4" alt="" />
							<div class="relative" transition:fadeUp={{ delay: 400, duration: 800 }}>
								<h4>Solar Energy Panels</h4>
								<p class="mb-0">
									Velit irure occaecat do consectetur dolore officia magna ut anim ut.
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="rounded-1 h-100">
							<img src="/kingston/icons-color/3.png" class="w-70px mb-4" alt="" />
							<div class="relative" transition:fadeUp={{ delay: 400, duration: 800 }}>
								<h4>Central Air Conditioning</h4>
								<p class="mb-0">
									Velit irure occaecat do consectetur dolore officia magna ut anim ut.
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="rounded-1 h-100">
							<img src="/kingston/icons-color/4.png" class="w-70px mb-4" alt="" />
							<div class="relative" transition:fadeUp={{ delay: 400, duration: 800 }}>
								<h4>Home Security System</h4>
								<p class="mb-0">
									Velit irure occaecat do consectetur dolore officia magna ut anim ut.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
