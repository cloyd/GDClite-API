<?php

class TeachersController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * GET /teachers
	 *
	 * @return Response
	 */
	public function index()
	{
		$teachers = Teacher::all();

		 // return $teachers;

		 return Response::json([
		 	'data' => $teachers->toArray()
		 ],200);
	}

	/**
	 * Show the form for creating a new resource.
	 * GET /teachers/create
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /teachers
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 * GET /teachers/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$teacher = Teacher::find($id);

		if(! $teacher ){
			return Response::json([
		 	'data' => 'teacher not found'
		 	],404);
		}

		// return $teacher->danceclasses->toArray();

		return Response::json([
		 	'data' => $teacher->toArray()
		 ],200);
	}

	/**
	 * Show the form for editing the specified resource.
	 * GET /teachers/{id}/edit
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
	 * PUT /teachers/{id}
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
	 * DELETE /teachers/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}