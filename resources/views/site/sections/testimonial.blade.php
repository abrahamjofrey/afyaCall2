<!-- ======= Testimonials Section ======= -->
<section id="testimonials" class="testimonials section-bg">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Testimonials</h2>
            <p>{{setting('site.testimonial_text')}}</p>
        </div>
        <?php
        $testimonials=\Illuminate\Support\Facades\DB::table('testimonials')->select('testimonials.*')->get();
        //        dd($services[0]->service_image);
        ?>
        <div class="owl-carousel testimonials-carousel" data-aos="fade-up" data-aos-delay="200">

            @foreach($testimonials as $testimonial)
            <div class="testimonial-wrap">
                <div class="testimonial-item">
                    <img src="{{'storage/'.$testimonial->image}}" class="testimonial-img" alt="">
                    <h3>{{$testimonial->full_name}}</h3>
                    <h4>{{$testimonial->position}}</h4>
                    <p>
                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                        {{$testimonial->testimonial}}
                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                    </p>
                </div>
            </div>
            @endforeach









        </div>

    </div>
</section><!-- End Testimonials Section -->
