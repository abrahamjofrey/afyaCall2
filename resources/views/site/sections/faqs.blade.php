<!-- ======= F.A.Q Section ======= -->
<section id="faq" class="faq">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Frequently Asked Questions</h2>
        </div>
        <?php
        $faqs=\Illuminate\Support\Facades\DB::table('faqs')->select('faqs.*')->get();
        //        dd($services[0]->service_image);
        ?>




            @foreach($faqs as $faq)

        <div class="row faq-item d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="col-lg-5">
                <i class="ri-question-line"></i>
                <h4>{{$faq->qn}}</h4>
            </div>
            <div class="col-lg-7">
                <p>
                    {{$faq->ans}}
                </p>
            </div>
        </div><!-- End F.A.Q Item-->
            @endforeach





</section><!-- End F.A.Q Section -->
