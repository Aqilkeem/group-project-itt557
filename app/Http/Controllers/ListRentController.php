<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Book;
use App\Rent;

class ListRentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data['books'] = Book::whereHas('rents',function($query){
            $query->where('user_id',Auth::user()->id);
        })->get();
        return view('user.listrent.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function rent($id){
        $book = Book::find($id);
        $rent = new Rent;
        $rent->user_id = Auth::user()->id;
        $rent->book_id = $book->id;
        $rent->rent_date = date('Y-m-d H:i:s');
        $rent->return_date = date('Y-m-d H:i:s',strtotime("+7 days"));
        $rent->save();
        return redirect('/listrent');
    }

    public function return ($id){
        $rent = Rent::where('user_id',Auth::user()->id)->where('book_id',$id)->delete();
        return redirect('/listrent');
    }
}
