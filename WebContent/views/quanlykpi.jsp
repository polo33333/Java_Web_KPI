<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>KPI Web | Quản Lý KPI</title>
</head>
<body>
	<jsp:include page="_footer.jsp"></jsp:include>
	<div id="content">
		<div class="container">
			<div class="row layout">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<h2 class="text-center">Quản lý KPI</h2>
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
										<th>Tên biểu mẫu</th>
										<th>Năm học</th>
										<th>Người tạo</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${bieumauList}" var="bieumau">
										<tr>
											<td>${bieumau.mabieumau}</td>
											<td>${bieumau.tenbieumau}</td>
											<td>${bieumau.namhoc}</td>
											<td>${bieumau.username}</td>
											<td><a href="editBieuMau?mabieumau=${bieumau.mabieumau}">Edit</a>
											</td>
											<td><a
												href="deleteBieuMau?mabieumau=${bieumau.mabieumau}">Delete</a>
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
		<!-- end content -->
		<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>