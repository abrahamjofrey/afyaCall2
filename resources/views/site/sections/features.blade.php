<!-- ======= Features Section ======= -->
<section id="features" class="features">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>AfyaCall Features</h2>
            <p>{{setting('site.features_text')}}</p>
        </div>
        <?php
        $features=\Illuminate\Support\Facades\DB::table('features')->select('features.*')->get();
        //        dd($services[0]->service_image);
        ?>

        <div class="row" data-aos="fade-up" data-aos-delay="300">

            @foreach($features as $feature)
            <div class="col-lg-3 col-md-4 mt-4">
                <div class="icon-box">
                    <i class="ri-base-station-line" style="color: #ff5828;"></i>
                    <h3><a href="" title="{{$feature->description}}">{{$feature->name}}</a></h3>
                </div>
            </div>
            @endforeach



        </div>

    </div>
</section><!-- End Features Section -->
