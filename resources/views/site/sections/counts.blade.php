<!-- ======= Counts Section ======= -->
<section id="counts" class="counts">
    <div class="container">
        <center>
            <h3 data-aos="fade-up" data-aos-delay="100">Afya Call Statistics</h3>

            <div class="row">
                <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-xl-start" data-aos="fade-right" data-aos-delay="150">
                    <img src="{{"storage/".setting('site.right_statistics_image')}}" alt="" class="img-fluid">
                </div>

                <div class="col-xl-7 d-flex align-items-stretch pt-4 pt-xl-0" data-aos="fade-left" data-aos-delay="300">
                    <div class="content d-flex flex-column justify-content-center">
                        <?php
                        $statistics=\Illuminate\Support\Facades\DB::table('statistics')->select('statistics.*')->get();
                        //        dd($services[0]->service_image);
                        ?>
                        <div class="row">
                            @foreach($statistics as $data)
                                <div class="col-md-6 d-md-flex align-items-md-stretch">
                                    <div class="count-box">
                                        <i class="icofont-document-folder"></i>

                                        <span data-toggle="counter-up">{{(($data->occurred_value)/($data->high_value))*100 }} </span>


                                        <p><strong> {{$data->name}} </strong></p>
                                    </div>
                                </div>
                            @endforeach




                        </div>
                    </div><!-- End .content-->
                </div>
            </div>
        </center>


    </div>
</section><!-- End Counts Section -->
