<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{

  public function index()
  {
    return view('home');
  }

  public function login()
  {
    return view('login');
  }

  public function logout()
  {
    Session::flush();
    return redirect('login')->with('alert-logout','Kamu sudah logout!');
  }

  public function doLogin(Request $request)
  {
    $email    = $request->input('txt-email');
    $password = $request->input('txt-password');

    if (Auth::attempt(['email' => $email, 'password' => $password]))
    {
     Session::put('name', Auth::user()->id);
     Session::put('login', TRUE);
     return redirect('/');
    }else{
      return redirect('login')->with('alert','Password atau Email kamu salah!');
    };
  }

  public function total()
  {
    $totalPC  = DB::table('computers')
                  ->where('status', '=', '1')
                  ->get();
    $resultPC = $totalPC->count();

    $totalClient  = DB::table('clients')
                    ->where('status', '=', '1')
                    ->get();
    $resultClient = $totalClient->count();

    $totalServer  = DB::table('servers')
                    ->where('status', '=', '1')
                    ->get();
    $resultServer = $totalServer->count();

    $totalVirServer  = DB::table('virtualservers')
                       ->where('status', '=', '1')
                       ->get();
    $resultVirServer = $totalVirServer->count();

    $response = [
                  'TotalPC'         => $resultPC,
                  'TotalClient'     => $resultClient,
                  'Server'          => $resultServer,
                  'VirtualServer'   => $resultVirServer,
                ];

    return response()->json($response);

  }

}
