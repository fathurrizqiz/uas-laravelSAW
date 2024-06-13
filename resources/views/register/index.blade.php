<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="{{ asset('style/assets/css/normalize.css') }}">
    <link rel="stylesheet" href="{{ asset('style/assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('style/assets/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('style/assets/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('style/assets/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('style/assets/css/cs-skin-elastic.css') }}">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="{{ asset('style/assets/scss/style.css') }}">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>

<body class="bg-blue">
    <div class="container">
        <div class="login-content">
            <div class="login-logo">
                
            </div>
            <div class="login-form">
                <form action="{{ url ('register')}}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Username</label>
                        <input type="username" class="form-control" name="name" 
                            placeholder="username">
                    </div>
                    <div class="form-group">
                        <label>email</label>
                        <input type="email" class="form-control" name="email"
                            placeholder="email">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <a href="{{url ('auth/google')}}" class="text-decoration-none text-dark">
                        <div class="d-flex align-items-center shadow-sm btnGoogle">
                            <div class= "ms-2 fw-bold">
                                Login with Google account
                            </div>
                        </div>
                    </a>

                    <!-- <form action="{{ route('auth.redirect') }}" method="GET">
                        @csrf
                        <button type="submit">Login With Google</button>
                    </form> -->
                    
               
                    <br>
                    <br>
                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Register</button>
                    
                </form>
            </div>
        </div>
    </div>
    <script src="{{ asset('style/assets/js/vendor/jquery-2.1.4.min.js') }}"></script>
    <script src="{{ asset('style/assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('style/assets/js/plugins.js') }}"></script>
    <script src="{{ asset('style/assets/js/main.js') }}"></script>
</body>

</html>
