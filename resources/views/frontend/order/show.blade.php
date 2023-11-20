@extends('frontend.app')
@section('title', 'Home')
@push('css')
    <link rel="stylesheet" href="{{ asset('frontend/css/checkout.css') }}">
@endpush
@section('content')
<div class="container">
    <h2>Order</h2>
    
    <p><strong>Order Number:</strong> {{ $order->order_id }}</p>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Product Image</th>
                <th>Product Name</th>
                <th>Product Quantity</th>
                <th>Unit Price</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            @php
            $totalAmount = 0; // Initialize totalAmount
            @endphp
            @forelse($order->orderProducts as $item)
            <tr>
                <td><img src="{{ asset('uploads/custom-images2/'.$item->product->thumb_image) }}" alt="" height="100"></td>
                <td>{{ $item->product->name }}</td>
                <td>{{ $item->qty }}</td>
                <td>{{ $item->unit_price }}</td>
                <td>{{ $item->unit_price * $item->qty }}</td>
            </tr>
            @php
            $totalAmount += ($item->unit_price * $item->qty); // Calculate totalAmount
            @endphp
            @empty
            <tr>
                <td colspan="4">No Order found</td>
            </tr>
            @endforelse
            <tr>
                <td colspan="4" class="text-end"><strong>Total Amount:</strong></td>
                <td>
                    <div class="total-amount">
                        <p class="main-color" id="total-amount">
                            {{ number_format($totalAmount, 2) }} ৳ <!-- Display total amount -->
                        </p>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
</div>

<!--<div class="" role="">-->
<!--            <div class="">-->
<!--                    <div class="modal-header">-->
<!--                            <h5 class="" id="">Order Details</h5>-->
<!--                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>-->
<!--                        </div>-->
<!--                <div class="container">-->
<!--                    <div class="container-fluid">-->
<!--                        <div class="table-responsive">-->
<!--                            <table class="table table-border">-->
<!--                                <tbody>-->
<!--                                    @forelse($order->orderProducts as $item)-->
<!--                                    <tr class="">-->
<!--                                        <td scope="row">Product Image</td>-->
<!--                                        <td><img src="{{ asset($item->product->thumb_image) }}" alt="" height="100"></td>-->
<!--                                    </tr>-->
<!--                                    <tr class="">-->
<!--                                        <td scope="row">Order ID</td>-->
<!--                                        <td>{{ $order->order_id }}</td>-->
<!--                                    </tr>-->
<!--                                    <tr class="">-->
<!--                                        <td scope="row">Product Name</td>-->
<!--                                        <td>{{ $item->product->name }}</td>-->
<!--                                    </tr>-->
<!--                                    <tr class="">-->
<!--                                        <td scope="row">Product Price</td>-->
<!--                                        <td>{{ $item->unit_price }}</td>-->
<!--                                    </tr>-->
<!--                                    <tr class="">-->
<!--                                        <td scope="row">Product Quantity</td>-->
<!--                                        <td>{{ $item->qty }}</td>-->
<!--                                    </tr>-->
<!--                                    <tr class="d-none">-->
<!--                                        <td scope="row">Action</td>-->
<!--                                        <td><button class="btn btn-danger border-0 rounded-0"><i class="fas fa-delete-left"></i> Remove Order</button></td>-->
<!--                                    </tr>-->
<!--                                    @empty-->
<!--                                    <div>-->
<!--                                        <strong class="text-danger text-center">-->
<!--                                            No products are available!-->
<!--                                        </strong>-->
<!--                                    </div>-->
<!--                                    @endforelse-->
<!--                                </tbody>-->
<!--                            </table>-->
<!--                        </div>-->
                        
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
        @endsection