<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>KPI Web | Tạo KPI</title>
<link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cookie">
<link rel="stylesheet" href="css/quanlykpi-css.css">
<link rel="stylesheet"
	href="fa/font-awesome-4.6.3/css/font-awesome.min.css">
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
							<h2 class="text-center">Tạo KPI</h2>
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
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${tieuchiList}" var="tieuchi">
										<tr>
											<td>${tieuchi.matieuchi}</td>
											<td>${ tieuchi.tentieuchi}</td>
											<td>${ tieuchi.mabieumau}</td>
											<td>${tieuchi.diemgv}</td>
											<td>${tieuchi.diemtbm}</td>
											<td>${tieuchi.diemtk}</td>
											<td>${tieuchi.diemptccb}</td>
											<td>${tieuchi.diemht}</td>
											<td>${tieuchi.userdky}</td>
											<td>${tieuchi.trangthai}</td>
											<td><a href="editTieuChi?matieuchi=${tieuchi.matieuchi}"><button
														type="button" class="btn btn-primary">Edit</button></a></td>
											<td><a
												href="deleteTieuChi?matieuchi=${tieuchi.matieuchi}"><button
														type="button" class="btn btn-warning">Delete</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<a href="createTieuChi""><button type="button" class="btn btn-danger">Tạo Tiêu Chí</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end content -->
		</div>
			<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>