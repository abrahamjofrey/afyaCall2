
<!-- ======= Pricing Section ======= -->
<section id="pricing" class="pricing">
    <div class="container">

        <div class="section-title">
            <h2>Packages</h2>
            <p>{{setting('site.package_text')}}</p>
        </div>
        <?php
        $prices=\Illuminate\Support\Facades\DB::table('prices')->select('prices.*')->get();
        //        dd($services[0]->service_image);
        ?>

        <div class="row">
@foreach($prices as $price)
            <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
                <div class="box" data-aos="zoom-in-left" data-aos-delay="200">
                    <h3>{{$price->package_name}}</h3>
                    <h4><sup>Tsh</sup>{{$price->rate}}<span> / {{$price->rate_unit}}</span></h4>
                    <ul>
                        <li>{{$price->description}}</li>

                    </ul>

                </div>
            </div>
            @endforeach

        </div>

    </div>
</section><!-- End Pricing Section -->
