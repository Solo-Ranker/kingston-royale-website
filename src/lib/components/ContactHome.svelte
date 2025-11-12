<section id="section-contact" class="text-dark">
	<div class="container">
		<div class="row g-4 justify-content-center">
			<div class="col-lg-6 text-center">
				<div class="subtitle s2 mb-3" data-wow-delay=".0s">Contact Us</div>
				<h2 class="" data-wow-delay=".2s">Schedule a Visit</h2>
			</div>
		</div>

		<div class="row g-4 justify-content-center">
			<div class="col-md-6">
				<form name="bookingForm" id="booking_form" method="post" action="booking.php">
					<div class="row g-4">
						<div class="col-md-6">
							<input
								type="text"
								name="name"
								id="name"
								class="form-control"
								placeholder="Your Name"
								required
							/>
						</div>

						<div class="col-md-6">
							<input
								type="text"
								name="email"
								id="email"
								class="form-control"
								placeholder="Your Email"
								required
							/>
						</div>

						<div class="col-md-6">
							<div id="date" class="input-group date relative" data-date-format="mm-dd-yyyy">
								<i class="id-color icofont-calendar absolute end-0 top-0 pe-3 pt-3"></i>
								<input class="form-control" name="date" type="text" />
								<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
							</div>
						</div>

						<div class="col-md-6">
							<div class="relative">
								<select name="time" id="time" class="form-control">
									<option value="10:00">10:00</option>
									<option value="11:00">11:00</option>
									<option value="12:00">12:00</option>
									<option value="13:00">13:00</option>
									<option value="14:00">14:00</option>
									<option value="15:00">15:00</option>
									<option value="16:00">16:00</option>
									<option value="17:00">17:00</option>
									<option value="18:00">18:00</option>
									<option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
								</select>
								<i class="id-color icofont-simple-down absolute end-0 top-0 pe-3 pt-3"></i>
							</div>
						</div>

						<div class="col-md-12">
							<textarea
								name="message"
								id="message"
								class="form-control h-150px"
								placeholder="Submit Request"
								required
							></textarea>
						</div>

						<div class="col-md-12">
							<div class="text-center">
								<div id="submit">
									<input type="submit" id="send_message" value="Send Message" class="btn-main" />
								</div>
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
