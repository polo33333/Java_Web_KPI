<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KPI Web | Tạo KPI</title>
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="css/taokpi-css.css">
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
                    <li role="presentation"><a href="tongquan.jsp"><span class="glyphicon glyphicon-star"></span> Tổng quan</a></li>
                    <li  class="active" role="presentation">
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
    <!-- end header -->
    <div id="content">
        <div class="container">
            <div class="row layout">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-center">Tạo Biểu Mẫu KPI</h2>
                        </div>
                        <!-- end h2 tiêu đề -->
                        <div class="col-md-12">
                            <h3 class="text-left">Thông tin biểu mẫu</h2>
                        </div>
                        <!-- end input h2 các thuộc tính biểu mẫu -->

                    </div>
                </div> 


                    <div class="row x1">
                        <div class="col-md-3">
                            <h4 class="text-center">Tên biểu mẫu:</h4>
                        </div>
                        <div class="col-md-7">
                             <input type="text" class="form-control" id="text" placeholder="Nhập tên biểu mẫu">
                        </div>
                    </div>

                     <div class="row x1">
                        <div class="col-md-3">
                            <h4 class="text-center">Thời gian hiệu lực:</h4>
                        </div>
                        <div class="col-md-3">
                                  <div class='input-group date' id='datetimepicker6'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                               
                        </div>
                        <div class="col-md-1"><h4 class="text-center"> Đến </h4></div>
                        <div class="col-md-3">
                                 <div class='input-group date' id='datetimepicker6'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                        </div>
                    </div>

                     <div class="row x1">
                        <div class="col-md-3">
                            <h4 class="text-center">Ghi chú:</h4>
                        </div>
                        <div class="col-md-7">
                             <input type="text" class="form-control" id="text" placeholder="Ghi chú">
                        </div>
                    </div>

            </div>
               
            <div class="row layout">
                <div class="col-md-12 layout">
                    <div class="row"><div class="col-md-12"><h3>Các tiêu chí</h3></div>
                    <div class="row x1">
                        <div class="col-md-3"><h5 class="text-center">Tiêu chí 1</h5></div>
                         <div class="col-md-4">
                            <input type="text" class="form-control" id="text" placeholder="Nhập tiêu chí 1">
                         </div>
                        <div class="col-md-2">
                            <h5 class="text-center">Thang điểm</h5>
                        </div>
                         <div class="col-md-1">
                            <input class="form-control" id="disabledInput" type="text" value="0">
                         </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary">Sửa</button>
                            
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </div>
                    </div>

                    <div class="row x1">
                        <div class="col-md-3"><h5 class="text-center">Tiêu chí 2</h5></div>
                         <div class="col-md-4">
                            <input type="text" class="form-control" id="text" placeholder="Nhập tiêu chí 2">
                         </div>
                        <div class="col-md-2">
                            <h5 class="text-center">Thang điểm</h5>
                        </div>
                         <div class="col-md-1">
                            <input class="form-control" id="disabledInput" type="text" value="0">
                         </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary">Sửa</button>
                            
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </div>
                    </div>


                    <div class="row x1">
                        <div class="col-md-3"><h5 class="text-center">Tiêu chí 3</h5></div>
                         <div class="col-md-4">
                            <input type="text" class="form-control" id="text" placeholder="Nhập tiêu chí 3">
                         </div>
                        <div class="col-md-2">
                            <h5 class="text-center">Thang điểm</h5>
                        </div>
                         <div class="col-md-1">
                            <input class="form-control" id="disabledInput" type="text" value="0">
                         </div>
                        <div class="col-md-2">
                            <button type="button" class="btn btn-primary">Sửa</button>
                            
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </div>
                    </div>

                     <div class="row x2">
                         <div class="col-md-3">
                         </div>
                         <div class="col-md-4">
                             <button type="button" class="btn btn-info">Thêm tiêu chí</button>
                                
                                <button type="button" class="btn btn-danger">Tạo biểu mẫu KPI</button>
                         </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
     <!-- end content -->
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