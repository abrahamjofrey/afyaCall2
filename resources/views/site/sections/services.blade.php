<!-- ======= Services Section ======= -->
<section id="services" class="services">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Services</h2>
            <p>{{setting('site.service_text_title')}}</p>
        </div>
        <?php
        $services=\Illuminate\Support\Facades\DB::table('services')->select('services.*')->get();
        //        dd($services[0]->service_image);
        ?>

        <div class="row">
            @foreach($services as $service)

                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                        <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                            <img src="{{'storage/'.$service->image}}">
                            <h4 class="title"><a href="">{{$service->service_name}}</a></h4>
                            <p class="description">{{$service->service_description}}</p>
                        </div>
                    </div>


            @endforeach


        </div>

    </div>
</section><!-- End Services Section -->
