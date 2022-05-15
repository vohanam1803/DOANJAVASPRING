<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Cửu Dương Thần Công | Đăng Ký</title>
<link href="<c:url value="/cuuduong.gosu.vn/home/css/styles.css"/>"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div class="login-box">
		<div class="span4">
			<div class="well">
				<h1>Thêm Võ Học</h1>
				<h1>${ status }</h1>
				<form:form action="addvohoc" method="post" modelAttribute="vohoc">
					<div class="control-group">
						<label class="control-label" for="inputLev">id Môn Phái</label>
						<div class="controls">
							<form:input type="text" class="span3" path="id_mp" />
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="inputFname">id Binh Khí</label>
						<div class="controls">
							<form:input type="text" class="span3" path="id_bk" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputDate">Tên Võ Học</label>
						<div class="controls">
							<form:input type="text" class="span3" path="tieude" />
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="inputHev">Hình</label>
						<div class="controls">
							<form:input type="text" class="span3" path="hinh" />
						</div>
					</div>
					
					<div class="controls">
						<button type="submit" class="btn block">Thêm</button>
					</div>
				</form:form>
			</div>
		</div>

	</div>
</body>