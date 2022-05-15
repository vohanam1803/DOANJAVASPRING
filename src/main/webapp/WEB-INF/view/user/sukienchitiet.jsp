<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml">
<head>
<title>Cửu Dương Thần Công | Game nhập vai kiếm hiệp 3D hay nhất</title>
<%@ include file="/WEB-INF/view/layouts/user/header.jsp"%>
<style>
table, th, td {
	border: 1px solid black;
}

td {
	padding-right: 30px;
}
</style>
</head>

<body id="body" onload="init();">
	<div class="content">
		<%-- <table>


			<tr style="border: 1px black solid">
				<c:forEach var="item" items="${ loaisukien }">

					<th>${ item.name }</th>

				</c:forEach>
				<c:forEach var="item" items="${ loaisukien }">
					<li class="tab-news">
					<th><h2>
							<a class="tbnews" href='${ item.mota }'>${ item.name }</a>
						</h2></th>
					</li>
				</c:forEach>

			</tr>

		</table>
		<table>
			<tr>

				<th>Loại sự Kiện</th>
				<th>Tên Sự Kiện</th>
				<th>Ngày Đăng</th>
				<th>Mô Tả Sự Kiện</th>
				<th>Hình</th>

			</tr>
			<c:forEach var="item" items="${ event }">
				<c:forEach var="itsu" items="${ loaisukien }">
					<c:if test="${ itsu.id == item.id_loaisukien }">
						<tr style="border: 1px black solid">
							<td>${ itsu.name }</td>
							<td>${ item.tensukien }</td>
							<td>${ item.date }</td>
							<td>${ item.description }</td>
							<td><img width="100px" height="100px"
								src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" /></td>

						</tr>
					</c:if>

				</c:forEach>
			</c:forEach>
		</table> --%>

		<div>
			<ul class='tabs-news'>

				<c:forEach var="item" items="${ loaisukien }">
					<li class="tab-news"><h2>
							<a class="tbnews" href='${ item.mota }'>${ item.name }</a>
						</h2></li>
				</c:forEach>


			</ul>



			<div id='tab1-news'>

				<c:forEach var="item" items="${ event }">
					<c:if test="${ item.id_loaisukien == 1}">
						<div>
							<table>
								<tr>

									<th></th>
									<th>Tên Sự Kiện</th>
									<th>Ngày Đăng</th>
									<th>Mô Tả Sự Kiện</th>


								</tr>
								<tr style="border: 1px black solid">
									<td><a href="/CUUDUONGTHANCONG/viewchitiet"> <img width="100px" height="100px"
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
									</a></td>
									<td>${ item.tensukien }</td>
									<td>${ item.date }</td>
									<td>${ item.description }</td>

								</tr>
							</table>
						</div>
					</c:if>
				</c:forEach>
			</div>

			<div id='tab2-news'>

				<c:forEach var="item" items="${ event }">
					<c:if test="${ item.id_loaisukien == 2}">
						<div>
							<table>
								<tr>

									<th></th>
									<th>Tên Sự Kiện</th>
									<th>Ngày Đăng</th>
									<th>Mô Tả Sự Kiện</th>


								</tr>
								<tr style="border: 1px black solid">
									<td><a href="/CUUDUONGTHANCONG/viewchitiet"> <img width="100px" height="100px"
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
									</a></td>
									<td>${ item.tensukien }</td>
									<td>${ item.date }</td>
									<td>${ item.description }</td>

								</tr>
							</table>
						</div>
					</c:if>
				</c:forEach>
			</div>

			<div id='tab3-news'>

				<c:forEach var="item" items="${ event }">
					<c:if test="${ item.id_loaisukien == 3}">
						<div>
							<table>
								<tr>

									<th></th>
									<th>Tên Sự Kiện</th>
									<th>Ngày Đăng</th>
									<th>Mô Tả Sự Kiện</th>


								</tr>
								<tr style="border: 1px black solid">
									<td><a href="/CUUDUONGTHANCONG/viewchitiet"> <img width="100px" height="100px"
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
									</a></td>
									<td>${ item.tensukien }</td>
									<td>${ item.date }</td>
									<td>${ item.description }</td>

								</tr>
							</table>
						</div>
					</c:if>
				</c:forEach>
			</div>


			<div id='tab4-news'>

				<c:forEach var="item" items="${ event }">
					<c:if test="${ item.id_loaisukien == 4}">
						<div>
							<table>
								<tr>

									<th></th>
									<th>Tên Sự Kiện</th>
									<th>Ngày Đăng</th>
									<th>Mô Tả Sự Kiện</th>


								</tr>
								<tr style="border: 1px black solid">
									<td><a href="/CUUDUONGTHANCONG/viewchitiet"> <img width="100px" height="100px"
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
									</a></td>
									<td>${ item.tensukien }</td>
									<td>${ item.date }</td>
									<td>${ item.description }</td>

								</tr>
							</table>
						</div>
					</c:if>
				</c:forEach>
			</div>


			<div id='tab5-news'>

				<c:forEach var="item" items="${ event }">
					<c:if test="${ item.id_loaisukien == 5}">
						<div>
							<table>
								<tr>

									<th></th>
									<th>Tên Sự Kiện</th>
									<th>Ngày Đăng</th>
									<th>Mô Tả Sự Kiện</th>


								</tr>
								<tr style="border: 1px black solid">
									<td><a href="/CUUDUONGTHANCONG/viewchitiet"> <img width="100px" height="100px"
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
									</a></td>
									<td>${ item.tensukien }</td>
									<td>${ item.date }</td>
									<td>${ item.description }</td>

								</tr>
							</table>
						</div>
					</c:if>
				</c:forEach>
			</div>


			<div id='tab6-news'>

				<c:forEach var="item" items="${ event }">
					<c:if test="${ item.id_loaisukien == 6}">
						<div>
							<table>
								<tr>

									<th></th>
									<th>Tên Sự Kiện</th>
									<th>Ngày Đăng</th>
									<th>Mô Tả Sự Kiện</th>


								</tr>
								<tr style="border: 1px black solid">
									<td><a href="/CUUDUONGTHANCONG/viewchitiet"> <img width="100px" height="100px"
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
									</a></td>
									<td>${ item.tensukien }</td>
									<td>${ item.date }</td>
									<td>${ item.description }</td>

								</tr>
							</table>
						</div>
					</c:if>
				</c:forEach>
			</div>


		</div>
	</div>
	<!-- wapper close -->
	<%@ include file="/WEB-INF/view/layouts/user/footer.jsp"%>
</body>
</html>