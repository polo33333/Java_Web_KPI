
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<title>KPI Web | Đăng nhập</title>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
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
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title">Đăng nhập vào KPI Web</h1>
                <div class="account-wall">
                    <img class="profile-img" src="images/user.jpg">
                    <form class="form-signin"  method="POST" action="doLogin"> 
                        <input class="form-control" type="text" name="userName" value= "${user.userName}" placeholder="Username"  required autofocus>
                        <input class="form-control" type="password" name="password" value= "${user.password}" placeholder="Password" required>
                        <select class="form-control" name="roleid">
                        <option value="0">Chức vụ</option>
                        <option value="1">Giảng viên</option>
                        <option value="2">Trưởng bộ môn</option>
                        <option value="3">Trưởng Khoa</option>
                        <option value="4">Phòng TCCB</option>
                        <option value="5">Hiệu Trưởng</option>
                        <option value="6">Admin</option>
                    </select>
                    	<input class="btn btn-lg btn-primary btn-block" type="submit" value="Đăng nhập"> 
                    <label class="checkbox pull-left">
                        <input type="checkbox" name="rememberMe" value= "Y">
                        Ghi nhớ tôi !
                     </label>
                        <a href="#" class="pull-right need-help">Trợ giúp </a><span class="clearfix"></span>
                    </form>
                </div>
                <a href="signup.jsp" class="text-center new-account">Tạo tài khoản </a>
            </div>
        </div>
    </div>
</body>

</html>