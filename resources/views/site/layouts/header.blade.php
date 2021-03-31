
<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

        <div class="logo mr-auto">
            <div class="row">
{{--                <h1 class="text-light"><a href="index.html"><span>AfyaCall</span></a></h1>--}}

                <a href=""><img src="{{asset('afyaCall.png')}}" alt="" class="img-fluid"></a>
            </div>

        </div>

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li class="active"><a href="http://afyacall.co.tz/">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#portfolio">Portfolio</a></li>
                <li><a href="#team">Team</a></li>
                <li><a href="#pricing">Pricing</a></li>
                <li><a href="#contact">Contact</a></li>

                <li class="get-started" ><a id="myModal" href="" data-toggle="modal" data-target=".bd-example-modal-lg" style="background-color: #054060">Subscribe</a></li>
            </ul>
        </nav><!-- .nav-menu -->

    </div>
</header><!-- End Header -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Subscribe To Afya Call Services now </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Full Name</label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Phone Number</label>
                        <input type="number" class="form-control" name="phone_number" i>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" style="background-color: #054060">Subscribe</button>
            </div>
        </div>
    </div>
</div>
<script>
    $('#myModal').modal(options)
</script>

