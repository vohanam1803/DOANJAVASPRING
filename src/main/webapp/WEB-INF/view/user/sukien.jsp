<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit Sự Kiện</title>
<style>
table, th, td {
  border: 1px solid black;
}
td {
  padding-right: 30px;
}
</style>
</head>
<body>
  <h1>List Sự Kiện</h1>
  <a href="/CUUDUONGTHANCONG/let2">Thêm mới sự kiện</a>
  <br />
  <a href="/CUUDUONGTHANCONG/home">Loại sự kiện => 1:Tin Mới / 2:Thông Báo / 3:Sự Kiện / 4:Cộng Đồng / 5:Báo Chí / 6:Hướng Dẫn</a>
  <br />
  <table>
    <tr>
      <th>id</th>
      <th>Loại sự Kiện</th>
      <th>Tên Sự Kiện</th>
      <th>Ngày Đăng</th>
      <th>Mô Tả Sự Kiện</th>
      <th>Hình</th>
      <th>View</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
      <c:forEach var="item" items="${ event }">
        <tr style="border: 1px black solid">
          <td>${ item.id_sukien }</td>
          <td>${ item.id_loaisukien }</td>
          <td>${ item.tensukien }</td>
          <td>${ item.date }</td>
          <td>${ item.description }</td>
          <td>${ item.hinhev }</td>
          <td> <a href="/CUUDUONGTHANCONG/view">Chi Tiết</a></td>
          <td> <a href="/CUUDUONGTHANCONG/option">Edit</a></td>
          <td> <a href="/CUUDUONGTHANCONG/${ item.id_sukien }">Delete</a></td>
        </tr>
      </c:forEach>
  </table>
</body>
</html>