<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
	public function index() //viewを直接表示(controller介さない)
	{
		return view ("welcome");
		//view のreturn 値がブラウザへのレスポンスになる
	}
	//WelcomeController呼び出しindexメソッドを実行

	public function contact()
	{
		return view("contact");
	}
}
