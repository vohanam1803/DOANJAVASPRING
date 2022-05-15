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
				<h1>Thêm Sự Kiện</h1>
				<h1>${ status }</h1>
				<form:form action="updatesukien" method="post" modelAttribute="event">
					<div class="control-group">
						<label class="control-label" for="inputHev">Mã Id của sự kiện này</label>
						<div class="controls">
							<form:input type="text" class="span3" path="id_sukien" />
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="inputFname">Tên Sự Kiện</label>
						<div class="controls">
							<form:input type="text" class="span3" path="tensukien" />
						</div>
					</div>
					
					
					
					<div class="controls">
						<button type="submit" class="btn block">Update</button>
					</div>
				</form:form>
			</div>
		</div>

	</div>
</body>