<!--<a href="https://wa.me/01793024085" target="_blank" class="fixed-cart-bottom">-->
<!--    <span>-->
<!--        <i class="fa-brands fa-whatsapp"></i>-->
<!--    </span>-->
<!--</a>-->
<style>
   @media only screen and (min-width: 320px) and (max-width: 575px) {
     .second_div{
     	border-right: none !important;
       	border-bottom : 1px solid;
       	padding-bottom: 10px;
     }
     
     .first_div{
     	    border-right: none !important;
    border-bottom: 1px solid;
    padding-bottom: 15px;
    padding-top: 18px !important;
     }
     
     .third_div{
     	    border-right: none !important;
    border-bottom: 1px solid;
    padding-bottom: 20px;
     }
     
  }
  
    .fixed-cart-bottom {
        /*position: fixed;*/
        /*bottom: 5rem;*/
        /*right: 20px;*/
        /*background: white;*/
        /*border-radius: 50px;*/
        /*height: 50px;*/
        /*width: 50px;*/
        /*cursor: pointer;*/
        /*box-shadow: 2px 2px 8px gray;*/
        /*text-align: center;*/
        /*display: flex;*/
        /*align-items: center;*/
        /*justify-content: center;*/
        /*transition: 0.5s;*/
        /*z-index: 9999;*/
        /*font-size: 25px;*/
    }
    
    .fixed-cart-bottom2 {
        /*position: fixed;*/
        /*bottom: 5rem;*/
        /*right: 20px;*/
        background: white;
        border-radius: 50px;
        height: 50px;
        width: 50px;
        cursor: pointer;
        box-shadow: 2px 2px 8px gray;
        text-align: center;
        display: flex;
        align-items: center;
        justify-content: center;
        transition: 0.5s;
        z-index: 9999;
        font-size: 25px;
    }
    .first_div {
            padding-left: 30px;
    padding-top: 15px;
    }
    .second_div {
            padding-left: 30px;
    padding-top: 15px;
    }
    .third_div {
            padding-left: 30px;
    padding-top: 15px;
    }
    .four_div {
            padding-left: 30px;
    padding-top: 15px;
    }
    .col-md-7 {
        padding-left: 0px;
    }
  .footer i {
    font-size: 20px;
    padding-top: 3px;
    padding-right: 30px;
}
</style>

<footer class="">
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-lg-4 col-md-6 footer second_div" style="margin-right: 0px;border-right: 1px solid white;border-right: 1px solid white;">
                    
                    <h5 class="semi"><i class="fa fa-home" aria-hidden="true"></i>HEAD OFFICE</h5>
                    @php $footer = DB::table('footers')->first(); @endphp
                    
                    <div class="row">
                        <div class="col-md-4 col-5">
                            <h6 style="display: flex;font-size: 13px;"><i class="fa fa-map-marker"></i> Address: </h6>
                        </div>
                        <div class="col-md-7 col-7">
                            <h6 style="font-size: 13px;">{{$footer->address}}</h6>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-4 col-5">
                            <h6 style="display: flex;font-size: 13px;"><i class="fa fa-phone" aria-hidden="true"></i> Hotline: </h6>
                        </div>
                        <div class="col-md-7 col-7">
                            <h6 style="font-size: 13px;">{{$footer->phone}}</h6>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-4 col-5">
                            <h6 style="display: flex;font-size: 13px;"><i class="fa fa-envelope"></i> E-mail: </h6>
                        </div>
                        <div class="col-md-7 col-7">
                            <h6 style="font-size: 13px;">{{$footer->email}}</h6>
                        </div>
                    </div>
                    
                    <!--<p class="font-16 ">-->
                    <!--    <p style="display: flex;">-->
                              
                        
                    <!--    </p>-->
                        
                        
                    <!--    <h6><i class="fa fa-phone" aria-hidden="true"></i>Hotline:</b> {{$footer->phone}}  </h6>-->
                    <!--    <h6><i class="fa fa-envelope"></i>E-mail:</b> {{$footer->email}}  </h6>-->
                    <!--</p>-->
                    
                </div>
                @php $footers = DB::table('footers')->first(); @endphp
                <div class="col-lg-3 col-md-6 footer first_div" style="margin-left: 0px;margin-right: 0px;border-right: 1px solid white;">
                    <div class="d-flex footer-content" style="margin-bottom: 10px;">
                    <i class="fa-solid fa-clock-rotate-left" style="padding-top: 0px;"></i>
                    <h6 class="mb-0" style="margin-bottom: 0px !important;"><span>OFFICE TIME SCHEDULE</span></h6>
                    </div>
                    <p style="margin-bottom: 0.2rem;">Open: {{ $footers->open }}</p>
                    <p>Holiday: {{ $footers->holiday }}</p>
                    <h5 class="semi">FOLLOW US</h5>
                    <div class="d-flex social-link ps-4 flex-wrap">
                        @php $sLinks =DB::table('footer_social_links')->get(); @endphp
                        @foreach($sLinks as $link)
                        <a href="{{$link->link}}"><i class="fa-brands {{$link->icon}}"></i></a>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-3 footer footer-left third_div" style="border-right: 1px solid white;">
                    <h5 class="semi">PAYMENT PARTNER</h5>
                    <div class="pb-4">
                        <div class="payment-partner d-flex flex-wrap pb-2">
                            @php $paymentv = DB::table('banner_images')->where('id', 16)->first(); @endphp
                            @php $deliveryp = DB::table('banner_images')->where('id', 17)->first(); @endphp
                            <a class="pe-2" href="#">
                                <img src="{{asset($paymentv->image)}}" alt="" style="width:100%; height:auto">
                            </a>
                            
                        </div>
                       
                    </div>
                    <h5 class="semi">DELIVERY PARTNER</h5>
                    <div class="partner d-flex flex-wrap">
                        <a class="pe-3" href="#">
                            <img src="{{asset($deliveryp->image)}}" alt="" style="width:100%; height:auto">
                        </a>
                    </div>
                </div>
                 <div class="col-lg-2 footer footer-left four_div">
                    <h5 class="semi">LIVE CHAT</h5>
                    <div class="pb-4">
                       
                        <div class="payment-partner d-flex flex-wrap pb-2">
                          @php $sLink =DB::table('footer_social_links')->where('id', 5)->first(); @endphp
                            <a href="{{$sLink->link}}" target="_blank" class="fixed-cart-bottom">
                                <img src="{{ asset('frontend/images/download.png') }}" style="height: 50px;">
                                <!--<span>-->
                                <!--    <i class="fa-brands fa-whatsapp"></i>-->
                                <!--</span>-->
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div style="background: #0d1b48;text-align: center;font-size: 13px;">
                <div class="row end-footer footer-end last-footer-content-align">
                    <div class="container">
                        <p class="text-left __text-16px" style="margin-bottom: 0px;padding: 4px 0px;color: #ffffff;">{{$footer->copyright}} <a style="color: #ffffff;" href="https://softitglobal.com/">SoftitGlobal.com</a> </p>
                </div>
            </div>
            <!-- Grid row -->
        </div>

 @include('frontend.partials.js')
 
 
 {!!\App\Models\SitePixel::value('pixel_id')!!}
</body>
</html>
