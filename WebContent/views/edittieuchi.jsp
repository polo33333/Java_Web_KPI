<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>KPI Web | Tạo KPI</title>
    <link type="image/x-icon" href="images/k-52.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="css/taokpi-css.css">
    <link rel="stylesheet" href="fa/font-awesome-4.6.3/css/font-awesome.min.css">
     <script src="style/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
 
    <jsp:include page="_header.jsp"></jsp:include>
    
    <div id="content">
		<div class="container">
			<div class="row layout">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<h2 class="text-center">Sửa Tiêu Chí</h2>
						</div>
						<!-- end h2 tiêu đề -->
						<div class="col-md-12">
							<h2 class="text-left">Thông tin </h2>
						</div>
						<!-- end input h2 các thuộc tính biểu mẫu -->

					</div>
				</div>
				<c:if test="${not empty tieuchi}">
					<form method="POST" action="doeditTieuChi">
						<input type="hidden" name="matieuchi" value="${tieuchi.matieuchi}" />
						<div class="row x1">
							<div class="col-md-3">
								<h4 class="text-center">Tên tiêu chí:</h4>
							</div>
							<div class="col-md-7">
								<input type="text" class="form-control" id="text"
									placeholder="Nhập tên tiêu chí" name="tentieuchi"
									value="${tieuchi.tentieuchi}">
							</div>
						</div>

						<div class="row x1">
							<div class="col-md-3">
								<h4 class="text-center">Mã biểu mẫu</h4>
							</div>
							<div class="col-md-7">
								<input type="text" class="form-control" id="text"
									placeholder="Nhập năm học" name="mabieumau"
									value="${tieuchi.mabieumau}">
							</div>
						</div>

						<div class="row x1">
							<div class="col-md-3">
								<h4 class="text-center">Người tạo:</h4>
							</div>
							<div class="col-md-7">
								<input type="text" class="form-control" id="text"
									placeholder="Người tạo" name="userdky" value="${tieuchi.userdky}">
							</div>
						</div>
						<input type="submit" value="Edit Tiêu Chí" class="btn btn-primary" />
						<a href="TieuChiList">Cancel</a>
					</form>
					</c:if>
			</div>
		</div>
	</div>
	
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>