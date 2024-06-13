<?php $data = session('key'); ?>
<aside id="left-panel" class="left-panel" style="background: 	#F0F8FF;">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu"
                aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
           
            <!-- <a class="navbar-brand hidden" href=""><i class="menu-icon fa fa-meh-o"></i></a> -->
        </div>

        <div id="main-menu" class="main-menu collapse navbar-collapse" style="background: 	#F0F8FF;" >
  <ul class="nav navbar-nav">
    <li id="home" style="display: none">
      <a href="{{ url('home') }}" style="color: blue;"> <Home class="menu-icon fa fa-home" style="color: blue;">Home</i></a>
    </li>
    <li id="user" style="display: none">
      <a href="{{ url('user') }}" style="color: blue;"> <i class="menu-icon fa fa-users" style="color: blue;">User</i></a>
    </li>
    <li id="mahasiswa" style="display: none">
      <a href="{{ url('mahasiswa') }}" style="color: blue;"> <i class="menu-icon fa fa-users" style="color: blue;">Mahasiswa</i></a>
    </li>
    <li id="kriteria" style="display: none">
      <a href="{{ url('kriteria') }}" style="color: blue;"> <i class="menu-icon fa fa-bars" style="color: blue;">kriteria</i></a>
    </li>
    <li id="sub1" style="display: none">
      <a href="{{ url('sub1') }}" style="color: blue;"> <i class="menu-icon fa fa-bars" style="color: blue;">sub1</i></a>
    </li>
    <li id="penilaian" style="display: none">
      <a href="{{ url('penilaian') }}" style="color: blue;"> <i class="menu-icon fa fa-check-square" style="color: blue;">Penilaian</i></a>
    </li>
    <li id="proses" style="display: none">
      <a href="{{ url('proses') }}" style="color: blue;"> <i class="menu-icon fa fa-gears" style="color: blue; w-5">Proses spk</i></a>
    </li>
   
  </ul>
</div>


</aside>

<!-- NAVBAR -->



    <div id="right-panel" class="right-panel">


        <header id="header" class="header"style="background:blue;">
            <div class="header-menu">
                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left"style="color:white">
                        <h4>Sistem Pendukung Keputusan</h4>
                        
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="{{ asset('style/images/logo_org.png') }}">
                        </a>
                        <div class="user-menu dropdown-menu">
                        

                            <a class="nav-link" href="{{ url('logout') }}"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                    <!-- <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="language" aria-haspopup="true"
                            aria-expanded="true">
                            <i class="flag-icon flag-icon-id"></i> -->
                        </a>
                    </div>



            </div>


            <script>
                var data = <?php echo json_encode($data); ?>;

                if (data == '' || data == null) {
                    window.location.href = "/login";
                }
                data.forEach(element => {
                    if (element["role"] == "admin") {
                        $("#home").show();
                        $("#user").show();
                        $("#mahasiswa").show();
                        $("#kriteria").show();
                        $("#sub1").show();
                        $("#penilaian").show();
                        $("#proses").show();
                        
                    } else {
                        $("#home").show();
                        $("#penilaian").show();
                    }
                });
            </script>
