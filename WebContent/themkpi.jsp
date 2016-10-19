<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>Web KPI | Quản lý KPI | Tạo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="css/taokpi-css.css">
    <!-- Khai báo thư viện jQuery -->
    <script src="style/jquery.min.js"></script>
    <!-- Khai báo sử dụng thư viện javascript của bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!--Khai báo thư viện Font Awesome-->
    <link href="fa/font-awesome-4.6.3/css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="/canvasjs/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="canvasjs/jquery.canvasjs.min.js"></script>
    <script type="text/javascript">
        $(function() {
            //Better to construct options first and then pass it as a parameter
            var options = {
                title: {
                    text: "Biểu đồ đường"
                },
                animationEnabled: true,
                data: [{
                    type: "spline", //change it to line, area, column, pie, etc
                    dataPoints: [{
                        x: 10,
                        y: 10
                    }, {
                        x: 20,
                        y: 12
                    }, {
                        x: 30,
                        y: 8
                    }, {
                        x: 40,
                        y: 14
                    }, {
                        x: 50,
                        y: 6
                    }, {
                        x: 60,
                        y: 24
                    }, {
                        x: 70,
                        y: -4
                    }, {
                        x: 80,
                        y: 10
                    }]
                }]
            };

            $("#chartContainer").CanvasJSChart(options);

        });
    </script>
    <!--css-->
    <style>
        
       
    </style>
</head>

<body>
    <div id="header">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">Web KPI</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="home.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="quanlykpi.jsp"> <span class="glyphicon glyphicon-book"></span> Quản Lý KPI <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="themkpi.jsp"><span class="glyphicon glyphicon-plus"></span> Thêm KPI</a></li>
                                <li><a href="suakpi.jsp"><span class="glyphicon glyphicon-edit"></span> Sửa KPI</a></li>
                                <li><a href="xoakpi.jsp"><i class="fa fa-trash-o" aria-hidden="true">
                                </i> Xóa KPI</a></li>
                            </ul>
                        </li>
                        <li><a href="duyetkpi.jsp"><span class="glyphicon glyphicon-list-alt"></span> Duyệt KPI</a></li>
                        <li><a href="thongkekpi.jsp"><span class="glyphicon glyphicon-signal"></span> Thống kê KPI</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" data-toggle="dropdown"><i class="fa fa-bell-o" aria-hidden="true">
                        </i>Thông báo <span class="badge"> 9 </span><span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Thông báo 1</a></li>
                                <li class="divider"></li>
                                <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Thông báo 2</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Accout<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Tài khoản</a></li>
                                <li class="divider"></li>
                                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <!--end header-->
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col1">
                <div class="row">
                    <h2>Tạo KPI</h2>
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="email">Tên biểu mẫu:</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" placeholder="Nhập tên biểu mẫu">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="email">Đối tượng:</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" placeholder="Nhập đối tượng">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="email">Thời gian:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" id="email" placeholder="Nhập Thời gian">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="email">Đánh giá:</label>
                                <div class="col-sm-6">
                                     <select  class="form-control">
                                        <option>Chọn phương thức đánh giá</option>
                                        <option>Thang điểm 10</option>
                                        <option>Mức độ hài lòng</option>
                                     </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="pwd">Tiêu chí 1</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" placeholder="Nhập tiêu chí 1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="pwd">Tiêu chí 2</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" placeholder="Nhập tiêu chí 2">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="pwd">Tiêu chí 3</label>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" id="email" placeholder="Nhập tiêu chí 3">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-success">Thêm tiêu chí</button>
                                    <button type="submit" class="btn btn-danger">Tạo KPI</button>
                                </div>
                            </div>

                    </form>
                </div>
                
                </div>
                </div>
            </div>
                <!-- end colum 1 row 1 -->
             
           <!-- end row 1 -->
        </div>
    </div>
    <!--end content-->
    <div id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <p>Copyright 2016 by TeamWebKPI. All Rights Reserved. <a href="#">WebKPI.con</a></p>
                </div>
                <div class="col-sm-5"></div>
                <div class="col-sm-3">
                    <ul>
                        <li><a href="http://facebook.com/"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="http://linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="http://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="http://plus.google.com/"><i class="fa fa-google-plus"></i> </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--end footer-->
</body>

</html>