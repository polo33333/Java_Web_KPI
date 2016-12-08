
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>KPI Web | Đăng nhập</title>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="image/x-icon" href="images/K-52.ico" rel="shortcut icon" />
    <!-- Khai báo thư viện jQuery -->
    <script src="style/jquery.min.js"></script>
    <!-- Khai báo sử dụng thư viện javascript của bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!--Khai báo thư viện Font Awesome-->
    <link href="fa/font-awesome-4.6.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/Login.css">
</head>


<body>
    <div class="container">
    <form action="Login" method="post">
        <div class="row">
            <div class="col-sm-9 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title">Đăng nhập vào KPI Web</h1>
                <div class="account-wall">
                    <img class="profile-img" src="images/user.jpg">
                    <form class="form-signin">
                        <input type="text" name="taikhoan" value="" class="form-control" placeholder="Email" required autofocus>
                        <input type="password" name="matkhau" value="" class="form-control" placeholder="Password" required>
                        <select class="form-control" name="chucvu">
                        <option value="Month">Chức vụ</option>
                        <option value="ht">Hiệu trưởng</option>
                        <option value="tk">Trưởng khoa</option>
                        <option value="tbm">Trưởng bộ môn</option>
                        <option value="gv">Giảng viên</option>
                        <option value="ad">Admin</option>
                        <option value="tccb">P.Tổ Chức Cán Bộ</option>
                        
                    </select>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập  </button>
                   
                    <label class="checkbox pull-left">
                        <input type="checkbox" value="remember-me">
                        Ghi nhớ tôi !
                     </label>
                        <a href="#" class="pull-right need-help">Trợ giúp </a>
                        <span class="clearfix"></span>
                    </form>
                </div>
        </form>
    </div>
</body>

</html>