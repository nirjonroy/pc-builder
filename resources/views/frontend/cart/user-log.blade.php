@extends('frontend.app')
@section('title', 'Home')
@push('css')

<link rel="stylesheet" href="{{asset('frontend/assets/css/login.css')}}">
@endpush
@section('content')

<!--<h3>Login User</h3>-->
<!--<p>Try to submit the form.</p>-->

<div class="container d-none">
  <form action="{{url('login')}}" method="POST">
    @csrf
    

    
    <label for="name">E-mail</label>
    <input type="text" id="usrname" name="email" required>
     @if ($errors->has('email'))
            <span class="help-block text-danger">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
        @endif
    
    <label for="psw">Password</label>
    <input type="password" id="psw" name="password"  required>
     @if ($errors->has('password'))
            <span class="help-block text-danger">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
        @endif

    <input type="submit" value="Submit">
    
    <a class="btn btn-success" href="{{url('register-user')}}" style="display: block;">Register</a>
  </form>
</div>


			
			
			
<section class="log-register-main">
           <div class="container">
              <div class="row">
                 <div class="col-12">
                    <div class="login-reg-tabs">
                       <ul class="nav nav-tabs" id="myTab" role="tablist">
                          <li class="nav-item" role="presentation"><button class="nav-link active" id="login-tab" data-bs-toggle="tab" data-bs-target="#login-tab-pane" type="button" role="tab" aria-controls="login-tab-pane" aria-selected="false" tabindex="-1">login</button></li>
                          <li class="nav-item" role="presentation"><button class="nav-link" id="reg-tab" data-bs-toggle="tab" data-bs-target="#reg-tab-pane" type="button" role="tab" aria-controls="reg-tab-pane" aria-selected="true">registration</button></li>
                       </ul>
                       <div class="tab-content" id="myTabContent">
                          <div class="tab-pane fade active show" id="login-tab-pane" role="tabpanel" aria-labelledby="login-tab" tabindex="0">
                             <form action="{{url('login')}}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Enter email / phone number">
                                    @if($errors->has('email'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="psw" name="password"  required>
                                    @if($errors->has('password'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                <input type="checkbox" name="remember" id="remember" class=""> &nbsp; Keep me logged in
                                <button type="submit" class="btn btn-primary login-btn">Login Now</button>
                                <div class="w-100 text-center">
                                    <a class="forget-pass" data-bs-toggle="modal" href="#forget-pass">Forgot your password?</a>
</button>
                                </div>
                             </form>
                             <div class="modal fade" id="forget-pass" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                   <div class="modal-content">
                                      <div class="modal-header">
                                         <h1 class="modal-title fs-5" id="staticBackdropLabel">Forgot Password</h1>
                                      </div>
                                      <div class="modal-body" id="forgot_modal_body">
                                         <label for="">Email/Phone</label><input type="text" name="email_or_phone" class="form-control" placeholder="Enter email / phone number">
                                         <div class="text-danger"></div>
                                         <small>please enter the email/phone that register here.</small>
                                      </div>
                                      <div class="modal-footer" id="forgot_modal_footer"><button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Close</button><button type="button" class="btn btn-outline-dark">Send Code</button></div>
                                   </div>
                                </div>
                             </div>
                             <ul class="nav social-login-nav">
                                <li class="nav-item"></li>
                             </ul>
                          </div>
                          <div class="tab-pane fade" id="reg-tab-pane" role="tabpanel" aria-labelledby="reg-tab" tabindex="0">
                             <form action="{{url('register')}}" method="POST">
                                @csrf
                                <div class="row g-0">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 ">
                                       <input type="text" class="form-control mb-0" placeholder="Enter Your name" name="name">
                                        @if ($errors->has('name'))
                                            <span class="help-block text-danger">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif
                                        <div class="text-danger mb-3"></div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 " id="phone-code">
                                       <input type="text" class="form-control mb-0" placeholder="01XXXXXXXXX" name="phone">
                                       @if ($errors->has('phone'))
                                            <span class="help-block text-danger">
                                                <strong>{{ $errors->first('phone') }}</strong>
                                            </span>
                                        @endif
                                        <div class="text-danger mb-3"></div>
                                    </div>
                                   <div class="col-md-12 " id="email">
                                      <input type="email" name="email" class="form-control " placeholder="Enter email address (example@example.com)">
                                        @if ($errors->has('email'))
                                            <span class="help-block text-danger">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                   </div>
                                   <div class="text-danger"></div>
                                </div>
                                <div class="form-group">
                                   <input type="password" name="password" class="form-control" id="psw" placeholder="Enter Password (Minimum 8 Charactar)" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                   
                                   @if ($errors->has('password_confirmation'))
                                        <span class="help-block text-danger">
                                            <strong>{{ $errors->first('password_confirmation') }}</strong>
                                        </span>
                                    @endif
                                    <div class="text-danger mb-3"></div>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password_confirmation" class="form-control" id="psw" placeholder="Enter confirm-password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                                </div>
                                <button type="submit" class="btn btn-primary login-btn mt-0">create account</button>
                             </form>
                             <div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                   <div class="modal-content">
                                      <div class="modal-header">
                                         <h1 class="modal-title fs-5" id="staticBackdropLabel">Verification Code</h1>
                                      </div>
                                      <div class="modal-body">
                                         <label for="">Code</label><input type="text" class="form-control" placeholder="verification code">
                                         <div class="text-danger"></div>
                                         <small>please check your number for the verification code.</small>
                                      </div>
                                      <div class="modal-footer"><button type="button" class="btn btn-outline-dark">Resend</button><button type="button" class="btn btn-outline-dark">Verify</button></div>
                                   </div>
                                </div>
                             </div>
                          </div>
                       </div>
                    </div>
                 </div>
              </div>
           </div>
        </section>


@endsection

@push('js')


@endpush