<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>Web KPI | Get Start</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="css/index-css.css">
    <!-- Khai báo thư viện jQuery -->
    <script src="style/jquery.min.js"></script>
    <!-- Khai báo sử dụng thư viện javascript của bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!--Khai báo thư viện Font Awesome-->
    <link href="fa/font-awesome-4.6.3/css/font-awesome.css" rel="stylesheet">
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
                        <li class="active"><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
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
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <!--end header-->
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-sm-5 col1">
                <div class="row">
                    <h2>Welcome</h2>
                    <p>Sẵn sàng với WEB KPI quản lý KPI của bạn !</p>
                    <div class="row cc">
                        <div class="col-sm-2"><img src="images/manage.jpg"></div>
                        <div class="col-sm-6">
                        <div class="row td">Quản lý KPI</div>
                        <div class="row linkf">Thêm, sửa, xóa KPI của bạn</div>
                        </div>
                    </div>
                    <div class="row cc">
                        <div class="col-sm-2"><img src="images/kpi.jpg"></div>
                    <div class="col-sm-6">
                        <div class="row">Duyệt KPI</div>
                        <div class="row linkf"><a href="#">Đánh giá các tiêu chí theo cách của bạn</a></div>
                    </div>
                    </div>
                    <div class="row cc">
                        <div class="col-sm-2"><img src="images/chart.jpg"></div>
                    <div class="col-sm-6">
                        <div class="row">Thống kê KPI</div>
                        <div class="row linkf"><a href="#">Đồ thị biểu diễn chính xác</a></div>
                    </div>
                    </div>
                </div>
                </div>
                <!-- end colum 1 row 1 -->
                <div class="col-sm-6 col1">
                     <div class="row">
                    <h2>Thông tin </h2>
                    <p>Thông tin cá nhân của bạn luôn được bảo mật</p> 
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Họ và Tên:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="disabledInput" type="text" value="Nguyễn Văn A">
                             </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Mã số GV:</label>
                            <div class="col-sm-8">
                                <input class="form-control" id="disabledInput" type="text" value="13110144">
                            </div>
                        </div>
                         <!-- <fieldset disabled> --> 
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Email:</label>
                            <div class="col-sm-8">
                            <div class="input-group margin-bottom-sm">
                                <span class="input-group-addon">
                                <i class="fa fa-envelope-o fa-fw"></i>
                                </span>
                                <input class="form-control" type="text" placeholder="13110144@student.hcmute.edu.vn">
                            </div>
                            </div>
                        </div>
                        <fieldset disabled>
                        <div class="form-group">
                            <label for="disabledSelect" class="col-sm-3 control-label">Chức vụ:</label>
                            <div class="col-sm-8">
                                <select id="disabledSelect" class="form-control">
                                    <option>Hiệu Trưởng</option>
                                    <option>Giảng Viên</option>
                                </select>
                            </div>
                       </div>
                       </fieldset>
                       <div class="form-group">
                       <div class="col-sm-3">
                          
                       </div>
                       <div class="col-sm-8 btnedit">
                           <a class="btn btn-danger" href="#">
                                <i class="fa fa-pencil-square-o" aria-hidden="true"> Edit</i>
                           </a>
                       </div>
                        <!-- <fieldset disabled>
                            <div class="input-group margin-bottom-sm">
                                <span class="input-group-addon">
                                <i class="fa fa-envelope-o fa-fw"></i>
                                </span>
                                <input class="form-control" type="text" placeholder="Email address">
                            </div> -->
                    </div>
                </div>
                 <!-- end colum 2 row 1 -->
           </div>  
           <!-- end row 1 -->
            <div class="row">
                <div class="col-sm-3 col2">
                <div class="row">
                    <h2>Time </h2>
                    <p>Bây giờ là !</p> 
                    <iframe src="http://free.timeanddate.com/clock/i5f2ljno/n218/szw110/szh110/hoc999/hbw10/cf100/hgr0/fiv0/fas34/fdi72/mqv0/mhc000/mhs3/mhl20/mhw1/mhd84/mmv0/hhs1/hms1/hsc000/hss1" frameborder="0" width="110" height="110"></iframe>

                    </div>
                </div>
                <div class="row">
                <div class="col-sm-8 col21">
                <dir class="row">
                    <h2>Công việc </h2>
                    <p>Quản lý công việc của bạn mọi lúc mọi nơi !</p> 
                    <div class="panel panel-default">
					    <div class="panel-body">Công việc a</div>
					  </div>
					   <div class="panel panel-primary">
					    <div class="panel-body">Công việc b</div>
					  </div>
            </div>
                </div>
                </div>
                </dir>
            </div>
             <!-- end row 2 -->
        </div>
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