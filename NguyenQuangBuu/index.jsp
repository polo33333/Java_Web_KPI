<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Web KPI | Get Start</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="image/x-icon" href="images/K-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="css/index-css.css">
    <!-- Khai báo thư viện jQuery -->
    <script src="style/jquery.min.js"></script>
    <!-- Khai báo sử dụng thư viện javascript của bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!--Khai báo thư viện Font Awesome-->
    <link href="fa/font-awesome-4.6.3/css/font-awesome.css" rel="stylesheet">
    <style>
        .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 1024px;
      height:300px;
      margin-left: auto; margin-right: auto;
  }
        .login {
            position: fixed;
            right: 10px;
            top: 10px;
        }
        
        .Signup {
            position: fixed;
            right: 115px;
            top: 10px;
        }
        
        body {
            background-color: lightblue;
        }
        
        img {
            border-radius: 50%;
            width: 200px;
            height: 200px;
        }
    </style>
</head>

<body>
    <div class="Signup">
        <a class="btn btn-lg btn-success" href="sigup.jsp"><span class="glyphicon glyphicon-plus"></span> Sign up   
     </a>
    </div>
    <div class="login">
        <a class="btn btn-lg btn-danger" href="login.jsp"><span class="glyphicon glyphicon-user"></span> Login   
     </a>
    </div>
    <div class="jumbotron text-center">
        <img src="images/kpi.jpg">
        <h1>KPI WEB</h1>
        <p>Quản lý KPI một cách chuyên nghiệp!</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h3>Tổng quan</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
            </div>
            <div class="col-sm-4">
                <h3>Chi tiết</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
            </div>
            <div class="col-sm-4">
                <h3>Trợ giúp</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
            </div>
        </div>
    </div>
</body>

</html>