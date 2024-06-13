
@section('content')

<div class="w-50 center border rounded px-3 py -3 mx auto">
    <h1>Login</h1>
    <form action = "login" methode ="post">
        @csrf
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="from-control">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="from-control">
        </div>
        <div class="mb-3 d-grid">
            <button name="submit" type="submit" class="btn btn-primary">Submit</button>
        </div>



@endsection