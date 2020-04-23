@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('CREATE FUEL QUOTE') }}</div>
               
                @if(session('messenger'))
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i>    
                      {{session('messenger')}}   <button type="button" class="close" data-dismiss="alert">×</button>
                        </div>
                @endif

                <div class="card-body">
                    <form   action="{{ route('fuelquote.store')}}"   accept-charset="UTF-8" method="POST" enctype="multipart/form-data">
                         @csrf
                    
                          <div class="form-group row">

                            <label for="fuel_id" class="col-md-4 col-form-label text-md-right">{{ __('SELECT FUEL') }}</label>

                            <div class="col-md-6">
                                


                                <select id="fuel_id" name="fuel_id" class="form-control{{ $errors->has('fuel_id') ? ' is-invalid' : '' }}"  required >

                                    @if(count($data['fuels'])>1)
                                        <option value="">Choose...</option>
                                    @endif

                                    @foreach($data['fuels'] as $val)
                                        <option value="{{$val->fuel_id}}">{{$val->fuel_name}}</option>
                                    @endforeach

                                </select>



                                 @if ($errors->has('fuelid')) 
                                    <p class='plgalert'>{{ $errors->first('fuel_id') }}</p>
                                  @endif
                            </div>
                          </div>

                         <div class="form-group row">
                            <label for="gallonrequest" class="col-md-4 col-form-label text-md-right">{{ __('Gallon Request') }}</label>

                            <div class="col-md-6">
                                <input id="gallonrequest" type="text" class="form-control @error('gallonrequest') is-invalid @enderror" name="gallonrequest" value="{{$data['fuelquote']['gallonrequest']}}" required autocomplete="gallonrequest" autofocus>

                                @error('gallonrequest')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                         <div class="form-group row">
                            <label for="suggestprice" class="col-md-4 col-form-label text-md-right">{{ __('Suggest Price') }}</label>

                            <div class="col-md-6">
                                <input id="suggestprice" type="text" class="form-control @error('suggestprice') is-invalid @enderror" name="suggestprice" value="{{$data['fuelquote']['suggestprice']}}" required autocomplete="suggestprice" autofocus>

                                @error('suggestprice')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                         <div class="form-group row">
                            <label for="totalAmountDue" class="col-md-4 col-form-label text-md-right">{{ __('Total Amount Due') }}</label>

                            <div class="col-md-6">
                                <input id="totalAmountDue" type="text" class="form-control @error('totalAmountDue') is-invalid @enderror" name="totalAmountDue" value="{{$data['fuelquote']['totalAmountDue']}}" required autocomplete="totalAmountDue" autofocus>

                                @error('totalAmountDue')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                         <div class="form-group row">
                            <label for="deliverydate" class="col-md-4 col-form-label text-md-right">{{ __('Delivery Date') }}</label>

                            <div class="col-md-6">
                                <input id="deliverydate" type="date" class="form-control @error('deliverydate') is-invalid @enderror" name="deliverydate" value="{{$data['fuelquote']['deliverydate']}}" required autocomplete="deliverydate" autofocus>

                                @error('deliverydate')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Save') }}
                                </button>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection