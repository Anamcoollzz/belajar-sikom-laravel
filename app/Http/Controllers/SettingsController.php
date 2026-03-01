<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;
use Illuminate\Http\Request;
use App\SettingDept;
use App\SettingProcessor;
use App\SettingOs;
use App\SettingModel;

class SettingsController extends Controller
{

    public function index()
    {
      return view('settings.menu');
    }

    public function deptGet()
    {
      $dept = DB::table('settings_dept')
                ->select('settings_dept.id AS id',
                         'settings_dept.dept AS dept',
                         'settings_dept.comments AS comments')
                ->get();
      $data   = [];

      foreach($dept as $row){
        $data[]=[
          'dept'     => $row->dept,
          'comments' => $row->comments,
          'action'   => '<a href="javascript:void(0)" onclick="showDataDept(\''.$row->id.'\')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp'.
                        '<a href="javascript:void(0)" onclick="deleteDataDept(\''.$row->id.'\')" class="btn btn-danger btn-xs" title="Delete Data"><i class="glyphicon glyphicon-trash"></i></a>&nbsp'
        ];
      }

      return Datatables::of($data)
                         ->rawColumns(['action'])
                         ->make(true);
    }

    public function deptStore(Request $request)
    {
      $data = [
        'dept'        =>  $request['dept'],
        'comments'    =>  $request['comments'],
      ];

      return SettingDept::create($data);

    }

    public function deptEdit($id)
    {
      $data = SettingDept::find($id);
      return $data;
    }

    public function deptUpdate(Request $request, $id)
    {
      $data   = SettingDept::find($id);
      $data->dept       = $request->get('dept');
      $data->comments   = $request->get('comments');
      $data->save();

      return $data;
    }

    public function deptDestroy(Request $request)
    {
      $data   = SettingDept::find($request->input('id'));

      if($data->delete())
        {
          return $data;
        };

    }

    public function processorGet()
    {
      $dept = DB::table('settings_processor')
                ->select('settings_processor.id AS id',
                         'settings_processor.type AS type',
                         'settings_processor.comments AS comments')
                ->get();
      $data   = [];

      foreach($dept as $row){
        $data[]=[
          'type'     => $row->type,
          'comments' => $row->comments,
          'action'   => '<a href="javascript:void(0)" onclick="showDataProcessor(\''.$row->id.'\')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp'.
                        '<a href="javascript:void(0)" onclick="deleteDataProcessor(\''.$row->id.'\')" class="btn btn-danger btn-xs" title="Delete Data"><i class="glyphicon glyphicon-trash"></i></a>&nbsp'
        ];
      }

      return Datatables::of($data)
                         ->rawColumns(['action'])
                         ->make(true);
    }

    public function processorStore(Request $request)
    {
      $data = [
        'type'        =>  $request['tipe'],
        'comments'    =>  $request['comments'],
      ];

      return SettingProcessor::create($data);

    }

    public function processorEdit($id)
    {
      $data = SettingProcessor::find($id);
      return $data;
    }

    public function processorUpdate(Request $request, $id)
    {
      $data   = SettingProcessor::find($id);
      $data->type       = $request->get('tipe');
      $data->comments   = $request->get('comments');
      $data->save();

      return $data;
    }

    public function processorDestroy(Request $request)
    {
      $data   = SettingProcessor::find($request->input('id'));

      if($data->delete())
        {
          return $data;
        };

    }

    public function osGet()
    {
      $dept = DB::table('settings_os')
                ->select('settings_os.id AS id',
                         'settings_os.os AS os',
                         'settings_os.comments AS comments')
                ->get();
      $data   = [];

      foreach($dept as $row){
        $data[]=[
          'os'     => $row->os,
          'comments' => $row->comments,
          'action'   => '<a href="javascript:void(0)" onclick="showDataOs(\''.$row->id.'\')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp'.
                        '<a href="javascript:void(0)" onclick="deleteDataOs(\''.$row->id.'\')" class="btn btn-danger btn-xs" title="Delete Data"><i class="glyphicon glyphicon-trash"></i></a>&nbsp'
        ];
      }

      return Datatables::of($data)
                         ->rawColumns(['action'])
                         ->make(true);
    }

    public function osStore(Request $request)
    {
      $data = [
        'os'        =>  $request['os'],
        'comments'    =>  $request['comments'],
      ];

      return SettingOs::create($data);

    }

    public function osEdit($id)
    {
      $data = SettingOs::find($id);
      return $data;
    }

    public function osUpdate(Request $request, $id)
    {
      $data   = SettingOs::find($id);
      $data->os       = $request->get('os');
      $data->comments   = $request->get('comments');
      $data->save();

      return $data;
    }

    public function osDestroy(Request $request)
    {
      $data   = SettingOs::find($request->input('id'));

      if($data->delete())
        {
          return $data;
        };
    }

    public function modelGet()
    {
      $dept = DB::table('settings_model')
                ->select('settings_model.id AS id',
                         'settings_model.model AS model',
                         'settings_model.comments AS comments')
                ->get();
      $data   = [];

      foreach($dept as $row){
        $data[]=[
          'model'     => $row->model,
          'comments' => $row->comments,
          'action'   => '<a href="javascript:void(0)" onclick="showDataModel(\''.$row->id.'\')" class="btn btn-primary btn-xs" title="Show Data"><i class="glyphicon glyphicon-eye-open"></i></a>&nbsp'.
                        '<a href="javascript:void(0)" onclick="deleteDataModel(\''.$row->id.'\')" class="btn btn-danger btn-xs" title="Delete Data"><i class="glyphicon glyphicon-trash"></i></a>&nbsp'
        ];
      }

      return Datatables::of($data)
                         ->rawColumns(['action'])
                         ->make(true);
    }

    public function modelStore(Request $request)
    {
      $data = [
        'model'        =>  $request['model'],
        'comments'    =>  $request['comments'],
      ];

      return SettingModel::create($data);

    }

    public function modelEdit($id)
    {
      $data = SettingModel::find($id);
      return $data;
    }

    public function modelUpdate(Request $request, $id)
    {
      $data   = SettingModel::find($id);
      $data->model       = $request->get('model');
      $data->comments   = $request->get('comments');
      $data->save();

      return $data;
    }

    public function modelDestroy(Request $request)
    {
      $data   = SettingModel::find($request->input('id'));

      if($data->delete())
        {
          return $data;
        };
    }
}
