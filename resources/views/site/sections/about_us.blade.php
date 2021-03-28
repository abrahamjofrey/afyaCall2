<!-- ======= About Us Section ======= -->
<section id="about" class="about">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>About Us</h2>
        </div>

        <div class="row content">
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
                <p>
                    {{setting('site.about_intro_lists')}}
                </p>
                <?php
                $front_lists=\Illuminate\Support\Facades\DB::table('front_lists')->select('front_lists.*')->get();
                //        dd($services[0]->service_image);
                ?>
                <ul>
                    @foreach($front_lists as $list)
                    <li><i class="ri-check-double-line"></i> {{$list->name}}</li>

                    @endforeach
                </ul>
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-up" data-aos-delay="300">
                <p>
                   {{setting('site.about_us_description')}}
                </p>
                <a href="#" class="btn-learn-more">Find out More...</a>
            </div>
        </div>

    </div>
</section><!-- End About Us Section -->
