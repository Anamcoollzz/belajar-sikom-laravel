<?php

namespace App\Http\Controllers;

use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\Computer;
use App\SettingProcessor;
use App\SettingOs;
use App\SettingModel;
use Auth;
use Excel;

class DataComputerController extends Controller
{
    public function index()
    {
      return view('mst-datapcs.datapcs');
    }

    public function getDataPC()
    {
      $pc = Computer  ::select(['id', 'id_computer', 'hostname', 'ip_address', 'proccessor', 'ram', 'hardisk', 'os', 'model', 'serial', 'remark', 'status', 'created_at', 'updated_at'])->where(\DB::raw('substr(id_computer, 1, 3)'), '=' , 'PC-')->get();
      $data   = [];

      foreach($pc as $row){

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
          'id_computer'   => $row->id_computer,
          'hostname'      => $row->hostname,
          'ip_address'    => $row->ip_address,
          'proccessor'    => $row->proccessor,
          'ram'           => $row->ram,
          'hardisk'       => $row->hardisk,
          'os'            => $row->os,
          'model'         => $row->model,
          'serial'        => $row->serial,
          'remark'        => $row->remark,
          'status'        => $status,
          'action'        => $action
        ];
      }

      return Datatables::of($data)
                         ->rawColumns(['status', 'action'])
                         ->make(true);
    }

    public function getIdPC()
    {
      $no_temp = Computer::select('id_computer')->orderBy('id_computer', 'DESC')->get();
      $th 			= date("y");
      $thbefore	= substr($no_temp,20,2);
      if ($no_temp == '' OR $thbefore<$th ) {
        $no_urut = 'PC-' . $th . '001';
      } else {
        $jum = substr($no_temp,22,3);
        $jum++;
        if($jum <= 9) {
          $no_urut = 'PC-' . $th . '00' . $jum;
        }else if($jum <= 99) {
          $no_urut = 'PC-' . $th .'0' . $jum;
        }else if($jum <= 999) {
          $no_urut = 'PC-' . $th . $jum;
        }
      };
      return json_encode($no_urut);
    }

    public function storeDataPC(Request $request)
    {
      $data = [
        'id_computer'  =>  $request['id_pc'],
        'hostname'     =>  $request['hostname'],
        'ip_address'   =>  $request['ip'],
        'proccessor'   =>  $request['proccessor'],
        'ram'          =>  $request['ram'],
        'ram_type'     =>  $request['ram_type'],
        'hardisk'      =>  $request['hardisk'],
        'hardisk_type' =>  $request['hardisk_type'],
        'model'        =>  $request['model'],
        'serial'       =>  $request['serial'],
        'status'       =>  $request['status'],
        'os'           =>  $request['os'],
        'remark'       =>  $request['remark']
      ];
      //
      return Computer::create($data);
    }

    public function editDataPC($id)
    {
      $pc = Computer::find($id);
      return $pc;
    }

    public function updateDataPC(Request $request, $id)
    {

      $pc   = Computer::find($id);
      $pc->hostname     = $request->get('hostname');
      $pc->ip_address   = $request->get('ip');
      $pc->proccessor   = $request->get('proccessor');
      $pc->ram          = $request->get('ram');
      $pc->ram_type     = $request->get('ram_type');
      $pc->hardisk      = $request->get('hardisk');
      $pc->hardisk_type = $request->get('hardisk_type');
      $pc->model        = $request->get('model');
      $pc->serial       = $request->get('serial');
      $pc->os           = $request->get('os');
      $pc->remark       = $request->get('remark');
      $pc->save();

      return $pc;
    }

    public function updateDataPC_status(Request $request, $id)
    {
      $pc            = Computer::find($id);
      $pc->status    = $request->get('status');
      $pc->save();

      return $pc;
    }

    public function ExportPC()
    {
      $clients = Computer::select(['id', 'id_computer', 'hostname', 'ip_address', 'proccessor', 'ram', 'hardisk', 'os', 'model', 'serial', 'remark', 'status', 'created_at', 'updated_at'])
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

    public function getComboProcessor()
    {
      $idprocessor = SettingProcessor::select('settings_processor.id', 'settings_processor.type')
                  ->orderBy('settings_processor.type', 'ASC')
                  ->get();

      return json_encode($idprocessor);
    }

    public function getComboOs()
    {
      $idos = SettingOs::select('settings_os.id', 'settings_os.os')
                  ->orderBy('settings_os.os', 'ASC')
                  ->get();

      return json_encode($idos);
    }

    public function getComboModel()
    {
      $idmodel = SettingModel::select('settings_model.id', 'settings_model.model')
                  ->orderBy('settings_model.model', 'ASC')
                  ->get();

      return json_encode($idmodel);
    }
}
