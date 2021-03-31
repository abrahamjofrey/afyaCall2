<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContactForm;
use Illuminate\Support\Facades\Validator;


class contactFormFooter extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request): \Illuminate\Http\RedirectResponse
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone_number' => 'required',
            'from_email' => 'required',
            'subject' => 'required',
            'message' => 'required',

        ]);
        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }
        $contactForm = [
            'name' => $request->input('name'),
            'phone_number' => $request->input('phone_number'),
            'from_email'=>$request->input('from_email'),
            'subject'=>$request->input('subject'),
            'message'=>$request->input('message')
        ];

        $x=ContactForm::create($contactForm);
        return redirect()->back()->with('success', 'Successfully Sent!');


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
}
