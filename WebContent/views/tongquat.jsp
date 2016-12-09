<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>KPI Web | Tổng Quan</title>
<link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cookie">
<link rel="stylesheet" href="css/index-css.css">
<link rel="stylesheet"
	href="fa/font-awesome-4.6.3/css/font-awesome.min.css">
<script src="style/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<div id="content">
		<div class="container">
			<div class="row">
				<div class="col-md-5 layout">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-12">
									<h2 class="text-left">Welcome</h2>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<p class="text-left text-success">Sẵn sàng với KPI Web quản
										lý KPI của bạn !</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<img src="images/manage.jpg">
						</div>
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-12">
									<h4>Quản lý KPI</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<a href="#">Thêm, sửa, xóa KPI của bạn</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<img src="images/kpi.jpg">
						</div>
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-12">
									<h4>Duyệt KPI</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<a href="#">Đánh giá các tiêu chí theo cách của bạn</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<img src="images/chart.jpg">
						</div>
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-12">
									<h4>Thống kê KPI</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<a href="#">Biểu đồ KPI minh bạch</a>
									<p></p>
									<p></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-7 layout">
					<div class="row">
						<div class="col-md-12">
							<h2>Thông tin</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p class="text-success">Thông tin cá nhân của bạn luôn được
								bảo mật</p>
						</div>
					</div>
					<div class="row x1">
						<div class="col-md-3">
							<h4>Họ và Tên:</h4>
						</div>
						<div class="col-md-8">
							<input class="form-control" id="disabledInput" type="text"
								value="${user.hoten}">
						</div>

					</div>
					<div class="row x1">
						<div class="col-md-3">
							<h4>Mã Số GV:</h4>
						</div>
						<div class="col-md-8">
							<input class="form-control" id="disabledInput" type="text"
								value="${user.msgv }">
						</div>

					</div>
					<div class="row x1">
						<div class="col-md-3">
							<h4>Email:</h4>
						</div>
						<div class="col-md-8">
							<div class="input-group margin-bottom-sm">
								<span class="input-group-addon"> <i
									class="fa fa-envelope-o fa-fw"></i>
								</span> <input class="form-control" type="text" value="${user.email }">
							</div>
						</div>

					</div>
					<div class="row x1">
						<div class="col-md-3">
							<h4>Chức vụ:</h4>
						</div>
						<div class="col-md-8">
							<input class="form-control" type="text" id="chucvu">
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<jsp:include page="_footer.jsp"></jsp:include>
	<!-- chuyen doi  gia tri thanh user -->
	<script type="text/javascript">
	 $(document).ready(function(){
			 switch (${user.roleid}) {
			    case 1: s="Giảng Viên";
			    break;
			    case 2: s="Trưởng Bộ Môn";
			    break;
			    case 3: s="Trưởng Khoa";
			    break;
			    case 4: s="Phòng TCCB";
			    break;
			    case 5: s="Hiệu Trưởng";
			    break;
			    case 6: s="ADMIN";
			    break;
			}
		 $("#chucvu").val(s);
		  });
</script>
</body>
</html>