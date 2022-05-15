<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setBundle basename="messages" />
<fmt:message key="message.password" var="noPass" />
<fmt:message key="message.username" var="noUser" />
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cửu Dương Thần Công | Đăng Nhập</title>
<link href="<c:url value="/cuuduong.gosu.vn/home/css/styles.css"/>"
	rel="stylesheet" type="text/css">
</head>

<body>
	<h3>Trang Đăng Nhập</h3>
	<div class="row">
		<div class="span4">
			<div class="well">
				<h5>Chào Mừng Đến Cửu Dương Thần Công</h5>
				<h1>${ statusLogin }</h1>
				<form:form action="login" method="post" modelAttribute="user">
					<div class="control-group">
						<label class="control-label" for="inputEmail">Tài Khoản</label>
						<div class="controls">
							<form:input type="email" class="span3" placeholder="Nhập Email"
								path="user" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">Password </label>
						<div class="controls">
							<form:input type="password" class="span3"
								placeholder="Nhập password" path="password" />
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="defaultBtn">Đăng Nhập</button>
							<a href="#">Forget password?</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cửu Dương Thần Công | Đăng Nhập</title>
<link href="<c:url value="/cuuduong.gosu.vn/home/css/styles.css"/>"
	rel="stylesheet" type="text/css">
</head>

<body>
	<div class="login-box">
		<h1>Trang Đăng Nhập</h1>
		<div class="row">
			<div class="span4">
				<div class="well">
					<h5>ALREADY REGISTERED ?</h5>
					<h1>${ message }</h1>
					<form:form action="loginProcess" method="post"
						modelAttribute="user">
						<div class="control-group">
							<div class="controls">
								<label class="control-label" for="inputEmail">Email</label>
								<form:input type="email" class="span3" path="user" />
							</div>
						</div>

						<div class="control-group">
							<div class="controls">
								<label class="control-label" for="inputPassword">Password</label>
								<form:input type="password" class="span3" path="password" />
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<div class="login">
									<button type="submit" class="defaultBtn" >
										Đăng Nhập <span></span> <span></span> <span></span> <span></span>
									</button>
								</div>
								<div class="passforget">
									<a href="#">Forget password?</a>
								</div>

							</div>
						</div>
					</form:form>
					<script type="text/javascript">
						function Hello() {

							var checkEmail = document.getElementById("checkEmail").value;

							

							if (checkEmail == null ) {
								alert("Vui lòng nhập thông tin!");
							} else {
								alert("Success!");
							}
						}
					</script>
					<%-- <form:form action="vohocProcess" method="post"
						modelAttribute="vohoc">
						<div class="control-group">
							<div class="controls">
								<label class="control-label" for="inputLname"></label>
								<form:input type="text" class="span3" path="tieude" />
							</div>
						</div>

						<div class="control-group">
							<div class="controls">
								<div class="login">
									<button type="submit" class="defaultBtn">
										Tìm kiếm <span></span> <span></span> <span></span> <span></span>
									</button>
								</div>
							</div>
						</div>
					</form:form> --%>
</body>
</html>
