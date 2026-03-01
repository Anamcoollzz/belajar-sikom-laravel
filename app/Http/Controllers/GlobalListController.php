<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;

class GlobalListController extends Controller
{
  public function index()
  {
    return view('global-list.global-list');
  }

  public function getDataGlobal()
  {
    $meja = DB::table('tables')
              ->leftJoin('detailtables', 'tables.id_meja', '=', 'detailtables.id_meja')
              ->leftJoin('clients', 'tables.id_client', '=', 'clients.id_client')
              ->leftJoin('computers', 'detailtables.id_device', '=', 'computers.id_computer')
              ->join('settings_dept', 'clients.dept', '=', 'settings_dept.id' )
              ->select('tables.id_meja AS id_meja',
                       'clients.nama AS nama_client',
                       'settings_dept.dept AS department',
                       'clients.email AS email',
                       'clients.phone AS phone',
                       'computers.hostname AS hostname',
                       'computers.ip_address AS ip_address')
              ->get();
    $data   = [];
    $dept = '';
    // dd($meja);
    foreach($meja as $row){

      if ($row->department=='hrga') {
        $dept='HRD/GA Department';
      }else if ($row->department=='sls') {
        $dept='Sales';
      }else if ($row->department=='mng') {
        $dept='Manager';
      }else if ($row->department=='fin') {
        $dept='Finance & Accounting';
      }else if ($row->department=='gm') {
        $dept='General Manager/Management';
      }else if ($row->department=='it') {
        $dept='Information Technology';
      }else if ($row->department=='exp') {
        $dept='Export Documentation';
      }else if ($row->department=='imp') {
        $dept='Import Documentation';
      }else if ($row->department=='logagn') {
        $dept='Logistic/Agency';
      }else if ($row->department=='mktcomm') {
        $dept='Marketing Commercial';
      }else if ($row->department=='ecd') {
        $dept='Equipment Control Department';
      }else if ($row->department=='cs') {
        $dept='Customer Support';
      }else if ($row->department=='trf') {
        $dept='Traffic Department';
      }else if ($row->department=='lain') {
        $dept='Lain-Lain';
      };

      $data[]=[
        'id_meja'     => $row->id_meja,
        'nama'        => $row->nama_client,
        'dept'        => $dept,
        'hostname'    => $row->hostname,
        'ip_address'  => $row->ip_address,
        'phone_ext'   => $row->phone,
        'action'      => '<a href="javascript:void(0)" onclick="showForm(\''.$row->id_meja.'\')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp'
      ];
    }
    return Datatables::of($data)
                       ->rawColumns(['action'])
                       ->make(true);
  }

  public function getComboPC()
  {
    $idpc = DB::table('computers')
                ->leftjoin('detailtables', 'computers.id_computer', '=', 'detailtables.id_device')
                ->whereNull('detailtables.id_device')
                ->where('computers.status', '=', '1')
                ->select('computers.id_computer', 'computers.hostname')
                ->orderBy('computers.hostname', 'ASC')
                ->get();

    return json_encode($idpc);
  }

  public function getComboClient()
  {
    $idclient = DB::table('clients')
                ->leftjoin('tables', 'clients.id_client', '=', 'tables.id_client')
                ->whereNull('tables.id_client')
                ->where('clients.status', '=', '1')
                ->select('clients.id_client', 'clients.nama')
                ->orderBy('clients.nama', 'ASC')
                ->get();

    return json_encode($idclient);
  }

  public function getDataPC(Request $request)
  {
    $idmeja = $request->get('id_meja');
    $detailpc = DB::table('computers')
              ->join('detailtables', 'computers.id_computer', '=', 'detailtables.id_device')
              ->where('detailtables.id_meja', '=', $idmeja)
              ->select('computers.id_computer',
                       'computers.hostname',
                       'computers.ip_address',
                       'computers.status')
              ->orderBy('computers.id_computer', 'DESC')
              ->get();

    $data   = [];

    foreach($detailpc as $row)
    {
      if ($row->status==1) {
        $status = '<span class="label label-success arrowed">Active</span>';
      }elseif ($row->status==0) {
        $status = '<span class="label label-danger arrowed">Deleted</span>';
      }elseif ($row->status==2) {
        $status = '<span class="label label-warning arrowed">Deactivated</span>';
      }

      $data[]=  [
                  'id_computer' => $row->id_computer,
                  'hostname'        => $row->hostname,
                  'ip_address'        => $row->ip_address,
                  'status'      => $status,
                  'action'      => '<a href="javascript:void(0)" onclick="rmvDevice(\''.$row->id_computer.'\')" class="btn btn-danger btn-xs" title="Show Data"><i class="glyphicon glyphicon-trash"></i></a>&nbsp'
                ];

    }

    return json_encode($data);

  }

  public function getDataClient(Request $request)
  {
    $idmeja = $request->get('id_meja');
    $detailclient = DB::table('clients')
                  ->join('tables', 'clients.id_client', '=', 'tables.id_client')
                  ->where('tables.id_meja', '=', $idmeja)
                  ->select('tables.id_meja',
                           'clients.id_client',
                           'clients.nama',
                           'clients.dept',
                           'clients.status')
                  ->get();
    $data   = [];
    $dept = '';

    foreach($detailclient as $row)
    {

      if ($row->dept=='hrga') {
        $dept='HRD/GA Department';
      }else if ($row->dept=='sls') {
        $dept='Sales';
      }else if ($row->dept=='mng`') {
        $dept='Manager';
      }else if ($row->dept=='fin') {
        $dept='Finance & Accounting';
      }else if ($row->dept=='gm') {
        $dept='General Manager/Management';
      }else if ($row->dept=='it') {
        $dept='Information Technology';
      }else if ($row->dept=='exp') {
        $dept='Export Documentation';
      }else if ($row->dept=='imp') {
        $dept='Import Documentation';
      }else if ($row->dept=='logagn') {
        $dept='Logistic/Agency';
      }else if ($row->dept=='mktcomm') {
        $dept='Marketing Commercial';
      }else if ($row->dept=='ecd') {
        $dept='Equipment Control Department';
      }else if ($row->dept=='cs') {
        $dept='Customer Support';
      }else if ($row->dept=='trf') {
        $dept='Traffic Department';
      }else if ($row->dept=='lain') {
        $dept='Lain-Lain';
      };

      if ($row->status==1) {
        $status = '<span class="label label-success arrowed">Active</span>';
      }elseif ($row->status==0) {
        $status = '<span class="label label-danger arrowed">Deleted</span>';
      }elseif ($row->status==2) {
        $status = '<span class="label label-warning arrowed">Deactivated</span>';
      }

      $data[]=
                [
                  'id_client'   => $row->id_client,
                  'nama'        => $row->nama,
                  'dept'        => $dept,
                  'status'      => $status,
                  'action'      => '<a href="javascript:void(0)" onclick="rmvClient(\''.$row->id_meja.'\')" class="btn btn-danger btn-xs" title="Hapus Client"><i class="glyphicon glyphicon-trash"></i></a>&nbsp'
                ];
    }
    return json_encode($data);
  }

  public function rmvClient(Request $request, $id)
  {
    $datenow     = date("Y-m-d H:i:s");
    $rmvClient   =  DB::table('tables')
                   ->where('id_meja', $id)
                   ->update([
                                'id_client'   => NULL,
                                'updated_at'  => $datenow
                           ]);

    return ($rmvClient);
  }

  public function rmvDevice(Request $request)
  {
    $datenow     = date("Y-m-d H:i:s");
    $rmvDevice   =  DB::table('detailtables')
                   ->where('id_meja', $request->get('id_meja'))
                   ->where('id_device', $request->get('id_device'))
                   ->delete();

    return ($rmvDevice);
  }

  public function udtClient(Request $request, $id)
  {
    $datenow     = date("Y-m-d H:i:s");
    $rmvClient   =  DB::table('tables')
                   ->where('id_meja', $id)
                   ->update([
                                'id_client'   => $request->get('id_client'),
                                'updated_at'  => $datenow
                           ]);

    return ($rmvClient);
  }

  public function udtDevice(Request $request)
  {
    $datenow     = date("Y-m-d H:i:s");
    $udtDevice   = DB::table('detailtables')->insert(
                                                array('id_meja'     => $request->get('id_meja'),
                                                      'id_device'   => $request->get('id_device'),
                                                      'created_at'  => $datenow,
                                                      'updated_at'  => $datenow)
                                              );
    if ($udtDevice) {
      return ("true");
    }

  }

}
