<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<p>Đăng Ký Thành Công Quay Lại Trang Chủ Để Đăng Nhập Nhé!!....</p>
	<br>
	<table align="center">
		<tr>
			<td><a href="/CUUDUONGTHANCONG/home">Về Lại Trang Chủ</a></td>
		</tr>
	</table>
	<c:forEach var="item" items="${ vohoc }">
		<a> <img
			src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinh }" />" />
		</a>
	</c:forEach>
</body>
</html>