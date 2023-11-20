@extends('frontend.app')
@section('title', 'Home')
@push('css')

<link rel="stylesheet" href="{{asset('frontend/assets/css/cart.css')}}">
@endpush
@section('content')
@php
$totalAmount = 0;
@endphp
<div class="main-wrapper">
        <div class="overlay-sidebar"></div>
        <div class="container-fluid mt-5 mb-5">
            <div class="row">
                <div class="col-lg-8 col-md-12 col-12 cart-items">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="border border-dark border-end-0 border-top-0 border-start-0">
                                <tr>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                       @forelse($cart as $key => $item)
                            <tr class="border border-muted border-end-0 border-top-0 border-start-0">
                                <td>
                                    <div class="remove">
                                        <button class="btn remove-item" data-id="{{ $key }}">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </td>
                                <td>
                                    <div class="thambnail">
                                        
                                        <img src="{{ asset('uploads/custom-images2/'.$item['image']) }}" alt="{{ $item['name'] }}" width="80">
                                    </div>
                                </td>
                                <td>
                                    <div class="product-name">
                                        <a href="product.html" class="text-decoration-none text-dark font-12">
                                            {{ $item['name'] }}
                                        </a>
                                    </div>
                                </td>
                                <td>
                                    <div class="product-price" data-title="Price">
                                        <p class="text-muted">
                                            <span class="text-danger">{{ $item['price'] }}৳</span>
                                        </p>
                                    </div>
                                </td>
                                <td>
                                    <div class="quantity d-flex">
                                        <button class="btn rounded-0 border border-muted dec" data-id="{{ $key }}">-</button>
                                        <input type="number"  min="1" class="border border-muted text-center rounded-0 quantity-value" value="{{ $item['quantity'] }}" data-id="{{ $key }}" required>
                                        <button class="btn rounded-0 border border-muted inc" data-id="{{ $key }}">+</button>
                                        <a href="#" class="btn border-0 btn-sm update-cart" data-id="{{ $key }}"><i class="fas fa-repeat"></i></a> <!-- Updated here -->
                                    </div>
                                </td>
                                <td class="subtotal" id="subtotal-{{ $key }}" data-price="{{ $item['price'] }}" style="width: 124px;">
                                    <div class="subtotal" title="subtotal">
                                        <p class="main-color m-0">
                                            {{ number_format($item['quantity'] * $item['price'], 2) }} ৳ <!-- Calculate and display subtotal -->
                                        </p>
                                        
                                    </div>
                                </td>
                            </tr>
                            @php
                            $totalAmount += ($item['price'] * $item['quantity']); // Calculate totalAmount
                            @endphp
                            @empty
                            <div align="center">
                                <strong class="text-center text-danger">No Data</strong>
                            </div>
                            @endforelse
                            <tr>
                                <td colspan="5" class="text-end"><strong>Total Amount:</strong></td>
                                <td>
                                    <div class="total-amount">
                                            <p class="main-color m-0" id="total-amount">
                                                {{ $totalAmount }} ৳
                                            </p>
                                        </div>
                                </td>
                            </tr>




                            </tbody>
                        </table>
                    </div>
                    
                </div>
                <div class="col-lg-4 col-md-12 col-12 proceed-checkout">
                    <div class="border-bold card p-3">
                        <div class="text-center">
                            <h3><b>Your Cart</b></h3>   
                        </div>
                        <div class="table-responsive cart-form">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">PRODUCT</th>
                                        <th scope="col" class="text-end">SUB TOTAL</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($cart as $key => $item)
                                    <tr>
                                        <td class="font-12">{{ $item['name'] }}</td>
                                        <td class="text-end font-13">{{ number_format($item['quantity'] * $item['price'], 2) }} ৳</td>
                                    </tr>
                                    @empty
                                    <div align="center">
                                        <strong class="text-center text-danger">No Data</strong>
                                    </div>
                                     @endforelse
                                    
                                </tbody>
                            </table>
                            <a href="{{ route('front.checkout.index') }}" class="btn text-center d-block">
                                </a><a href="{{ route('front.checkout.index') }}" class="text-cap btn text-light" style="background: linear-gradient(120deg, #27994a -10%, #1C863C 100%) !important;">Proceed to Checkout <span><i class="fas fa-arrow-right"></i></span></a>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
    </div>

@endsection

