<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="home/img/logo/logo.png" rel="icon">
  <title>Kasir - Login</title>
  <link href="home/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="home/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="home/css/ruang-admin.min.css" rel="stylesheet">

  <style>
    body {
      background: url('kasir12.jpg') no-repeat center center fixed;
      background-size: cover;
    }
  </style>
</head>

<body class="bg-gradient-login">
  <!-- Login Content -->
  <div class="container-login">
    <div class="row justify-content-center">
      <div class="col-xl-6 col-lg-12 col-md-9">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Login</h1>
                  </div>
                  <form class="user" method="POST" action="proses_login.php">
                    <div class="form-group">
                      <input type="text" class="form-control" id="username" name="username" aria-describedby="username"
                        placeholder="Enter your username">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control" id="exampleInputPassword" name="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
                        <input type="checkbox" class="custom-control-input" id="customCheck" required>
                        <label class="custom-control-label" for="customCheck">Remember
                          Me</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary btn-block">Login</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Login Content -->
  <script src="home/vendor/jquery/jquery.min.js"></script>
  <script src="home/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="home/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="home/js/ruang-admin.min.js"></script>
</body>

</html>