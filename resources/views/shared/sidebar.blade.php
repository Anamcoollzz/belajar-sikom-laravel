<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- Sidebar user panel (optional) -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="adminlte/dist/img/avatar.png" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>{{ Auth::user()->name }}</p>
        <!-- Status -->
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>

    <!-- search form (Optional) -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
            </button>
          </span>
      </div>
    </form>
    <!-- /.search form -->

    <!-- Sidebar Menu -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="treeview" >
        <a href="javascript:void(0)"><i class="fa fa-link"></i> <span>Data Master</span>
          <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <li class=""><a href="{{ url('/client/')}}"><i class="fa fa-group"></i> <span>Data Clients CSLI</span></a></li>
            <li class=""><a href="{{ url('/computer')}}"><i class="fa fa-desktop"></i> <span>Data PC</span></a></li>
            @if(Auth::user()->role === 1)
            <li class=""><a href="{{ url('/server')}}"><i class="fa fa-server"></i> <span>Data Server</span></a></li>
            @endif
        </ul>
      </li>

      <li class=""><a href="{{ url('/globallist')}}"><i class="fa fa-globe"></i> <span>Global List</span></a></li>
      <li class=""><a href="{{ url('/setting')}}"><i class="fa fa-gears"></i> <span>Settings</span></a></li>
      <!-- <li class=""><a href="{{ url('/dataservers')}}"><i class="fa fa-server"></i> <span>Data Server Virtual</span></a></li>
      <li class="treeview">
        <a href="#"><i class="fa fa-link"></i> <span>Multilevel</span>
          <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="#">Link in level 2</a></li>
          <li><a href="#">Link in level 2</a></li>
        </ul>
      </li> -->
    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>
