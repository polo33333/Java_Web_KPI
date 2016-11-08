<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KPI Web | Tổng Quan</title>
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="css/index-css.css">
    <link rel="stylesheet" href="fa/font-awesome-4.6.3/css/font-awesome.min.css">
     <script src="style/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-default custom-header">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button><a class="navbar-brand navbar-link" href="#">KPI <span>web </span> </a></div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav links">
                    <li class="active"role="presentation"><a href="tongquan.jsp"><span class="glyphicon glyphicon-star"></span> Tổng quan</a></li>
                    <li role="presentation">
                        <a href="taokpi.jsp"> <span class="fa fa-plus"></span> Tạo KPI</a>
                    </li>
                    <li role="presentation"><a href="quanlykpi.jsp"><span class="fa fa-table"></span> Quản Lý KPI</a></li>
                    <li role="presentation">
                        <a href="duyetkpi.jsp" class="custom-navbar"> <span class="glyphicon glyphicon-ok"></span> Duyệt KPI<span class="badge">2 </span></a>
                    </li>
                    <li role="presentation"><a href="dangkikpi.jsp"><span class="glyphicon glyphicon-signal"></span> Đăng Kí KPI</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#"> <span class="caret"></span><img src="images/manage.jpg" class="dropdown-image"></a>
                        <ul class="dropdown-menu dropdown-menu-left" role="menu">
                            <li><a href="#"><span class="fa fa-cog"></span> Cài đặt</a></li>
                            <li><a href="#"><span class="fa fa-bell"></span> Thông báo</a></li>
                            <li class="active"><a href="index.jsp"><span class="fa fa-sign-out"></span> Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-5 layout">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="text-left">Welcome </h2></div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="text-left text-success">Sẵn sàng với KPI Web quản lý KPI của bạn !</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3"><img src="images/manage.jpg"></div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Quản lý KPI</h4></div>
                            </div>
                            <div class="row">
                                <div class="col-md-12"><a href="#">Thêm, sửa, xóa KPI của bạn</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3"><img src="images/kpi.jpg"></div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Duyệt KPI</h4></div>
                            </div>
                            <div class="row">
                                <div class="col-md-12"><a href="#">Đánh giá các tiêu chí theo cách của bạn</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3"><img src="images/chart.jpg"></div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Thống kê KPI</h4></div>
                            </div>
                            <div class="row">
                                <div class="col-md-12"><a href="#">Biểu đồ KPI minh bạch</a>
                                    <p> </p>
                                    <p> </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 layout">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Thông tin</h2></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-success">Thông tin cá nhân của bạn luôn được bảo mật </p>
                        </div>
                    </div>
                    <div class="row x1">
                    <div class="col-md-3">
                        <h4>Họ và Tên:</h4>
                    </div>
                    <div class="col-md-8">
                         <input class="form-control" id="disabledInput" type="text" value="Nguyễn Văn A">
                    </div>
                        
                    </div>
                    <div class="row x1">
                    <div class="col-md-3">
                        <h4>Mã Số GV:</h4>
                    </div>
                    <div class="col-md-8">
                        <input class="form-control" id="disabledInput" type="text" value="13110144">
                    </div>
                        
                    </div>
                    <div class="row x1">
                    <div class="col-md-3">
                        <h4>Email:</h4>
                    </div>
                    <div class="col-md-8">
                       <div class="input-group margin-bottom-sm">
                                <span class="input-group-addon">
                                <i class="fa fa-envelope-o fa-fw"></i>
                                </span>
                                <input class="form-control" type="text" placeholder="13110144@student.hcmute.edu.vn">
                                </div>
                    </div>
                        
                    </div>
                    <div class="row x1">
                    <div class="col-md-3">
                        <h4>Chức vụ:</h4>
                    </div>
                    <div class="col-md-8">
                        <select id="disabledSelect" class="form-control">
                                    <option>Hiệu Trưởng</option>
                                     <option>Phòng Nhân Sự</option>
                                     <option>Trưởng Khoa</option>
                                     <option>Trưởng bộ môn</option>
                                    <option>Giảng Viên</option>
                                </select>
                    </div>
                        
                    </div>

            </div>


        </div>
    </div>
    <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">KPI <span>web </span></a></h3>
                <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                <p class="company-name">KPI Web © 201<a href="#" target="_blank">6</a></p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">01,Võ Văn Ngân,Q.Bình Thanh</span> TP. Hồ Chí Minh</p>
                </div>
                <div><span class="fa fa-phone footer-contacts-icon"></span>
                    <p class="footer-center-info email text-left"> +840946494653</p>
                </div>
                <div><span class="fa fa-envelope footer-contacts-icon"></span>
                    <p> <a href="#" target="_blank">support_kpiweb@gmail.com</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>About the Team</h4>
                <p> Bài tập lớp môn học Lập trình web.Xây dựng web tính KPI.
                </p>
                <div class="social-links social-icons"><a href="#"><span class="fa fa-facebook"></span></a><a href="#"><span class="fa fa-twitter"></span></a><a href="#"><span class="fa fa-linkedin"></span></a><a href="#"><span class="fa fa-github"></span></a></div>
            </div>
        </div>
    </footer>
   
</body>

</html>