<section id="section-contact" class="text-dark">
	<div class="container">
		<div class="row g-4 justify-content-center">
			<div class="col-lg-12 text-center">
				<h2 class="title-with-lines">KINGSTON ESTATE</h2>
			</div>
		</div>

		<div class="row g-4 justify-content-center">
			<div class="col-md-8">
				<form name="bookingForm" id="booking_form" method="post" action="booking.php">
					<div class="row g-4">
						<!-- First Name and Last Name -->
						<div class="col-md-6">
							<div class="form-group">
								<label for="first_name" class="form-label">First Name</label>
								<input
									type="text"
									name="first_name"
									id="first_name"
									class="form-control-minimal"
									required
								/>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="last_name" class="form-label">Last Name</label>
								<input
									type="text"
									name="last_name"
									id="last_name"
									class="form-control-minimal"
									required
								/>
							</div>
						</div>

						<!-- Email -->
						<div class="col-md-12">
							<div class="form-group">
								<label for="email" class="form-label">Email</label>
								<input type="email" name="email" id="email" class="form-control-minimal" required />
							</div>
						</div>

						<!-- Mobile Number with Country Code -->
						<div class="col-md-12">
							<div class="form-group">
								<label for="mobile" class="form-label">Mobile Number</label>
								<div class="mobile-input-group">
									<div class="country-code-selector">
										<input type="text" value="+855" class="country-code" readonly />
										<i class="dropdown-icon">▼</i>
									</div>
									<input
										type="tel"
										name="mobile"
										id="mobile"
										class="form-control-minimal mobile-number"
										required
									/>
								</div>
							</div>
						</div>

						<!-- Checkboxes -->
						<div class="col-md-12">
							<div class="checkboxes-row">
								<label class="custom-checkbox">
									<input type="checkbox" name="communications" />
									<span class="checkbox-box"></span>
									<span class="checkbox-label"
										>I would like to receive communications from OMNIYAT.</span
									>
								</label>

								<label class="custom-checkbox">
									<input type="checkbox" name="privacy_policy" required />
									<span class="checkbox-box"></span>
									<span class="checkbox-label"
										>I have read and agree to the <a href="#" class="privacy-link">Privacy Policy</a
										>.</span
									>
								</label>
							</div>
						</div>

						<!-- Contact Preference -->
						<div class="col-md-12">
							<div class="contact-preference">
								<p class="preference-title fs-16">Please select a preferred mode of contact:</p>
								<div class="radio-group">
									<label class="custom-radio">
										<input type="radio" name="contact_mode" value="phone" checked />
										<span class="radio-circle"></span>
										<span class="radio-label">Request a phone call back</span>
									</label>
									<label class="custom-radio">
										<input type="radio" name="contact_mode" value="email" />
										<span class="radio-circle"></span>
										<span class="radio-label">Request email communications</span>
									</label>
								</div>
							</div>
						</div>

						<!-- Submit Button -->
						<div class="col-md-12">
							<div class="mt-4 text-center">
								<button type="submit" class="btn-submit">Submit</button>
							</div>
						</div>
					</div>
				</form>
				<div id="success_message_col" class="success">
					Your message has been sent successfully. Refresh this page if you want to send more
					messages.
				</div>
				<div id="error_message" class="error">Sorry there was an error sending your form.</div>
			</div>
		</div>
	</div>
</section>
