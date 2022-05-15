<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Tag Example</title>
</head>

<body>
	<%-- <c:forEach var="item" items="${ vohoc }">
		<c:set var="salary" scope="session" value="${ item.tieude }" />
	</c:forEach> --%>

	<img src="<c:url value="/cuuduong.gosu.vn/home/images/hinh1.jpg" />"
		width="50px" height="50px" id="anh1">
	<img src="<c:url value="/cuuduong.gosu.vn/home/images/hinh2.jpg" />"
		width="50px" height="50px">
	<img src="<c:url value="/cuuduong.gosu.vn/home/images/hinh3.jpg" />"
		width="50px" height="50px">
	<img src="<c:url value="/cuuduong.gosu.vn/home/images/hinh4.jpg" />"
		width="50px" height="50px">

	<c:set var="salary" scope="session" value="Thiếu Lâm" />
	<c:set var="salary1" scope="session" value="Võ Đang" />
	<c:if test="${ salary == 'Thiếu Lâm' }">
		<p>
			My salary is:
			<c:out value="${salary}" />
		<p>
	</c:if>
	<c:if test="${ salary1 == 'Võ Đang' }">
		<p>
			My salary1 is:
			<c:out value="${salary1}" />
		<p>
	</c:if>

	<select id="gender" onchange="genderChanged(this)">
		<option value="">-- Chọn --</option>
		<option value="Thiếu Lâm">Thiếu Lâm</option>
		<option value="Võ Đang">Võ Đang</option>
		<option value="Cổ Mộ">Cổ Mộ</option>
	</select>
	<br>
	<p style="color: red" id="show_message"></p>

	<button onclick="Hello()">Tìm</button>

	<p id="demo"></p>


	<script type="text/javascript">
		function genderChanged(obj) {
			var message = document.getElementById('show_message');
			var value = obj.value;
			if (value === '') {
				message.innerHTML = "Bạn chưa chọn võ học";
			} else if (value === 'Thiếu Lâm') {
				message.innerHTML = "Bạn đã chọn Thiếu Lâm";
			} else if (value === 'Võ Đang') {
				message.innerHTML = "Bạn đã chọn Võ Đang";
			} else if (value === 'Cổ Mộ') {
				message.innerHTML = "Bạn đã chọn Cổ Mộ";
			}
		}
	</script>
	<script type="text/javascript">
		function Hello() {
			var message = document.getElementById('demo');
			var e = document.getElementById("gender");
			var strUser = e.options[e.selectedIndex].value;
			message.innerHTML = strUser;
		}
	</script>


	
</html>