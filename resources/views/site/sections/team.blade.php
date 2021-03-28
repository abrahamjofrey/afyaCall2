<!-- ======= Team Section ======= -->
<section id="team" class="team section-bg">
    <div class="container">

        <div class="section-title" data-aos="fade-up">
            <h2>Team</h2>
            <p>{{setting('site.team_text')}}</p>
        </div>
        <?php
        $teams=\Illuminate\Support\Facades\DB::table('teams')->select('teams.*')->get();
        //        dd($services[0]->service_image);
        ?>
        <div class="row">

@foreach($teams as $team)

            <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                <div class="member" data-aos="fade-up" data-aos-delay="200">
                    <div class="member-img">
                        <img src="{{'storage/'.$team->image}}" class="img-fluid" alt="">
                        <div class="social">
                            <a href="{{$team->t_link}}"><i class="icofont-twitter"></i></a>
                            <a href="{{$team->fb_link}}"><i class="icofont-facebook"></i></a>
                            <a href="{{$team->ig_link}}"><i class="icofont-instagram"></i></a>
                            <a href="{{$team->ln_link}}"><i class="icofont-linkedin"></i></a>
                        </div>
                    </div>
                    <div class="member-info">
                        <h4>{{$team->full_name}}</h4>
                        <span>{{$team->position}}</span>
                    </div>
                </div>
            </div>
            @endforeach





        </div>

    </div>
</section><!-- End Team Section -->
