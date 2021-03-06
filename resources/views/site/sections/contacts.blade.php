<!-- ======= Contact Section ======= -->
<section id="contact" class="contact">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Contact Us</h2>
        </div>

        <div class="row">

            <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
                <div class="contact-about">
                    <h3>AfyaCall</h3>
                    <p>{{setting('site.afyacall_short_description')}} </p>
                    <div class="social-links">
                        <a href="{{setting('site.afyacall_t_link')}}" class="twitter"><i class="icofont-twitter"></i></a>
                        <a href="{{setting('site.afyacall_fb_link')}}" class="facebook"><i class="icofont-facebook"></i></a>
                        <a href="{{setting('site.afyacall_ig_link')}}" class="instagram"><i class="icofont-instagram"></i></a>
                        <a href="{{setting('site.afyacall_ln_link')}}" class="linkedin"><i class="icofont-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
                <div class="info">
                    <div>
                        <i class="ri-map-pin-line"></i>
                        <p>{{setting('site.afyacall_phone')}}</p>
                    </div>

                    <div>
                        <i class="ri-mail-send-line"></i>
                        <p>{{setting('site.afyacall_email')}}</p>
                    </div>

                    <div>
                        <i class="ri-phone-line"></i>
                        <p>{{setting('site.afyacall_phone')}}</p>
                    </div>

                </div>
            </div>

            <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">
                <form action="{{route('sendContactUsForm.store')}}" method="post" role="form" >
                    @csrf
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                        <div class="validate"></div>
                    </div>
                    <div class="form-group">
                        <input type="number" name="phone_number" class="form-control" id="phone_number" placeholder="Enter Phone Number" data-rule="minlen:4" data-msg="Please enter at least 10 chars" />
                        <div class="validate"></div>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="from_email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                        <div class="validate"></div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                        <div class="validate"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                        <div class="validate"></div>
                    </div>
                    <div class="mb-3">
                        <div class="error-message"></div>
                    </div>
                    <div class="text-center"><button type="submit">Send Message</button></div>
                </form>
            </div>

        </div>

    </div>
</section><!-- End Contact Section -->
