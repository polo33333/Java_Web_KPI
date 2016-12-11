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
							<h3 class="text-left">Danh sách biểu mẫu</h3>
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
										<th>Tên biểu mẫu</th>
										<th>Năm học</th>
										<th>Người tạo</th>
										<th>Duyệt</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listbieumauofusser}" var="bieumau">
										<tr>
											<td>${bieumau.mabieumau}</td>
											<td>${bieumau.tenbieumau}</td>
											<td>${bieumau.namhoc}</td>
											<td>${bieumau.username}</td>
											<td><a href="DuyetTieuChiOfUser?mabieumau=${bieumau.mabieumau}"><button type="button" class="btn btn-primary">Duyệt</button></a>
											</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
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