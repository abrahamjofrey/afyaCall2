<!-- ======= Portfolio Section ======= -->
<section id="portfolio" class="portfolio">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Gallery</h2>
            <p>{{setting('site.gallery_text')}}</p>
        </div>
        <?php
        $galleries=\Illuminate\Support\Facades\DB::table('galleries')->select('galleries.*')->get();
        //        dd($services[0]->service_image);
        ?>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="400">


            @foreach($galleries as $pic)

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <img src="{{'storage/'.$pic->image}}" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>{{$pic->title}}</h4>
                        <p>{{$pic->description}}</p>
                        <div class="portfolio-links">
                            <a href="{{'storage/'.$pic->image}}" data-gall="portfolioGallery" class="venobox" title="{{'storage/'.$pic->title}}"><i class="bx bx-plus"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach





        </div>

    </div>
</section><!-- End Portfolio Section -->
