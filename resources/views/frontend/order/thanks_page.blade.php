@extends('frontend.app')
@section('title', 'Home')
@push('css')
    <link rel="stylesheet" href="{{ asset('frontend/css/profile.css') }}">
@endpush
@section('content')

<div class="container mt-3">
  
  <div class="mt-4 p-5 bg-primary text-white rounded text-center" style="margin-bottom: 5%; box-shadow: 10px 10px 5px gray;">
    <h1>Thanks For order</h1> 
    <p>Your Order Has Been Received </p> 
    <p> Our Sales Representative Will contact you, to ensure this order </p> 
    @if(!empty($order_inv->order_id))
    <p> For Your Order. Invoice Number is : #{{$order_inv->order_id}} </p>
    @else
   
   
    @endif
    <a class="btn bg-dark" href="{{route('front.home')}}" style="color:white"> Back To Home  </a>
    @if(!empty($order_inv->order_phone))
    <a class="btn bg-dark" href="{{route('front.order-list',$order_inv->order_phone)}}" style="color:white"> See all Orders  </a>
    @else
    
    @endif
  </div>
</div>

@endsection