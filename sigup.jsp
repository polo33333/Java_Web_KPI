<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="UTF-8">
    <title>KPI Web | Đăng ký</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="image/x-icon" href="images/K-52.ico" rel="shortcut icon" />
    <!-- Khai báo thư viện jQuery -->
    <script src="style/jquery.min.js"></script>
    <!-- Khai báo sử dụng thư viện javascript của bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!--Khai báo thư viện Font Awesome-->
    <link href="fa/font-awesome-4.6.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/Signup.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
                <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> Đăng Ký !</legend>
                <form action="#" method="post" class="form" role="form">
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <input class="form-control" name="firstname" placeholder="Họ" type="text" required autofocus />
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <input class="form-control" name="lastname" placeholder="Tên" type="text" required />
                        </div>
                    </div>
                    <input class="form-control" name="youremail" placeholder="Email" type="email" />
                    <input class="form-control" name="reenteremail" placeholder="Xác nhận lại Email" type="email" />
                    <input class="form-control" name="password" placeholder="Mật khẩu" type="password" />
                    <select class="form-control">
                        <option value="Month">Chức vụ</option>
                        <option value="ht">Hiệu trưởng</option>
                        <option value="tk">Trưởng khoa</option>
                        <option value="tbm">Trưởng bộ môn</option>
                        <option value="gv">Giảng viên</option>
                    </select>
                    <label for="">
                Ngày sinh</label>
                    <div class="row">
                        <div class="col-xs-4 col-md-4">
                            <select class="form-control">
                        <option value="Month">Tháng</option>
                    </select>
                        </div>
                        <div class="col-xs-4 col-md-4">
                            <select class="form-control">
                        <option value="Day">Ngày</option>
                    </select>
                        </div>
                        <div class="col-xs-4 col-md-4">
                            <select class="form-control">
                        <option value="Year">Năm</option>
                    </select>
                        </div>
                    </div>
                    <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox1" value="male" />
                Nữ
            </label>
                    <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox2" value="female" />
                Nam
            </label>
                    <br />
                    <br />
                    <button class="btn btn-lg btn-primary btn-block" type="submit">
                Đăng Ký</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>