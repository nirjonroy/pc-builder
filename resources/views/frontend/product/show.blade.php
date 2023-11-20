@extends('frontend.app')
@section('title', 'Shop Product List')
@push('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
<link rel="stylesheet" href="{{asset('frontend/assets/css/singleproduct.css')}}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
<style>
   .slick-arrow {
   display: none !important;
   }
   p img{
   width: 100%
   }
   #myTabs li a {
   padding: 8px 9px;
   }
   #myTabs li {
   padding: 2px;
   }
</style>
<style>
   /* Styles for the slider container */
   .slider-container {
   width: 100%;
   overflow: hidden;
   position: relative;
   margin-left: 6%;
   
   }
   /* Styles for the big image */
   .slider-image {
    width: 88%;
    height: auto;
    display: block;
   }
   /* Styles for the mini image thumbnails */
   .thumbnail-container {
   /*display: flex;*/
   justify-content: center;
   /*margin-top : 3%;*/
   }
   .thumbnail {
   width: 50px;
   height: 50px;
   margin: 5px;
   cursor: pointer;
   }
   
   iframe{
       width: 100%;
   }
   
   @media only screen and (min-width: 320px) and (max-width: 375px) {
       iframe {
           width: 100% !important;
           height: 220px !important;
       }
   }
   
   @media only screen and (min-width: 376px) and (max-width: 425px) {
       iframe {
           width: 100% !important;
           height: 250px !important;
       }
   }
   
   @media only screen and (min-width: 426px) and (max-width: 500px) {
       iframe {
           width: 100% !important;
           height: 260px !important;
       }
   }
   
   .testslide-image {
       margin-left: 10px;
       margin-top: 10px;
   }
   
   .img-thumbnail:hover {
       box-shadow: 0px 0px 10px -4px green !important;
   }
   .img-thumbnail {
       box-shadow: 0px 0px 10px -4px gray !important;
   }
   .testslide-image img {
       box-shadow: 3px 4px 13px -3px gray !important;
   }
   .testslide-image img:hover {
       box-shadow: 0px 2px 13px -3px green !important;
   }
   
   .accordion-body .btn-info {
       background: #1F8C40 !important;
   } 
   
</style>
@endpush
@section('content')
<div class="main-wrapper">
   <div class="overlay-sidebar"></div>
   <div class="product-page bg-light col-lg-12 col-12 p-0 m-auto mt-2 mb-2">
      <div class="row p-lg-3" style="border-bottom: 3px solid #cce0e5">
         <div class="col-lg-5 col-md-6 col-12">
            <div class="slider-container">
               <!-- Big Image -->
              <div class="">
                <div class="testslide-image"> 
                 <a href="{{asset('uploads/custom-images/'.$product->thumb_image)}}" class="popup-link">
                  <img class="slider-image img-thumbnail" id="big-image" src="{{asset('uploads/custom-images/'.$product->thumb_image)}}" alt="Image 1">
                 </a>
               </div>
			   </div>
              @foreach($product->gallery as $key => $img_gals)
                            <div class="">
                                <a href="{{ asset($img_gals->image) }}" class="popup-link">
                                    <img src="{{ asset('uploads/custom-images/'.$img_gals->image) }}" alt="" class="img-fluid" style="display:none">
                               </a>
                            </div>
                            @endforeach
              
             
               @foreach($product->colorVariations as $v)
              	              
              	<div class="">
                                <a href="{{ asset($v->var_images) }}" class="popup-link">
                                    <img src="{{ asset($v->var_images) }}" alt="" class="img-fluid" style="display:none" />
                               </a>
                            </div>
                  @endforeach
               <!-- Mini Image Thumbnails -->
               <div class="thumbnail-container">
                  <br/>
                  <img class="thumbnail img-thumbnail" src="{{asset('uploads/custom-images/'.$product->thumb_image)}}" alt="" class="img-fluid" onclick="changeImage('{{asset('uploads/custom-images/'.$product->thumb_image)}}')">
                  @forelse($product->gallery as $key => $img_gals)
                  <img class="thumbnail img-thumbnail" src="{{ asset($img_gals->image) }}" onclick="changeImage('{{ asset($img_gals->image) }}')">
                 
                 	
                  @empty
                  @endforelse
               </div>
            </div>
         </div>
         <style>
            @media(min-width: 1360px){
            .popup-link img{
            /*max-height: 450px;*/
            /*margin: auto;*/
            }
            }
            .product-slider-nav .slick-slide img{
            max-height: 80px;
            margin:auto;
            }
            .regular ul {
            list-style: none;
            padding-left: 0px !important;
            }
            .regular ul li {
            padding-left: 0px !important;
            line-height: 1.5;
            }
            .regular ul li::before {
            content: "";
            display: inline-block;
            width: 15px;
            height: 15px;
            background-image: url({{ asset('frontend/images/star.png') }});
            background-size: cover;
            background-repeat: no-repeat;
            margin-right: 10px;
            }
         </style>
         <div class="col-lg-7 col-md-6 col-12">
            <div class=" p-2 ps-3">
               <div class="product-content">
                  <h4 class="product-title" style="color: #1E8A3F">{{ $product->name }}</h4>
                  <style>
                     .sizes{
                     display: flex;
                     }
                     .sizes .size {
                     padding: 5px;
                     margin: 5px;
                     border: 1px solid #FE9017;
                     width: auto;
                     text-align: center;
                     cursor: pointer;
                     min-width: 45px;
                     }
                     .sizes .size.active{
                     background: #1F8B40;
                     color: white;
                     font-weight: bold;
                     }
                     .colors{
                     display: flex;
                     }
                     .colors .color {
                     padding: 5px;
                     margin: 5px;
                     border: 1px solid #FE9017;
                     width: auto;
                     text-align: center;
                     cursor: pointer;
                     }
                     .colors .color.active{
                     background: #0d6efd;
                     color: white;
                     font-weight: bold;
                     }
                  </style>
                  <!--<div class="option-box">-->
                  <!--    <div class="left-box bg-muted">-->
                  <!--        <input value="1" type="radio" class="form-radio">-->
                  <!--    </div>-->
                  <!--    <div class="right-box">-->
                  <!--        <h5 class="semi">16,000 tk</h5>-->
                  <!--        <h5 class="medium font-16">90tk Discount On online order</h5>-->
                  <!--        <h5 class="medium font-16">Online / Cash Payment</h5>-->
                  <!--    </div>-->
                  <!--</div>-->
                  <style>
                     .inner_div i {
                     margin-right: 5%;
                     }
                     .call_text {
                     text-align: center;
                     }
                     .qty-btn-box {
                     padding-left: 0px !important;
                     }
                     .first {
                     background: #3167EB;
                     border-radius: 5px;
                     padding: 10px 43px;
                     margin-bottom: 10px;
                     margin-right: 5px;
                     }
                     .second {
                     background:#FE9017;
                     border-radius: 5px;
                     padding: 10px 43px;
                     margin-bottom: 10px;
                     margin-right: 5px;
                     }
                     @media only screen and (max-width: 575px) {
                     .social_btn {
                     display: inline-grid !important;
                     width: 100% !important;
                     }
                     .add_cart{
                     width: 100% !important;
                     margin-bottom: 3% !important;
                     }
                     .buy_now {
                     width: 100% !important;
                     }
                     }
                     
                    .toast-message {
                        color: red !important;
                    }
                    #toast-container {
                        background: #032BB9 !important;
                        padding: 0px;
                    }
                     
                  </style>
                 
                  @if(!empty($product->offer_price))
                  <div class="payment-options">
                     
                        <div class="left-box bg-muted" style="background:#0d6efd; height: 100%; width: 14%;">
                        </div>
                        <div class="right-box">
                          
                          <div class="product-price-variant">
                        <span class="price current-price-product" style="font-size: 25px; font-weight: bolder">
                          {{$product->offer_price}} tk
                        </span>
                        @if($product->offer_price > 0 && $product->price >0)
                        <del><span id="product-old-price" class="price old-price" style="font-size:14px;margin-left:10px">
                        </span>{{$product->price}}</del> tk ({{$product->price - $product->offer_price}} tk discount)
                        @endif
                     	</div>
                          
                          
                           
                           <!--<h5 class="medium font-16">{{$product->price - $product->offer_price}} tk Discount On online order</h5>-->
                           <!--<h5 class="medium font-16">Online / Cash Payment</h5>-->
                        </div>
                     
                  </div>
                  @else
                  <h5 class="semi" style="margin-left:1%; padding:0px">Price : {{$product->price}} tk</h5>
                  @endif
                  
                  @if($product->qty == '0')
                  <span style="color: red;font-weight: bold;">Out Of Stock</span>
                  @else
                  @endif
                  
                  <input type="hidden" name="product_id" value="{{ $product->id}}">
                  @if($product->offer_price != '0')
                  <input type="hidden" name="price" id="price_val" value="{{ $product->offer_price }}">
                  @else
                  <input type="hidden" name="price" id="price_val" value="{{ $product->price }}">
                  @endif
                  <div style="">
                     
                  </div>
                  <ul class="product-metas">
                     {!! $product->feature !!}
                  </ul>
               </div>
               
               @if($product->type == 'variable') <h6 id="select_size">Select Size : </h6> @else @endif
               @if($product->type == 'variable')
               
               @if(count($product->variations))
               
               <div class="sizes" id="sizes" style="margin-bottom: 5px;">
                  @foreach($product->variations as $v)
                  @if(!empty($v->size->title))
                  <div class="size" data-proid="{{ $v->product_id }}" data-varprice="{{ $v->sell_price }}" data-varsize="{{ $v->size->title }}" 
                     value="{{$v->id}}">
                     @if($v->size->title == 'free')
                     @else
                     {{ $v->size->title }}
                     <input type="hidden" id="size_value" name="variation_id">
                     <input type="hidden" id="size_variation_id" name="size_variation_id">
                     <input type="hidden" name="pro_price" id="pro_price">
                     @endif
                  </div>
                  @else
                  Size Not Available
                  @endif
                  @endforeach
               </div>
               @else
               <input type="text" id="size_value" name="variation_id" value="free">
               @endif
               
               @endif
               
              @if($product->prod_color == 'varcolor') <h6 id="select_color">Select Color : </h6> @else @endif
               @if($product->prod_color == 'varcolor')
               <div class="colors" id="colors">
                  @foreach($product->colorVariations as $v)
                  @if(!empty($v->color->code))
                  <div class="color" style="background: {{$v->color->code}}" data-proid="{{ $v->product_id }}" data-colorid="{{ $v->color_id }}" data-varcolor="{{ $v->color->name}}"
                     value="{{$v->id}}">
                     <input type="hidden" id="color_val" name="color_id" > 
                     <img src="{{ asset($v->var_images) }}" width="50px" height="50px" /> 
                     <input type="hidden" id="color_value" name="variationColor_id">
                  </div>
                  @else
                  Color Not Available
                  @endif
                  @endforeach
               </div>
                @else
                <input type="hidden" id="color_value" name="variationColor_id" value="default">
               @endif 
               
               
               <div class="row">
                  <div class="qty-btn-box mt-3 col-12">
                     <div class="qty-box mb-2" style="margin-left:20%">
                        <button class="btn btn-light border rounded-0 bold font-20 border-muted decrease-qty">-</button>
                        <input type="number" id="quantity" min="1" value="1" class="form-control font-20 rounded-0 shadow-none qty">
                        <button class="btn btn-light border rounded-0 bold font-20 border-muted increase-qty">+</button>
                     </div>
                  </div>
                  <div class="text-center row mb-2 mt-2 col-12 col-md-12 col-xl-8">
                     @if($product->qty == '0') 
                     <a data-id="{{ $product->id }}"
                     style="background: linear-gradient(120deg, #27994a -10%, #1C863C 100%) !important;color: #ffffff;pointer-events: none;"
                     data-url="{{ route('front.cart.store') }}" class="btn btn-default bold font-20 px-5 add_cart col-md-12 col-lg-12">
                    <i class="fas fa-shopping-cart"></i> &ensp; {{ BanglaText('cart_add') }}
                     </a>
                     @else
                     <a data-id="{{ $product->id }}"
                     style="background: linear-gradient(120deg, #27994a -10%, #1C863C 100%) !important;color: #ffffff;"
                     data-url="{{ route('front.cart.store') }}" class="btn btn-default bold font-20 px-5 add_cart col-md-12 col-lg-12">
                    <i class="fas fa-shopping-cart"></i> &ensp; {{ BanglaText('cart_add') }}
                     </a>
                     @endif
                     @if($product->qty == '0') 
                     <a href="{{ route('front.check.single', ['product_id' => $product->id]) }}"
                        style="background: red; margin-top: 2%;pointer-events: none;"
                        class="btn btn-primary bold font-20 px-5 checkout-btn buy-now col-md-12 col-lg-12"
                        data-url="{{ route('front.cart.store') }}" >
                    <i class="fas fa-shopping-cart"></i> &ensp; {{ BanglaText('order') }}
                     </a>
                     @else
                     <a href="{{ route('front.check.single', ['product_id' => $product->id]) }}"
                        style="background: red; margin-top: 2%;"
                        class="btn btn-primary bold font-20 px-5 checkout-btn buy-now col-md-12 col-lg-12"
                        data-url="{{ route('front.cart.store') }}" >
                    <i class="fas fa-shopping-cart"></i> &ensp; {{ BanglaText('order') }}
                     </a>
                     @endif
                  </div>
                  @php $footer = DB::table('footers')->first(); @endphp
                  <div class="text-center row mb-2 mt-2 col-12 col-md-12 col-xl-8">
                     <a href="tel: +88{{ $footer->phone }}"
                     style="background: linear-gradient(120deg, #27994a -10%, #1C863C 100%) !important;"
                     class="btn btn-primary bold font-20 px-2 add_cart col-md-12 col-lg-12">
                     <span class="call_text"><i class='fas fa-phone'></i> +88{{ $footer->phone }}</span>
                     </a>
                     <a href="https://wa.me/+88{{ $footer->phone }}" class="btn btn-primary bold font-20 px-2 checkout-btn buy_now col-md-12 col-lg-12" 
                     style="background:red; margin-top:2%;">
                     <span class="call_text"><i class='fa fa-whatsapp'></i> +88{{ $footer->phone2 }}</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
<div class="row p-lg-3">
   <div class="col-lg-9 col-md-8 col-12">
      <div class="container">
         <ul class="nav col-md-12" id="myTabs" style="padding:0px; background:white">
             
            <li class="">
               <a class="btn btn-light bg-white bold active" id="tab2-tab" data-bs-toggle="tab" href="#tab2">Description</a>
            </li>
            
            <li class="">
                <a class="btn btn-light bg-white bold" id="tab1-tab" data-bs-toggle="tab" href="#tab1">Specification</a>
            </li>
            
            <li class="">
               <a class="btn btn-light bg-white bold " id="tab3-tab" data-bs-toggle="tab" href="#tab4">Review</a>
            </li>
            
            <li class="">
               <a class="btn btn-light bg-white bold " id="tab3-tab" data-bs-toggle="tab" href="#vedio">Video</a>
            </li>
            
         </ul>
         
         <div class="tab-content bg-white p-lg-4 p-3" id="myTabsContent" style="width: 100%; padding: 0px">
            <div class="tab-pane show active" id="tab2">
               <h4 class="semi">Descriptions</h4>
               <p class="font-15 semi">
                  {!!$product->long_description!!}
               </p>
            </div>
            
            <div class="tab-pane show" id="tab1">
                        <h4 class="semi"></h4>
                        <div class="bg-sky">
                        <strong style="">Specification</strong>
                        </div>
                        
                         <table class="table table-bordered">
                          <thead>
                            <tr>
                              <th scope="col">Key</th>
                              <th scope="col">Specification</th>
                              
                            </tr>
                          </thead>
                          <tbody>
                             @forelse($Specification as $key => $item)  
                            <tr>
                              
                              <td class="w-40">{{$item->key}}</td>
                              <td class="w-60">{{$item->specification}}</td>
                            </tr>
                            @empty
                                <tr>
                              
                              
                              <td class="w-100">No Data</td>
                            </tr>
                        @endforelse
                          </tbody>
                        </table>	   
                        
                        
                      </div>
           
            <div class="tab-pane fade" id="tab3">
               <p>Content for Tab 3</p>
            </div>
            <div class="tab-pane fade" id="tab4">
               @auth
               <form action="{{ route('front.product.product-reviews.store') }}" method="POST">
                  @csrf
                  <input type="hidden" name="product_id" value="{{ $product->id }}">
                  <div class="form-group">
                     <label for="rating">Rating:</label>
                     <select name="rating" id="rating" class="form-control">
                        <option value="1">1 Star</option>
                        <option value="2">2 Star</option>
                        <option value="3">3 Star</option>
                        <option value="4">4 Star</option>
                        <option value="5">5 Star</option>
                        <!-- Add more options for ratings -->
                     </select>
                  </div>
                  <div class="form-group">
                     <label for="review">Review:</label>
                     <textarea name="review" id="review" rows="4" class="form-control"></textarea>
                  </div>
                  <button type="submit" class="btn btn-primary" style="margin-top: 15px;">Submit Review</button>
               </form>
               @else
               <p>Please <a href="{{url('login-user')}}" class="btn btn-default" style="background: #1E8A3F;color: #ffffff;">login</a> to submit a review.</p>
               @endauth
               <style>
                  .fa-solid{
                  color: #F2C94C;
                  }
                  p.rev {
                  font-size: 17px;
                  }
                  p.rev_user {
                  font-size: 25px;
                  }
               </style>
               @forelse($reviews as $key=>$rev)
               <br/>
               <div class="container card">
                  <div class="row">
                     <div class="col-md-6">
                        <p class="rev_user" style="font-weight:bold;">
                           <img src="https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=" alt="Avater" width="70px" height="70px"/>
                           {{$rev->user->name}}
                        </p>
                     </div>
                     <div class="col-md-6" style="text-align: right;">
                        <p style="margin-left:8%;font-weight:bolder;margin-top: 15px;">
                           @if($rev->rating == 1)
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           @elseif($rev->rating == 2)
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           @elseif($rev->rating == 3)
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           @elseif($rev->rating == 4)
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-regular fa-star"></i>
                           @else
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           <i class="fa-solid fa-star"></i>
                           @endif
                           ({{$rev->rating}}/5)
                        </p>
                     </div>
                  </div>
                  <p class="rev" style="margin-left: 8%;margin-top: -2%;font-weight: bold;"> {{$rev->review}}</p>
               </div>
               @empty
               <p> here are no questions asked yet. Be the first one to ask a question. </p>
               @endforelse
            </div>
            <div class="tab-pane show" id="vedio">
               <h4 class="semi">Video</h4>
               <p class="font-15 semi">
               <div class="bg-sky">
                  <strong>Video Features</strong>
                  <div>
                     {!!$product->video_link!!}
                  </div>
               </div>
               </p>
            </div>
         </div>
      </div>
   </div>
   <div class="col-lg-3 col-md-4 col-12">
      <div class="bg-white p-3 related">
         <h4 class="bold text-center">Relate Products</h4>
         <hr>
         @forelse($relatedProducts as $key => $item)
         <div class="product">
           <a href="{{ route('front.product.show', [ $item->id ] ) }}">
            <img src="{{ asset('uploads/custom-images2/'.$item->thumb_image) }}" alt="" width="80">
           </a>
             <div class="content">
               <a href="{{ route('front.product.show', [ $item->id ] ) }}" class="font-16">
                  <p class="bold font-15" style="color: #1D883E;">{{$item->name}}</p>
               </a>
               @if(!empty($item->offer_price))
               <span class="text-danger bold"> {{$item->offer_price}}</span>
               @else
               <span class="text-danger bold">৳ {{$item->price}}</span>
               @endif
               <a class="btn border-none text-muted bold font-15" href="{{ route('front.product.show', [ $item->id ] ) }}"><i class="far fa-square-plus"></i><span class="ms-0"> view Product </span></a>
            </div>
         </div>
         <hr class="border border-muted">
         @empty
         <div>
            <strong class="text-center text-danger">
            No Related Products
            </strong>
         </div>
         @endforelse
         <hr class="border border-muted">
      </div>
   </div>
</div>
</div>
</div>
@endsection
@push('js')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="
   https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js
   "></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script>
   $(document).ready(function () {
       $('.buy-now').on('click', function (e) {
           e.preventDefault();
           
           let variation_id = $('#size_variation_id').val();
           let variation_size = $('#size_value').val();
           let variation_color = $('#color_value').val();     
           let variation_price = $('#pro_price').val();
           var productId = $(this).attr('href').split('/').pop();
           var proQty = $('#quantity').val();
           var addToCartUrl = $(this).data('url');
           var checkoutUrl = "{{ route('front.cart.index') }}";
           var csrfToken = $('meta[name="csrf-token"]').attr('content');
   
           // Include CSRF token in AJAX request headers
           $.ajaxSetup({
               headers: {
                   'X-CSRF-TOKEN': csrfToken
               }
           });
   
           // Perform AJAX request to add the product to the cart
           $.post(addToCartUrl,
           { 
               id              : productId,
               quantity        : proQty, 
               variation_id    : variation_id,  
               varSize         : variation_size,
               varColor        : variation_color,
               variation_price : variation_price
           }, 
           
           function (response) {
               
               if(response.status)
               {
                   toastr.success(response.msg);
                   // Redirect to checkout page after adding to cart
                   window.location.href = "{{ route('front.checkout.index') }}";
               } else {
            // Check if the response contains validation errors
            if (response.errors) {
                for (var field in response.errors) {
                    if (response.errors.hasOwnProperty(field)) {
                        for (var i = 0; i < response.errors[field].length; i++) {
                            toastr.error(response.errors[field][i]);
                        }
                    }
                }
            } else {
                toastr.error(response.msg || 'An error occurred while processing your request.');
            }
        }
   
           });
       });
   });
     
</script>
<script>
   $(document).ready(function () {
       $('.increase-qty').on('click', function () {
           var qtyInput = $(this).siblings('.qty');
           var newQuantity = parseInt(qtyInput.val()) + 1;
           qtyInput.val(newQuantity);
       });
   
       $('.decrease-qty').on('click', function () {
           var qtyInput = $(this).siblings('.qty');
           var newQuantity = parseInt(qtyInput.val()) - 1;
           if (newQuantity > 0) {
               qtyInput.val(newQuantity);
           }
         else{
         	
         }
       });
   });
   
   
</script>
<script>
   $(function () {
   
      $(document).on('click', '.add-to-cart', function (e) {
          
          let variation_id = $('#size_variation_id').val();
          let variation_size = $('#size_value').val();
          let variation_color = $('#color_value').val();     
          let variation_price = $('#pro_price').val();
          let quantity = $('#quantity').val();
          let id = $(this).data('id');
          let url = $(this).data('url');
          
          addToCart(url, id,variation_size, variation_color, variation_id,variation_price,quantity);
      });
   
      // ... other click event handlers ...
   
      function addToCart(url, id, varSize ="", varColor = "", variation_id="",variation_price="",quantity,type = "") {
          var csrfToken = $('meta[name="csrf-token"]').attr('content');
   
          $.ajax({
              type: "POST",
              url: url,
              headers: {
                  'X-CSRF-TOKEN': csrfToken
              },
              data: { id,varSize,varColor,variation_id, variation_price,quantity },
             success: function (res) {
                  
                  if (res.status) {
                      toastr.success(res.msg);
            if (type) {
                if (res.url !== '') {
                    document.location.href = res.url;
                } else {
                    // Handle specific case
                }
            } else {
                window.location.reload();
            }
        } else {
            // Check if the response contains validation errors
            if (res.errors) {
                for (var field in res.errors) {
                    if (res.errors.hasOwnProperty(field)) {
                        for (var i = 0; i < res.errors[field].length; i++) {
                            toastr.error(res.errors[field][i]);
                        }
                    }
                }
            } else {
                toastr.error(res.msg || 'An error occurred while processing your request.');
            }
        }
                
              },
              error: function (xhr, status, error) {
                  toastr.error('An error occurred while processing your request.');
              }
          });
      }
   
      // ... other functions ...
   
   
   });
   $(document).ready(function() {
              $('.popup-link').magnificPopup({
                  type: 'image', // Set the content type to 'image'
                  gallery: {
                      enabled: true // Enable gallery mode
                  }
              });
          });
   
   $('#sizes .size').on('click', function(){
      $('#sizes .size').removeClass('active');
      $(this).addClass('active');
      let value = $(this).attr('value');
      let varSize = $(this).data('varsize');
      
      $('#select_size').text('Select Size : '+varSize);
      
   
      // Assuming you have retrieved the selected variation price somehow
      let variationPrice = parseFloat($(this).data('varprice'));
   
      $.ajax({
          type: 'get',
          url: '{{ route("front.product.get-variation_price") }}',
          data: {
              varSize,
            	value,
              variationPrice, // Pass variation price to the server
          },
          success: function(res) {
              $('.current-price-product').text('' + res.price);
            	$('#size_value').val();
              $('#price_val').val(res.price);
              $('#pro_price').val(res.price);
              console.log(res);
          }
      });
   
      $("#size_value").val(varSize);
      $("#size_variation_id").val(value);
   });
    
    
   let imageClick = false; 
    
   $('#colors .color').on('click', function(){
      $('#colors .color').removeClass('active');
      $(this).addClass('active');
      let value = $(this).attr('value');
      let varColor = $(this).data('varcolor');
      let product_id = $(this).data('proid');
      let color_id = $(this).data('colorid'); 
      
      $('#select_color').text('Select Color : '+varColor);	
     	
      // Assuming you have retrieved the selected variation price somehow
      let variationColor = parseFloat($(this).data('varcolor'));
   
      $.ajax({
          type: 'get',
          url: '{{ route("front.product.get-variation_color") }}',
          data: {
              varColor,
            	value,
              variationColor,
            	product_id,
              color_id
            // Pass variation price to the server
          },
          success: function(res) {
              //$('.current-price-product').text('' + res.price);
            	$('.testslide-image').html(res.var_images);
              
            	$('#color_value').val();
              //$('#price_val1').val(res.price);
              console.log(res);
            
              imageClick = true;
          }
      });
   
      $("#color_value").val(varColor);
      $("#color_value1").val(value);
   }); 
   
   $(document).on('click', '.slider-container', function() {
      if (imageClick) {
      
      }
   });
    
    
   // JavaScript function to change the big image
    function changeImage(imageUrl) {
       
        document.getElementById('big-image').src = imageUrl;
    }
    
   
    function changeImage(newImageSrc) {
        // Get the "big-image" element by its ID
        var bigImage = document.getElementById("big-image");

        // Update the source of the big image with the new image source
        bigImage.src = newImageSrc;
    }

    
   
</script>
@endpush