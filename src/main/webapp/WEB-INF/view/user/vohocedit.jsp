<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Edit Sự Kiện</title>
<link type="text/css" href="<c:url  value="/cuuduong.gosu.vn/home/css/test.css"/>" rel="stylesheet" />
<style>
table, th, td {
	text-align: center;
	border: 1px solid black;
}

td {
	padding-right: 30px;
}

.container {
	text-align: center;
	background: url("../images/hinh1.jpg");
}

.canh {
	text-align: center;
}
</style>
</head>
<body>
<h1>List Võ Học</h1>
<div class = aa style="display:flex">


	<div>
		<table>
			<h2>Danh Sách Môn Phái</h2>
			
			<tr>
				<th>Id môn phái</th>
				<th>Tên môn phái</th>
			</tr>
			<c:forEach var="item" items="${ monphai }">
				<tr style="border: 1px black solid">
					<td>${ item.id_monphai }</td>
					<td>${ item.tenmonphai }</td>
			</c:forEach>
		</table>
	</div>
	



	<div style="padding-left: 16px">
		<table>
			<h2>Danh Sách Binh Khí</h2>
			<tr>
				<th>Id binh khí</th>
				<th>Tên binh khí</th>
			</tr>
			<c:forEach var="item" items="${ binhkhi }">
				<tr style="border: 1px black solid">
					<td>${ item.id_binhkhi }</td>
					<td>${ item.tenbinhkhi }</td>
			</c:forEach>
		</table>
	</div>
</div>


	
	<br />
	<a href="/CUUDUONGTHANCONG/addvohoc">Thêm mới võ học</a>
	<br />
	<div class="canh">
		<table>
			<tr>
				<th>id võ học</th>
				<th>id môn phái</th>
				<th>id binh khi</th>
				<th>Tên Võ Học</th>
				<th>Hình</th>

				<th>Delete</th>
			</tr>
			<c:forEach var="item" items="${ vohoc }">
				<tr style="border: 1px black solid">
					<td>${ item.id_vh }</td>
					<td>${ item.id_mp }</td>
					<td>${ item.id_bk }</td>
					<td>${ item.tieude }</td>
					<td><img
						src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinh }"/>"
						width="100px" height="100px" alt="" title="" /></td>

					<%-- <td> <a href="/CUUDUONGTHANCONG/view">Chi Tiết</a></td>--%>
					<!-- <td> <a href="/CUUDUONGTHANCONG/option">Edit</a></td> -->
					<td><a href="/CUUDUONGTHANCONG/deletevohoc/${ item.id_vh }">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	

</body>
</html>