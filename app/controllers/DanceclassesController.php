<?php

class DanceclassesController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * GET /danceclasses
	 *
	 * @return Response
	 */
	public function index()
	{

		$danceclasses = Danceclass::with('dancestyle','teacher','location')->get();

		 // return $danceclasses;

		 return Response::json([
		 	'data' => $danceclasses->toArray()
		 ],200);
	}

	/**
	 * Show the form for creating a new resource.
	 * GET /danceclasses/create
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /danceclasses
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 * GET /danceclasses/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$danceclass = Danceclass::with('dancestyle','teacher','location')->find($id);

		if(! $danceclass ){
			return 'danceclass not found';
		}

		// return $danceclass->danceclasses->toArray();

		return Response::json([
		 	'data' => $danceclass->toArray()
		 ],200);

	}

	/**
	 * Show the form for editing the specified resource.
	 * GET /danceclasses/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /danceclasses/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 * DELETE /danceclasses/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}