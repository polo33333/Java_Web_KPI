<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>KPI Web | Duyệt KPI</title>
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
							<h2 class="text-center">Duyệt KPI</h2>
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
						<form method="POST" action="ChamDiemKPI">
							<table class="table table-bordered" >
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
										<th>Cập nhật</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listtieuchi}" var="tieuchi">
										<tr>
											<td> <input type="hidden" name="matieuchi" value="${tieuchi.matieuchi}" />${tieuchi.matieuchi}</td>
											<td ><input type="hidden" name="tentieuchi" value="${tieuchi.tentieuchi}" />${tieuchi.tentieuchi}</td>
											<td><input type="hidden" name="mabieumau" value="${tieuchi.mabieumau}" />${tieuchi.mabieumau}</td>
											<td><input type="text" class="form-control" id="text"
						 					name="diemgv" size="8" value="${tieuchi.diemgv}"></td>
											<td><input type="text" class="form-control" id="text"
						 					name="diemtbm"  size="8" value="${tieuchi.diemtbm}"></td>
											<td><input type="text" class="form-control" id="text"
						 					name="diemtk" size="8" value="${tieuchi.diemtk}"></td>
											<td><input type="text" class="form-control" id="text"
						 					name="diemptccb" size="8" value="${tieuchi.diemptccb}"></td>
											<td><input type="text" class="form-control" id="text"
											name="diemht" size="8" value="${tieuchi.diemht}"></td>
											<td ><input type="hidden" name="userdky" value="${tieuchi.userdky}" >${tieuchi.userdky}</td>
											<td>${tieuchi.trangthai}</td>
											<td><input type="submit" value="Cập nhật" class="btn btn-warning">
											</td>
										</tr>
										
				
									</c:forEach>
								</tbody>
							</table>
							</form>
							<c:forEach items="${listtieuchi}" var="tieuchi">
							<a href="BieuMauKPIOfUser?userdky=${tieuchi.userdky }"><button type="button" class="btn btn-danger"><i class="fa fa-arrow-left"> Go Back</i></button></a>
							</c:forEach>
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