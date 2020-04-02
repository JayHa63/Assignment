<?php

namespace App\Http\Controllers;
use App\Fuelquote;
use App\Fuel;
use Auth;
use Illuminate\Http\Request;

class FuelquoteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
         $data['fuelquote'] = Fuelquote::orderBy('quoteid', 'DESC')->where('userid',Auth::id())->paginate(5);

        $data['title']='Fuelquote';

        //create breadcumbs
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' =>'Home',
            'href' => url("/user")
        );
        $data['breadcrumbs'][] = array(
            'text' => $data['title'],
            'href' => url("/user/role"),
        );
        //'data'=>$data, 

        return view('backend.fuelquote.list',['data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        

        $data['title']='Create Fuelquote';

        //create breadcumbs
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' =>'Main',
            'href' => url("/user")
        );
        $data['breadcrumbs'][] = array(
            'text' => $data['title'],
            'href' => url("/user/fuelquote/create"),
        );
        $data['fuelquote']=array(
            'fuel_name'=>'',
            'gallonrequest'=>'',
            'suggestprice'=>'',
            'totalAmountDue'=>'',
            'deliverydate'=>'',
        );
         $data['fuels'] = Fuel::all();
        //'data'=>$data, 
        return view('backend.fuelquote.add',['data'=>$data]);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $fu = new Fuelquote;
        $fu->fuel_id = $request->fuel_id;

        $fu->gallonrequest = $request->gallonrequest;
        $fu->suggestprice = $request->suggestprice;
        $fu->totalAmountDue = $request->totalAmountDue;
        $fu->deliverydate = $request->deliverydate;

        $fu->userid=Auth::id();

        $fu->save();
        
        return redirect('fuelquote')->with('messenger', 'Create Success');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($quoteid)
    {
       $data['fuels'] = Fuel::all();
        $data['fuelquote']=Fuelquote::find($quoteid); 
        $data['title']='Edit Fuelquote';
        if($data['fuelquote'])
        return view('backend.fuelquote.edit',['data'=>$data]);
        else return redirect('fuelquote');
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $quoteid)
    {
          
        $fu = Fuelquote::find($quoteid); 
        $fu->fuel_name = $request->fuel_name;
        $fu->gallonrequest = $request->gallonrequest;
        $fu->suggestprice = $request->suggestprice;
        $fu->totalAmountDue = $request->totalAmountDue;
        $fu->deliverydate = $request->deliverydate;

        $fu->save(); 

        return redirect('fuelquote')->with('messenger', 'Update Success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
      public function delete($quoteid)
    {
        $fu = Fuelquote::find($quoteid);
        $fu->delete(); 
        return redirect('fuelquote')->with('messenger', 'Delete Success');
        
    }

    public function destroy($quoteid)
    {
        $fu = Fuelquote::find($quoteid); 
        return redirect('fuelquote')->with('messenger', 'Delete Success');
        
    }
}
