<!-- ======= Clients Section ======= -->
<section id="clients" class="clients clients">
    <div class="container">
        <h2>Our Supportive Clients</h2>
        <?php
        $supportive_clients=\Illuminate\Support\Facades\DB::table('supportive_clients')->select('supportive_clients.*')->get();
        //        dd($services[0]->service_image);
        ?>
        <div class="row">
            @foreach($supportive_clients as $client)

                <div class="col-lg-2 col-md-4 col-6">
                    <img src="{{"storage/".$client->logo}}" class="img-fluid" alt="" data-aos="zoom-in">
                </div>

            @endforeach

        </div>

    </div>
</section><!-- End Clients Section -->
