<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>KPI Web | Đăng Ký KPI</title>
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="css/quanlykpi-css.css">
    <link rel="stylesheet" href="fa/font-awesome-4.6.3/css/font-awesome.min.css">
     <script src="style/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<div id="content">
		<div class="container">
			<div class="row layout">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<h2 class="text-center">Đăng Ký KPI</h2>
						</div>
						<!-- end h2 tiêu đề -->
						<div class="col-md-12">
							<h3 class="text-left">Danh sách KPI</h3>
						</div>
						<!-- end input h2 các thuộc tính -->

					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Mã</th>
										<th>Tên tiêu chí</th>
										<th>Mã biểu mẫu</th>
										<th>Điểm GV</th>
										<th>Điểm TBM</th>
										<th>Điểm TK</th>
										<th>Điểm PTCCB</th>
										<th>Điểm HT</th>
										<th>Người tạo</th>
										<th>Trạng thái</th>
										<th>Đăng ký</th>
										<th> Hủy đăng ký</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listtieuchi}" var="tieuchi">
										<tr>
											<td>${tieuchi.matieuchi}</td>
											<td>${tieuchi.tentieuchi}</td>
											<td>${tieuchi.mabieumau}</td>
											<td>${tieuchi.diemgv}</td>
											<td>${tieuchi.diemtbm}</td>
											<td>${tieuchi.diemtk}</td>
											<td>${tieuchi.diemptccb}</td>
											<td>${tieuchi.diemht}</td>
											<td>${tieuchi.userdky}</td>
											<td>${tieuchi.trangthai}</td>
											<td><a href="doDangKyTieuChiKPI?mabieumau=${tieuchi.mabieumau}&matieuchi=${tieuchi.matieuchi}"><button type="button" class="btn btn-warning">Đăng ký</button></a>
											</td>
											<td><a href="doHuyDangKyTieuChiKPI?mabieumau=${tieuchi.mabieumau}&matieuchi=${tieuchi.matieuchi}"><button type="button" id="btn2" class="btn btn-danger">Hủy đăng ký</button></a>
											</td>
										</tr>
										
				
									</c:forEach>
								</tbody>
							</table>
							
							<a href="DangKyKPI"><button type="button" class="btn btn-danger"><i class="fa fa-arrow-left"> Go Back</i></button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- end content -->
		<jsp:include page="_footer.jsp"></jsp:include>
		

</body>
</html>