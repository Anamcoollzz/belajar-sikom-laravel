<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\Server;
use App\VirtualServer;
use App\SettingProcessor;
use App\SettingOs;
use App\SettingModel;

class DataServerController extends Controller
{
  public function index()
  {
    return view('mst-dataservers.dataservers');
  }

  public function getIdServer(Request $request)
  {
    $status = $request->get('vir_status');
    if ($status == 'vir-0') {
      $code = 'SRV-';
      $no_temp = Server::select('id_server')->orderBy('id_server', 'DESC')->take(1)->get();
    }else{
      $code = 'VIR-';
      $no_temp = VirtualServer::select('id_server')->orderBy('id_server', 'DESC')->take(1)->get();
    };

    if ($no_temp == '[]') {
      $no_urut = $code . '01';
    } else {
      $jum = substr($no_temp,19,-3);
      $jum++;
      if($jum <= 9) {
        $no_urut = $code. '0' . $jum;
      }else if($jum <= 99) {
        $no_urut = $code . $jum;
      }
    };
    return json_encode($no_urut);
  }

  public function getCmbIdServer()
  {
    $id = Server::select('id_server')->orderBy('id_server', 'DESC')->get();
    return json_encode($id);
  }

  public function storeDataServer(Request $request)
  {
    $status = $request->get('vir_status');

    $data = [
      'id_server'    =>  $request['id_server'],
      'name'         =>  $request['nm_server'],
      'vm_on'        =>  $request['vm_on'],
      'hostname'     =>  $request['hostname'],
      'ip_address'   =>  $request['ip_addr'],
      'proccessor'   =>  $request['proccessor'],
      'ram'          =>  $request['ram'],
      'ram_type'     =>  $request['ram_type'],
      'hardisk'      =>  $request['hardisk'],
      'hardisk_type' =>  $request['hardisk_type'],
      'serial'       =>  $request['serial'],
      'password'     =>  $request['pass'],
      'model'        =>  $request['model'],
      'status'       =>  $request['status'],
      'os'           =>  $request['os'],
      'type'         =>  $request['type_server'],
      'remark'       =>  $request['remark']
    ];

    if ($status == 'vir-0') {
      return Server::create($data);
    }else{
      return VirtualServer::create($data);
    };
  }

  public function getDataServer()
  {
      $server = DB::table('servers')->select('id',
                        'id_server',
                        'name',
                        'hostname',
                        'ip_address',
                        'ram',
                        'hardisk',
                        'os',
                        'password',
                        'remark',
                        'status',
                        'created_at',
                        'updated_at');
      $virtualserver = DB::table('virtualservers')->select(['id',
                        'id_server',
                        'name',
                        'hostname',
                        'ip_address',
                        'ram',
                        'hardisk',
                        'os',
                        'password',
                        'remark',
                        'status',
                        'created_at',
                        'updated_at'])
                ->union($server)
                ->get();

    $data   = [];

    foreach($virtualserver as $row){
      if ($row->status==1) {
        $status = '<span class="label label-success arrowed">Active</span>';
      }elseif ($row->status==0) {
        $status = '<span class="label label-danger arrowed">Deleted</span>';
      }elseif ($row->status==2) {
        $status = '<span class="label label-warning arrowed">Deactivated</span>';
      };

      $idsrv  = substr($row->id_server, 0, 3);
      if ($idsrv == 'VIR') {
        $action = '<a href="javascript:void(0)" onclick="editFormVir('.$row->id.')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>';
      }else{
        $action = '<a href="javascript:void(0)" onclick="showFormList('.$row->id.')" class="btn btn-info btn-xs show_detail" title="Show Detail Jika Virtual Machine"><i class="glyphicon glyphicon-th-list"></i></a>&nbsp'.
                  '<a href="javascript:void(0)" onclick="editForm('.$row->id.')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>';
      };
      $data[]=[
        'id_server'     => $row->id_server,
        'name'          => $row->name,
        'hostname'      => $row->hostname,
        'ip_address'    => $row->ip_address,
        'ram'           => $row->ram,
        'os'            => $row->os,
        'hardisk'       => $row->hardisk,
        'status'        => $status,
        'action'        => $action,
        'remark'        => $row->remark
      ];
    }

    return Datatables::of($data)
                       ->rawColumns(['status', 'action'])
                       ->make(true);
  }

  public function editDataServer($id)
  {
    $server = Server::find($id);
    return $server;
  }

  public function editDataVirServer($id)
  {
    $server = VirtualServer::find($id);
    return $server;
  }

  public function updateDataServer_status(Request $request, $id)
  {
    $isVirtual  = $request->get('isVirtual');

    if ($isVirtual == '0') {
      $server            = Server::find($id);
      $server->status    = $request->get('status');
      $server->save();

      return $server;
    }else {
      $server            = VirtualServer::find($id);
      $server->status    = $request->get('status');
      $server->save();

      return $server;
    }

  }

  public function updateDataServer(Request $request, $id)
  {
    $isVirtual  = $request->get('isVirtual');

    if ($isVirtual == '0') {
      $server   = Server::find($id);
      $server->name       = $request->get('nm_server');
      $server->hostname   = $request->get('hostname');
      $server->ip_address = $request->get('ip_addr');
      $server->proccessor = $request->get('proccessor');
      $server->ram        = $request->get('ram');
      $server->hardisk    = $request->get('hardisk');
      $server->model      = $request->get('model');
      $server->serial     = $request->get('serial');
      $server->os         = $request->get('os');
      $server->password   = $request->get('pass');
      $server->remark     = $request->get('remark');
      $server->save();

      return $server;
    }else {
      $server   = VirtualServer::find($id);
      $server->vm_on      = $request->get('vm_on');
      $server->name       = $request->get('nm_server');
      $server->hostname   = $request->get('hostname');
      $server->ip_address = $request->get('ip_addr');
      $server->ram        = $request->get('ram');
      $server->hardisk    = $request->get('hardisk');
      $server->password   = $request->get('pass');
      $server->os         = $request->get('os');
      $server->remark     = $request->get('remark');
      $server->save();

      return $server;
    }

  }

  public function getListVirServer(Request $request)
  {
    $id = $request->get('id');

    $id_vir = Server::select('id_server')->where('id', '=', $id)->first();

    $data   = VirtualServer::select('id_server', 'name', 'ip_address', 'os', 'ram', 'hardisk', 'status')->where('vm_on', '=', $id_vir->id_server)->get();

    return json_encode($data);
  }

  public function getCmbProcessor()
  {
    $id = SettingProcessor::select('type')->orderBy('type', 'DESC')->get();
    return json_encode($id);
  }

  public function getCmbOs()
  {
    $id = SettingOs::select('os')->orderBy('os', 'DESC')->get();
    return json_encode($id);
  }

  public function getCmbModel()
  {
    $id = SettingModel::select('model')->orderBy('model', 'DESC')->get();
    return json_encode($id);
  }

  public function ExportServer()
  {
    $clients = Server::select(['id', 'id_computer', 'hostname', 'ip_address', 'proccessor', 'ram', 'hardisk', 'os', 'model', 'serial', 'remark', 'status', 'created_at', 'updated_at'])
                      ->where('status', '=', '1')
                      ->get();
    $clientsArray[]   = array('ID Computer', 'Hostname', 'IP Address', 'Proccessor', 'RAM', 'Hardisk', 'OS', 'Model', 'Serial', 'Remark', 'Status', 'Created At', 'Updated At');

    foreach ($clients as $client)
    {
      $clientsArray[] = array(
        'ID Computer'     => $client->id_computer,
        'Hostname'        => $client->hostname,
        'IP Address'      => $client->ip_address,
        'Proccessor'      => $client->proccessor,
        'RAM'             => $client->ram,
        'Hardisk'         => $client->hardisk,
        'OS'              => $client->os,
        'Model'           => $client->model,
        'Serial'          => $client->serial,
        'Remark'          => $client->remark,
        'Status'          => $client->status,
        'Created At'      => $client->created_at,
        'Updated At'      => $client->updated_at
      );
    };

    Excel::create('Data Komputer CSLI', function($excel) use ($clientsArray){
      $excel->setTitle('Data Komputer CSLI');
      $excel->sheet('Data Komputer', function($sheet) use ($clientsArray){
        $sheet->fromArray($clientsArray, null, 'A1', false, false);
      });
    })->download('xls');

  }

}
