<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Client;
use App\SettingDept;
use Auth;

class DataClientController extends Controller
{
    public function index()
    {
      return view('mst-dataclients.dataclients');
    }

    public function getDataClient()
    {
      $client = DB::table('clients')
                  ->select('clients.id',
                           'clients.id_client',
                           'clients.nama',
                           'clients.dept',
                           'clients.active_dir',
                           'clients.password',
                           'clients.email',
                           'clients.phone',
                           'clients.remark',
                           'clients.status',
                           'clients.created_at',
                           'clients.updated_at')->get();
      $data   = [];

      foreach($client as $row){

        if ($row->status==1) {
          $status = '<span class="label label-success arrowed">Active</span>';
        }elseif ($row->status==0) {
          $status = '<span class="label label-danger arrowed">Deleted</span>';
        }elseif ($row->status==2) {
          $status = '<span class="label label-warning arrowed">Deactivated</span>';
        }
        if (Auth::user()->role === 1) {
          $action = '<a href="javascript:void(0)" onclick="editForm('.$row->id.')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp';
        }else{
          $action = '';
        }
        $data[]=[
          'id_client'   => $row->id_client,
          'nama'        => $row->nama,
          'active_dir'  => $row->active_dir,
          'remark'      => $row->remark,
          'email'       => $row->email,
          'phone'       => $row->phone,
          'dept'        => $row->dept,
          'status'      => $status,
          'action'      => $action
        ];
      }

      return Datatables::of($data)
                         ->rawColumns(['status', 'action'])
                         ->make(true);
    }

    public function storeDataClient(Request $request)
    {
      $data = [
        'id_client'   =>  $request['id_client'],
        'nama'        =>  $request['nama'],
        'dept'        =>  $request['dept'],
        'active_dir'  =>  $request['active_dir'],
        'password'    =>  $request['pass'],
        'email'       =>  $request['email'],
        'phone'       =>  $request['phone'],
        'status'      =>  $request['status'],
        'remark'      =>  $request['remark']
      ];
      //
      return Client::create($data);
    }

    public function editDataClient($id)
    {
      $client = Client::find($id);
      return $client;
    }

    public function updateDataClient(Request $request, $id)
    {

      $client   = Client::find($id);
      $client->nama       = $request->get('nama');
      $client->dept       = $request->get('dept');
      $client->active_dir = $request->get('active_dir');
      $client->password   = $request->get('pass');
      $client->email      = $request->get('email');
      $client->phone      = $request->get('phone');
      $client->remark     = $request->get('remark');
      $client->save();

      return $client;
    }

    public function updateDataClient_status(Request $request, $id)
    {

      $client            = Client::find($id);
      $client->status    = $request->get('status');
      $client->save();

      return $client;
    }

    public function getIdClient()
    {
      $no_temp = Client::select('id_client')->orderBy('id_client', 'DESC')->take(1)->get();
      // list ($no_temp) = $query;
      $th 			= date("y");
      $thbefore	= substr($no_temp,18,2);
      // $thbefore	= substr($no_temp,18,3);
      if ($no_temp == '' OR $thbefore<$th ) {
        $no_urut = 'USR' . $th . '001';
        // $hasil = "mulai dari 1";
      } else {
        $jum = substr($no_temp,20,3);
        $jum++;
        if($jum <= 9) {
          $no_urut = 'USR' . $th . '00' . $jum;
        }else if($jum <= 99) {
          $no_urut = 'USR' . $th .'0' . $jum;
        }else if($jum <= 999) {
          $no_urut = 'USR' . $th . $jum;
        }
        // $hasil = "dilanjutkan";
      };
      return json_encode($no_urut);
    }

    public function ExportClient()
    {
      $clients = Client::select(['id', 'id_client', 'nama', 'dept', 'active_dir', 'password', 'email', 'remark', 'status', 'created_at', 'updated_at'])
                        ->where('status', '=', '1')
                        ->get();
      $clientsArray[]   = array('ID Client', 'Nama', 'Department', 'Active Directory', 'Password', 'Email', 'Remark', 'Status', 'Created At', 'Updated At');

      foreach ($clients as $client)
      {
        $clientsArray[] = array(
          'ID Client'        => $client->id_client,
          'Nama'             => $client->nama,
          'Department'       => $client->dept,
          'Active Directory' => $client->active_dir,
          'Password'         => $client->password,
          'Email'            => $client->email,
          'Remark'           => $client->remark,
          'Status'           => $client->status,
          'Created At'       => $client->created_at,
          'Updated At'       => $client->updated_at
        );
      };

      Excel::create('Data Client CSLI', function($excel) use ($clientsArray){
        $excel->setTitle('Data Client CSLI');
        $excel->sheet('Data Client', function($sheet) use ($clientsArray){
          $sheet->fromArray($clientsArray, null, 'A1', false, false);
        });
      })->download('xls');

    }

    public function getComboDept()
    {
      $idpc = SettingDept::select('settings_dept.id', 'settings_dept.dept')
                  ->orderBy('settings_dept.dept', 'ASC')
                  ->get();

      return json_encode($idpc);
    }

}
