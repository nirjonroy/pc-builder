<!DOCTYPE html>
<html lang="en">
    @include('frontend.partials.head')
    
    <style>
        .fixed-cart-bottom1 {
    position: fixed;
    bottom: 2rem;
    right: 4px;
    background: #249346;
    border-radius: 50px;
    height: 60px;
    width: 60px;
    cursor: pointer;
    box-shadow: 2px 2px 8px #249346;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: 0.5s;
    z-index: 9999;
    border : #249346;
}
    </style>
<body>
    
    @include('frontend.partials.header')
    @php $cart = session()->get('cart', []); @endphp
    <!-- @include('frontend.partials.sidebar') -->
    <a href="{{ route('front.checkout.index') }}" 
    class="btn pmd-btn-fab pmd-ripple-effect btn-primary fixed-cart-bottom1"
    type="button"> @if($cart !== null) <span style="color: white;position: absolute;top: 4px;right: 17px;">{{ count($cart) }}</span>  @endif<i class="fas fa-shopping-cart"></i></a>
    @yield('content')

    @include('frontend.partials.footer')
    
