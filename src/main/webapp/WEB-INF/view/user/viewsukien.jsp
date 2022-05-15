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
</head>

<body id="body" onload="init();">
	<div class="content">

		

		<div id="sessions-2">

			<div class="session-left">
				<div class="guide-link">
					<div class="guide-blog">
						<a target="_blank"></a>
					</div>
					<!-- <div class="guide-vip"><a href="http://vip.gosu.vn/" target="_blank"></a></div> -->
					<div class="guide-vip">
						<a target="_blank"></a>
					</div>
					<!-- <div class="guide-setup">
						<a href="/CUUDUONGTHANCONG/gift"></a>
					</div> -->
					<c:if test="${ empty LoginInfo }">

					</c:if>
					<c:if test="${ not empty LoginInfo }">
						<div class="guide-setup">
							<a href="/CUUDUONGTHANCONG/gift"></a>
						</div>
					</c:if>
				</div>

				<div class="news-link">
					<ul class='tabs-news'>
					
						<c:forEach var="item" items="${ loaisukien }">
							<li class="tab-news"><h2>
									<a class="tbnews" href='${ item.mota }'>${ item.name }</a>
								</h2></li>
						</c:forEach>
						

					</ul>
					


					<div class="news-content-tab" id='tab1-news'>
						
						<c:forEach var="item" items="${ event }">
							<c:if test="${ item.id_loaisukien == 1}">
								<div class="container-event-info event-vk">
									<div class="container-event-image">
										
										<a href="/CUUDUONGTHANCONG/viewchitiet" > 
											<img
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
										</a>
									</div>
									<div class="container-event-content">
										<h3>
											
											<a  href="/CUUDUONGTHANCONG/viewchitiet">
												${ item.tensukien }
											</a>
										</h3>
										<p class="event-date">
											<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.date }
											</a>
										</p>
										<div class="container-event-description">
											<h4>
												<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
													${ item.description }
												</a>
											</h4>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
						<div class="page">
							<div class="top">
								<a href="#">Lên trên</a>
							</div>
							
						</div>

					</div>
					<!-- END Tin mới -->

					<div class="news-content-tab" id='tab2-news'>
						<c:forEach var="item" items="${ event }">
							<c:if test="${ item.id_loaisukien == 2}">
								<div class="container-event-info event-vk">
									<div class="container-event-image">
										<%-- <a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
										<img
										src="<c:url value="/cuuduong.gosu.vn/home/images/sk2.jpg" />" />
									</a> --%>
										<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
											<img
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
										</a>
									</div>
									<div class="container-event-content">
										<h3>
											<!-- <a> href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html">
											[23/03 - 26/03] TÍCH LŨY NẠP VÀNG MỪNG TAM NỘI MÁY CHỦ TRIỆU MẪN
										</a> -->
											<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.tensukien }
											</a>
										</h3>
										<p class="event-date">
											<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.date }
											</a>
										</p>
										<div class="container-event-description">
											<h4>
												<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
													${ item.description }
												</a>
											</h4>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
						<div class="page">
							<div class="top">
								<a> <!-- href="#" -->Lên trên
								</a>
							</div>
							
						</div>

					</div>
					<!-- END Thông báo -->


					<div class="news-content-tab" id='tab3-news'>
						<c:forEach var="item" items="${ event }">
							<c:if test="${ item.id_loaisukien == 3}">
								<div class="container-event-info event-vk">
									<div class="container-event-image">
										<%-- <a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
										<img
										src="<c:url value="/cuuduong.gosu.vn/home/images/sk2.jpg" />" />
									</a> --%>
										<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
											<img
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
										</a>
									</div>
									<div class="container-event-content">
										<h3>
											<!-- <a> href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html">
											[23/03 - 26/03] TÍCH LŨY NẠP VÀNG MỪNG TAM NỘI MÁY CHỦ TRIỆU MẪN
										</a> -->
											<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.tensukien }
											</a>
										</h3>
										<p class="event-date">
											<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.date }
											</a>
										</p>
										<div class="container-event-description">
											<h4>
												<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
													${ item.description }
												</a>
											</h4>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
						<div class="page">
							<div class="top">
								<a> <!-- href="#"> -->Lên trên
								</a>
							</div>
							
						</div>
					</div>
					<!-- END Sự kiện -->

					<div class="news-content-tab" id='tab4-news'>
						<c:forEach var="item" items="${ event }">
							<c:if test="${ item.id_loaisukien == 4}">
								<div class="container-event-info event-vk">
									<div class="container-event-image">
										<%-- <a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
										<img
										src="<c:url value="/cuuduong.gosu.vn/home/images/sk2.jpg" />" />
									</a> --%>
										<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
											<img
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
										</a>
									</div>
									<div class="container-event-content">
										<h3>
											<!-- <a> href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html">
											[23/03 - 26/03] TÍCH LŨY NẠP VÀNG MỪNG TAM NỘI MÁY CHỦ TRIỆU MẪN
										</a> -->
											<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.tensukien }
											</a>
										</h3>
										<p class="event-date">
											<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.date }
											</a>
										</p>
										<div class="container-event-description">
											<h4>
												<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
													${ item.description }
												</a>
											</h4>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>


						<div class="page">
							<div class="top">
								<a href="#">Lên trên</a>
							</div>
							
						</div>
					</div>
					<!-- END Cộng đồng -->

					<div class="news-content-tab" id='tab5-news'>
						<c:forEach var="item" items="${ event }">
							<c:if test="${ item.id_loaisukien == 5}">
								<div class="container-event-info event-vk">
									<div class="container-event-image">
										<%-- <a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
										<img
										src="<c:url value="/cuuduong.gosu.vn/home/images/sk2.jpg" />" />
									</a> --%>
										<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
											<img
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
										</a>
									</div>
									<div class="container-event-content">
										<h3>
											<!-- <a> href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html">
											[23/03 - 26/03] TÍCH LŨY NẠP VÀNG MỪNG TAM NỘI MÁY CHỦ TRIỆU MẪN
										</a> -->
											<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.tensukien }
											</a>
										</h3>
										<p class="event-date">
											<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.date }
											</a>
										</p>
										<div class="container-event-description">
											<h4>
												<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
													${ item.description }
												</a>
											</h4>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>


						<div class="page">
							<div class="top">
								<a href="#">Lên trên</a>
							</div>
							
						</div>
					</div>
					<!-- END Báo chí -->

					<div class="news-content-tab" id='tab6-news'>
						<c:forEach var="item" items="${ event }">
							<c:if test="${ item.id_loaisukien == 6}">
								<div class="container-event-info event-vk">
									<div class="container-event-image">
										<%-- <a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
										<img
										src="<c:url value="/cuuduong.gosu.vn/home/images/sk2.jpg" />" />
									</a> --%>
										<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
											<img
											src="<c:url value="/cuuduong.gosu.vn/home/images/${ item.hinhev }" />" />
										</a>
									</div>
									<div class="container-event-content">
										<h3>
											<!-- <a> href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html">
											[23/03 - 26/03] TÍCH LŨY NẠP VÀNG MỪNG TAM NỘI MÁY CHỦ TRIỆU MẪN
										</a> -->
											<a href="/CUUDUONGTHANCONG/viewchitiet"> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.tensukien }
											</a>
										</h3>
										<p class="event-date">
											<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
												${ item.date }
											</a>
										</p>
										<div class="container-event-description">
											<h4>
												<a> <!-- href="https://cuuam.gosu.vn/home/news/su-kien/tich-luy-nap-vang-mung-tam-noi-may-chu-trieu-man.html"> -->
													${ item.description }
												</a>
											</h4>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>


						<div class="page">
							<div class="top">
								<a href="#">Lên trên</a>
							</div>
							
						</div>
					</div>
					<!-- END Hướng dẫn -->

				</div>
			</div>
			<!-- session-left -->

			<div class="session-right">
				<div class="box-option">
					<div class="option-1">
						<a></a>
					</div>
					<div class="option-2">
						<a href="/CUUDUONGTHANCONG/monphai"> </a>
					</div>
					<div class="option-3">
						<a></a>
					</div>
					<div class="option-4">
						<a href="/CUUDUONGTHANCONG/vohoc"></a>
					</div>
					<div class="option-5">
						<a></a>
					</div>
				</div>
				<!-- END Bảo Điển, Tân thủ -->

				

				<div class="box-character">
					<div id='tab1-character'>
						<canvas id="canvas" width="239" height="280"></canvas>
					</div>
					<!-- Thiếu Lâm close -->

					<div id='tab2-character'>
						<canvas id="canvas_vodang" width="239" height="280"></canvas>

					</div>
					<!-- Võ Đang close -->

					<div id='tab3-character'>
						<canvas id="canvas_ngami" width="239" height="280"></canvas>
					</div>
					<!-- Nga Mi close -->

					<div id='tab4-character'>
						<canvas id="canvas_caibang" width="239" height="280"></canvas>
					</div>
					<!-- Cái Bang close -->

					<div id='tab5-character'>
						<canvas id="canvas_duongmon" width="239" height="280"></canvas>
					</div>
					<!-- Đường Môn close -->

					<div id='tab6-character'>
						<canvas id="canvas_camyve" width="239" height="280"></canvas>
					</div>
					<!-- Cẩm Y Vệ close -->

					<div id='tab7-character'>
						<canvas id="canvas_quantuduong" width="239" height="280"></canvas>
					</div>
					<!-- Quân Tử Đường close -->

					<div id='tab8-character'>
						<canvas id="canvas_cuclaccoc" width="239" height="280"></canvas>
					</div>
					<!-- Cực Lạc Cốc close -->

					<div id='tab9-character'>
						<canvas id="canvas_kimchamthamgia" width="239" height="280"></canvas>
					</div>
					<!-- Kim Châm Thẩm Gia close -->

					<div id='tab10-character'>
						<canvas id="canvas_tugiatrang" width="239" height="280"></canvas>
					</div>
					<!-- Từ Gia Trang close -->

					<div id='tab11-character'>
						<canvas id="canvas_vanthusontrang" width="239" height="280"></canvas>
					</div>
					<!-- Vạn Thú Sơn Trang close -->

					<div id='tab12-character'>
						<canvas id="canvas_vocanmon" width="239" height="280"></canvas>
					</div>
					<!-- Vô Căn Môn close -->

					<div id='tab13-character'>
						<canvas id="canvas_dihoacung" width="239" height="280"></canvas>
					</div>
					<!-- Di Hoa Cung close -->

					<div id='tab14-character'>
						<canvas id="canvas_daohoadao" width="239" height="280"></canvas>
					</div>
					<!-- Đào Hoa Đảo close -->

					<div id='tab15-character'>
						<canvas id="canvas_langkhach" width="239" height="280"></canvas>
					</div>
					<!-- Vô Môn Phái (Lãng Khách)close -->

					<div id='tab16-character'>
						<canvas id="canvas_truongphongtieucuc" width="239" height="280"></canvas>
					</div>
					<!-- Trường Phong tiêu cục close -->

					<div id='tab17-character'>
						<canvas id="canvas_huyetdaomon" width="239" height="280"></canvas>
					</div>
					<!-- Huyết Đao Môn close -->

					<div id='tab18-character'>
						<canvas id="canvas_niemlaba" width="239" height="280"></canvas>
					</div>
					<!-- Niêm La Ba close -->

					<div id='tab19-character'>
						<canvas id="canvas_thanthuycung" width="239" height="280"></canvas>
					</div>
					<!-- Thần Thủy cung close -->

					<div id='tab20-character'>
						<canvas id="canvas_hoason" width="239" height="280"></canvas>
					</div>
					<!-- Hoa Sơn close -->

					<div id='tab21-character'>
						<canvas id="canvas_como" width="239" height="280"></canvas>
					</div>
					<!-- Cổ mộ close -->

					<ul class='tabs-character' id="owl-monphai">
						<li class="character-1"><a href='#tab1-character'>Thiếu
								Lâm</a></li>
						<li class="character-2"><a href='#tab2-character'>Võ Đang</a></li>
						<li class="character-3"><a href='#tab3-character'>Nga Mi</a></li>
						<li class="character-4"><a href='#tab4-character'>Cái
								Bang</a></li>
						<li class="character-5"><a href='#tab5-character'>Đường
								Môn</a></li>
						<li class="character-6"><a href='#tab6-character'>Cẩm Y
								Vệ</a></li>
						<li class="character-7"><a href='#tab7-character'>Quân Tử
								Đường</a></li>
						<li class="character-8"><a href='#tab8-character'>Cực Lạc
								Cốc</a></li>
						<li class="character-9"><a href='#tab9-character'>Kim
								Châm Thẩm Gia</a></li>
						<li class="character-10"><a href='#tab10-character'>Từ
								Gia Trang</a></li>
						<li class="character-11"><a href='#tab11-character'>Vạn
								Thú Sơn Trang</a></li>
						<li class="character-12"><a href='#tab12-character'>Vô
								Căn Môn</a></li>
						<li class="character-13"><a href='#tab13-character'>Di
								Hoa Cung</a></li>
						<li class="character-14"><a href='#tab14-character'>Đào
								Hoa Đảo</a></li>
						<li class="character-15"><a href='#tab15-character'>Vô
								Môn Phái</a></li>
						<li class="character-16"><a href='#tab16-character'>Trường
								Phong tiêu cục</a></li>
						<li class="character-17"><a href='#tab17-character'>Huyết
								Đao Môn</a></li>
						<li class="character-18"><a href='#tab18-character'>Hoa
								sơn</a></li>
						<li class="character-19"><a href='#tab19-character'>Niêm
								La Ba</a></li>
						<li class="character-20"><a href='#tab20-character'>Thần
								thủy cung</a></li>
						<li class="character-21"><a href='#tab21-character'>Cổ mộ</a></li>
						<!-- <li class="character-22"><a href='#'>Chi tiết</a></li> -->
					</ul>

				</div>
				<!-- END môn phái -->


				<!-- fanpage -->
				<div class="box-fanpage">
					<div class="title-link">
						<span class="icon-title"></span>Fanpage
					</div>
					<ul class="fanpage-content">
						<div class="fb-like-box fb_iframe_widget">
							<div class="_1dro _2ph- clearfix">
								<div class="_2zfs"></div>
								<a class="_3-8_ lfloat"
									href="https://www.facebook.com/thanhdat011" target="_blank"><img
									class="_1drn _-s img"
									src="<c:url value="/cuuduong.gosu.vn/home/images/logo.png"/>"
									height="50" width="50" alt=""></a>
								<div class="lfloat">
									<div>
										<a style="max-width: 140px;" class="_1drp _5lv6"
											title="Cửu Dương Thần Công"
											href="https://www.facebook.com/thanhdat011" target="_blank">Cửu
											Dương Thần Công</a> <span class="hrs1iv20 pq6dq46d"><i
											data-visualcompletion="css-img"
											aria-label="Tài khoản đã xác minh" role="img"
											style="background-image: url(&quot;https://static.xx.fbcdn.net/rsrc.php/v3/y1/r/IJHn5t9uog_.png&quot;); background-position: -106px -92px; background-size: 190px 146px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i></span>
										<span class="_56_f _5dzy _5d-0 _3twv _5d-3"
											aria-label="Trang đã xác minh"></span>
									</div>
									<div class="_1drq" style="max-width: 160px;">500k lượt
										thích</div>
								</div>
							</div>
						</div>
					</ul>
					<style>
.fb_iframe_widget {
	display: inline-block;
	position: relative;
	text-align: center;
	left: 50px;
}
</style>

				</div>
				<!-- END fanpage -->

				<!-- End block banner_banner-event -->

			</div>
			<!-- session-right -->

		</div>
		<!-- session 2 -->
	</div>
	<!-- wapper close -->
	<%@ include file="/WEB-INF/view/layouts/user/footer.jsp"%>
</body>
</html>