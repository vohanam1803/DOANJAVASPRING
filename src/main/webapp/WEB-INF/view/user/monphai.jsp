<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="robots" content="index,follow" />
<meta name="revisit-after" content="1days" />
<title>Cửu Dương Thần Công | Thế giới kiếm hiệp chân thực</title>
<meta name="description"
	content="Thế giới Kiếm hiệp chân thật hơn đón chờ game thủ đích thực. Tất cả có tại Hiệp Khách Hành - phiên bản mới nhất 2015. Gia nhập Tân Giang Hồ ngay!" />
<!--<meta name="keywords" content=""/>-->
<meta name="keywords"
	content="cửu âm chân kinh, thiên hạ biến, Game cuu am chan kinh, Game kiếm hiệp, Game nhập vai, Game MMO, Game Võ Hiệp, Game Võ Lâm, Game cài đặt, Game mới nhất, Game hay nhất, Game vui, Game hot, Game đao kiếm, Game ngạo kiếm, ngạo kiếm vô song, nkvs, vlcm, 9k, vo lam truyen ky, vltk 3, dao kiem 2, ngo khong 3d, ngu long tai thien, phong van, Game PK đỉnh, Game chiến thuật, Game chiến đấu, Game đối kháng, game 3d, 3d game, game 3d moi, game moi, game hay nhat" />
<!--<meta property="og:title" content="Cửu Âm Chân Kinh 2 | Một khi ra đời, Thiên Hạ Đại Loạn" />-->

<meta property="og:description"
	content="Thế giới Kiếm hiệp chân thật hơn đón chờ game thủ đích thực. Tất cả có tại Hiệp Khách Hành - phiên bản mới nhất 2015. Gia nhập Tân Giang Hồ ngay!" />
<meta property="og:image"
	content="http://cuuam.gosu.vn/home/static/uploads/share_1200_628_final.jpg">
	<meta property="og:image:type" content="image/png">

		<link href='https://cuuam.gosu.vn/home/favicon.ico' rel='icon'
			type='image/x-icon' />

		<link rel="stylesheet"
			href="<c:url value="/cuuduong.gosu.vn/monphai/css/style.css"/>"
			type="text/css" />
		<link rel="stylesheet"
			href="<c:url value="/cuuduong.gosu.vn/monphai/css/style_gioithieu.css"/>"
			type="text/css" />

		<script type="text/javascript"
			src="https://cuuam.gosu.vn/home/third_party/jquery/jquery-1.8.2.min.js"></script>
		<script type="text/javascript"
			src="https://cuuam.gosu.vn/home/static/templates/frontend/homepage/js/jquery.fancybox.js"></script>
		<link rel="stylesheet" type="text/css"
			href="<c:url value="/cuuduong.gosu.vn/monphai/css/jquery.fancybox.css"/>" />

		<script type="text/javascript">
			$(document).ready(function() {
				$(".various").fancybox({
					maxWidth : 1000,
					maxHeight : 800,
					fitToView : false,
					width : '50%',
					height : '70%',
					autoSize : false,
					padding : 0,
					openEffect : 'none',
					closeEffect : 'none',
					closeBtn : false
				});
			});
		</script>
</head>
<body>
	<!-- Google Tag Manager -->
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-TQMQMM"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-TQMQMM');
	</script>
	<!-- End Google Tag Manager -->

	<div style="position: fixed; top: 0%; left: 0px; z-index: 9999;">
		<img style="width: 150px;"
			src="<c:url value="/cuuduong.gosu.vn/home/images/AIVO_18+.jpg" />">
	</div>
	<div id="wraper">
		<div class="bg1">
			<div class="w-container">
				<div id="container">
					<!--header-->
					<div id="header">
						
						<div class="menu-top">
							<ul class="menu-ul">
								<li class="menu-li home active"><a
									href="<c:url value="/"/>"></a></li>
								<li class="menu-li gioithieu "><a
									href="/CUUDUONGTHANCONG/monphai"></a></li>
								<li class="menu-li huongdantanthu"></li>
								<li class="menu-li huongdancaothu"></li>
							</ul>
						</div>
						<div class="more-menu">
							<ul class="menu-ul">
								<li class="menu-li fir"><a target="_blank"
									href="<c:url value="/"/>">Trang chủ</a></li>
								<li class="menu-li"><a target="_blank">Diễn đàn</a></li>
								<li class="menu-li las"><a target="_blank">Fanpage</a></li>
							</ul>
							<!-- <div class="search">
                  <form id="form_search" method="post" enctype="multipart/form-data" action="https://cuuam.gosu.vn/home/cuu-am-bao-dien/tim-kiem.html">
                    <input class="t-search" type="text" name="search" placeholder="Tìm thông tin..."/>
                    <input class="b-search" type="submit" value=" " />
                  </form>
                </div> -->
						</div>
					</div>
					<!--end header-->
					<!--main-->
					<div id="main">
						<div class="left">
							<div class="categoy gioithieu"></div>
							<div class="list-news">
								<!--1-->
								<div class="cack">
									<a
										href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/gioi-thieu-cuu-am-chan-kinh-2">
										<div class="category-news cack "></div>
									</a>
								</div>
								<!--2-->
								<div class="news">
									<div class="category-news dacsac "></div>
									<!-- <ul class="menu-ul">
															<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/do-hoa">
								Đồ Họa							</a>
						</li>
											<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/khong-cap-do">
								Không Cấp Độ							</a>
						</li>
											<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/vo-hoc">
								Võ Học							</a>
						</li>
											<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/khinh-cong-150262666">
								Khinh Công							</a>
						</li>
											<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/nghe-nghiep">
								Nghề nghiệp							</a>
						</li>
											<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/ky-ngo">
								Kỳ Ngộ							</a>
						</li>
											<li class="menu-li ">
							<a href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/dac-sac/offline">
								Offline							</a>
						</li>
												</ul>  -->
								</div>
								<!--3-->
								<div class="news">
									<div class="category-news monphai active"></div>
									<ul class="menu-ul">
										<li class="menu-li active"><a
											href="/CUUDUONGTHANCONG/thieulam"> Thiếu Lâm </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/vodang">
												Võ Đang </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/caibang">
												Cái Bang </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/ngami">
												Nga Mi </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/quantuduong"> Quân Tử Đường </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/duongmon">
												Đường Môn </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/camyve">
												Cẩm Y Vệ </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/cuclaccoc"> Cực Lạc Cốc </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/kimchamthamgia"> Kim Châm Thẩm
												Gia </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/tugiatrang"> Từ Gia Trang </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/vanthusontrang"> Vạn Thú Sơn
												Trang </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/vocanmon">
												Vô Căn Môn </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/dihoacung"> Di Hoa Cung </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/daohoadao"> Đào Hoa Đảo </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/vomonphai"> Vô Môn Phái </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/como">
												Cổ Mộ </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/huyetdaomon"> Huyết Đao Môn </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/truongphongtieucuc"> Trường Phong
												Tiêu Cục </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/niemlaba">
												Niệm La Bá </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/hoason">
												Hoa Sơn </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/thanthuycung"> Thần Thủy Cung </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/datma">
												Đạt Ma </a></li>
										<li class="menu-li "><a
											href="/CUUDUONGTHANCONG/ngutiengiao"> Ngũ Tiên Giáo </a></li>
										<li class="menu-li "><a href="/CUUDUONGTHANCONG/minhgiao">
												Minh Giáo </a></li>
									</ul>
								</div>
								<!--4-->
								<div class="phienban">
									<a
										href="https://cuuam.gosu.vn/home/cuu-am-bao-dien/gioi-thieu/phien-ban">
										<div class="category-news phienban "></div>
									</a>
								</div>
							</div>
						</div>

						<div class="right">
							<div class="no"></div>
							<div class="content">


								<div class="content-title">
									<h2>Thiếu Lâm</h2>
								</div>

								<div class="content-menu">
									<ul class="menu-ul">
										<li class="menu-li active"><a> Giới thiệu </a></li>
										<li class="menu-li ">Nội công</li>
										<li class="menu-li ">Võ học</li>
										<li class="menu-li ">Ngoại trang</li>
									</ul>
								</div>

								<div class="line-bottom"></div>

								<div class="content-text">
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">&nbsp;<img
											alt="" width="550" /><img
											style="display: block; margin-left: auto; margin-right: auto;"
											src="http://cuuam.gosu.vn/home/static/uploads/library/wallpaper/7.jpg"
											alt="" width="550" /><br /></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><span
											class="content-event-first">C</span>h&ugrave;a x&acirc;y ở
											Thiếu Thất Sơn L&acirc;m, n&ecirc;n mới đặt t&ecirc;n
											l&agrave; <strong>Thiếu L&acirc;m</strong>, họa h&igrave;nh
											như hoa sen nở giữa n&uacute;i Tung Sơn. Thiếu L&acirc;m Tự
											kh&ocirc;ng chỉ thiền học phật m&ocirc;n uy&ecirc;n
											b&aacute;c, v&otilde; học cũng l&agrave; bậc thầy thi&ecirc;n
											hạ về c&ocirc;ng phu. </span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">Nơi
											đ&acirc;y bồi dưỡng v&ocirc; số cao thủ v&otilde; l&acirc;m,
											từ khi lập ph&aacute;i đến nay <strong>Thiếu
												L&acirc;m</strong> lu&ocirc;n lấy chủ trương ch&iacute;nh nghĩa
											l&agrave;m mục đ&iacute;ch, do đ&oacute; m&agrave; c&oacute;
											uy danh rất lớn.
										</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;">Trong
											<strong>Cửu &Acirc;m Ch&acirc;n Kinh</strong> nội c&ocirc;ng
											quyết định tương lai của nh&acirc;n vật, nội c&ocirc;ng của
											ph&aacute;i <strong>Thiếu L&acirc;m</strong> th&igrave;
											th&acirc;n thể l&agrave; tăng trưởng cao nhất b&aacute;t đại
											ph&aacute;i, đồng thời <strong>Thiếu L&acirc;m</strong>
											c&oacute; rất nhiều kỹ năng khống chế, v&igrave; thế trong
											khi khi&ecirc;u chiến phụ bản đ&acirc;y ch&iacute;nh
											l&agrave; nh&acirc;n vật chuy&ecirc;n đối kh&aacute;ng
											c&ocirc;ng k&iacute;ch của địch. Ở phương diện PK đối chiến,
											thao t&aacute;c v&otilde; c&ocirc;ng <strong>Thiếu
												L&acirc;m</strong> đơn giản, tạo s&aacute;t thương thuộc tầm trung
											trong b&aacute;t đại m&ocirc;n ph&aacute;i. Phối hợp với kỹ
											năng khống chế khiến đối thủ kh&oacute; chống đỡ.
										</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><br
											class="Apple-interchange-newline" />
										<img
											style="display: block; margin-left: auto; margin-right: auto;"
											src="http://cuuam.gosu.vn/home/static/uploads/trang-tong-hop/thap-ngu-mach-phai/thieu-lam.png"
											alt="" /></span>
									</p>
									<p>&nbsp;</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>Ph&aacute;i:
										</strong>Ch&iacute;nh ph&aacute;i</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>Định
												vị: </strong>Cận chiến</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>Vũ
												kh&iacute;: </strong>Quyền ph&aacute;p &ndash; Trường C&ocirc;n</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>Đặc
												sắc v&otilde; học: </strong>L&agrave;m cho&aacute;ng nh&oacute;m</span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>&nbsp;</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>V&otilde;
												học m&ocirc;n ph&aacute;i:</strong> <span style="color: #ff6600;"><strong>Th&aacute;i
													Tổ Trường Quyền &ndash; Đạt Ma C&ocirc;n Ph&aacute;p
													&ndash; Vi Đ&agrave; C&ocirc;n Ph&aacute;p</strong></span></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>V&otilde;
												c&ocirc;ng trấn ph&aacute;i: <span style="color: #008000;">Long
													Trảo Thủ</span>
										</strong></span>
									</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif;"><strong>Bảo
												vật trấn ph&aacute;i: <span style="color: #800000;">Đạt
													Ma X&aacute; Lợi</span>
										</strong></span>
									</p>
									<p>&nbsp;</p>
									<p>
										<span
											style="font-size: 10pt; font-family: tahoma, arial, helvetica, sans-serif; color: #000000;"><strong>Điều
												kiện gia nhập: </strong>V&ocirc; M&ocirc;n Ph&aacute;i.<strong>&nbsp;</strong>Nam
											nh&acirc;n chưa kết h&ocirc;n. Danh vọng giang hồ đạt 383.</span>
									</p>
								</div>

							</div>
							<a href="#" class="scrollToTop"><span class="btn-top"></span></a>
						</div>
					</div>
					<!--endmain-->
				</div>

				<!--Footer-->
				<div id="footer">
					<div class="text">
						<p>
							<a
								href="http://cuuam.gosu.vn/home/news/tin-tuc/quy-dinh-tham-gia-game-thuoc-cong-dong-cuu-am-chan-kinh.html"
								target="_blank">Điều khoản sử dụng</a> <a
								href="https://id.gosu.vn/" target="_blank">Bảo mật tài khoản</a>
							<a
								href="http://cuuam.gosu.vn/home/cuu-am-bao-dien/tan-thu/co-ban/tai-va-cai-dat-game.html"
								target="_blank">Hướng dẫn cài đặt & gỡ bỏ</a> <a
								href="https://id.gosu.vn/News/Details/29" target="_blank">Thanh
								toán</a>
						</p>
						<p>© GOSU độc quyền phát hành tại Việt Nam</p>
						<p>Địa chỉ: 85 Nguyễn Chí Thanh, Phường Láng Hạ, Quận Đống Đa,
							Hà Nội.</p>
						<p>Giấy phép số 2474/QĐ-BTTTT do Bộ Thông tin và Truyền thông
							cấp ngày 29/12/2015</p>
					</div>
				</div>
				<!--End Footer-->
			</div>
		</div>
		<div class="bg2"></div>
		<div class="bg3"></div>
	</div>

	<!--js-->
	<script type="text/javascript"
		src="https://cuuam.gosu.vn/home/static/templates/frontend/homepage/cack2/guide/js/gioithieu_init.js"></script>
	<!--js-->
</body>
</html>
