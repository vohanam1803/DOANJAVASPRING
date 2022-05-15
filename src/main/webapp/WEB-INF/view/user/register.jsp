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
				<h1>Đăng Ký Nhanh</h1>
				<form:form action="register" method="post" modelAttribute="user">
					<div class="control-group">
						<label class="control-label" for="inputEmail">E-mail
							address</label>
						<div class="controls">
							<form:input type="email" class="span3" path="user" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">Password
						</label>
						<div class="controls">
							<form:input type="password" class="span3" path="password" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputFname">Họ Tên</label>
						<div class="controls">
							<form:input type="text" class="span3" path="display_name" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputLname">Địa Chỉ</label>
						<div class="controls">
							<form:input type="text" class="span3" path="address" />
						</div>
					</div>

					<div class="controls">
						<button type="submit" class="btn block">Đăng Ký</button>
					</div>
				</form:form>
			</div>
		</div>

	</div>
</body>