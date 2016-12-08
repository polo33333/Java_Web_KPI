<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                    <li class="active"role="presentation"><a href="${pageContext.request.contextPath}/userInfo"><span class="glyphicon glyphicon-star"></span> Tổng quan</a></li>
                    <li role="presentation">
                        <a href="${pageContext.request.contextPath}/TieuChiList"> <span class="fa fa-plus"></span> Tạo KPI</a>
                    </li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/BieuMauList"><span class="fa fa-table"></span> Quản Lý KPI</a></li>
                    <li role="presentation">
                        <a href="duyetkpi.jsp" class="custom-navbar"> <span class="glyphicon glyphicon-ok"></span> Duyệt KPI<span class="badge">2 </span></a>
                    </li>
                    <li role="presentation"><a href="${pageContext.request.contextPath}/DangKyKPI"><span class="glyphicon glyphicon-signal"></span> Đăng Kí KPI</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#"> <span class="caret"></span><img src="images/manage.jpg" class="dropdown-image"></a>
                        <ul class="dropdown-menu dropdown-menu-left" role="menu">
                            <li><a href="#"><span class="fa fa-cog"></span> Cài đặt</a></li>
                            <li><a href="#"><span class="fa fa-bell"></span> Thông báo</a></li>
                            <li class="active"><a href="${pageContext.request.contextPath}/home"><span class="fa fa-sign-out"></span> Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>