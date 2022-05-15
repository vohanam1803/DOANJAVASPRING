<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<meta name="robots" content="index,follow" />

	<!-- <title>Cửu Dương Thần Công | Game nhập vai kiếm hiệp 3D hay nhất</title> -->
	<meta name="description"
		content="Game kiếm hiệp Client 3D mang đến trải nghiệm hoàn hảo với đồ họa đỉnh cao, tính năng không giới hạn và cộng đồng đông đảo. Game hardcore dành cho game thủ hardcore!" />
	<!--<meta name="keywords" content=""/>-->
	<meta name="keywords"
		content="cửu dương thần công, thiên hạ biến, Game cuu duong than cong, Game kiếm hiệp, Game nhập vai, Game MMO, Game Võ Hiệp, Game Võ Lâm, Game cài đặt, Game mới nhất, Game hay nhất, Game vui, Game hot, Game đao kiếm, Game ngạo kiếm, ngạo kiếm vô song, nkvs, vlcm, 9k, vo lam truyen ky, vltk 3, dao kiem 2, ngo khong 3d, ngu long tai thien, phong van, Game PK đỉnh, Game chiến thuật, Game chiến đấu, Game đối kháng, game 3d, 3d game, game 3d moi, game moi, game hay nhat" />
	<!--<meta property="og:title" content="Cửu Dương Thần Công | Kiếm hiệp 3D hardcore chân thực nhất" />-->

	<meta property="og:description"
		content="Game kiếm hiệp Client 3D mang đến trải nghiệm hoàn hảo với đồ họa đỉnh cao, tính năng không giới hạn và cộng đồng đông đảo. Game hardcore dành cho game thủ hardcore!" />
	<meta name="google-site-verification"
		content="j5VzirNC2p9Ry58SrTGw9g8cC7I1XWKPNKy1KiYhWu0" />
	<link href='favicon.ico' rel='icon' type='image/x-icon' />
	<meta property="og:title"
		content="Cửu Dương Thần Công | Game nhập vai kiếm hiệp 3D hay nhất" />
	<meta property="og:description"
		content="Game kiếm hiệp Client 3D mang đến trải nghiệm hoàn hảo với đồ họa đỉnh cao, tính năng không giới hạn và cộng đồng đông đảo. Game hardcore dành cho game thủ hardcore!" />

	<meta property="fb:app_id" content="2286840468266899" />
	<meta property="fb:pages" content="373260602742823" />
	<meta property="og:locale" content="vi_VN" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="http://cuuduong.gosu.vn/home/" />
	<meta property="og:site_name"
		content="Cửu Dương Thần Công | Game nhập vai kiếm hiệp 3D hay nhất" />


	<link rel="stylesheet" type="text/css"
		href="<c:url value="/cuuduong.gosu.vn/home/css/slick-theme.css" />">
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/cuuduong.gosu.vn/home/css/slick.css" />">
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/cuuduong.gosu.vn/home/css/style.css" />">

	<!-- CSS footer -->
	<link type="text/css"
		href="<c:url value="/cuuduong.gosu.vn/home/css/jquery.fancybox.css"/>"
		rel="stylesheet" />
	<link href="<c:url value="/cuuduong.gosu.vn/home/css/base.css"/>"
		rel="stylesheet" type="text/css">
	<!-- close -->

	<link
		href="<c:url value="/cuuduong.gosu.vn/home/css/nivo-slider.css"/>"
		rel="stylesheet" type="text/css">

	<style type="text/css">
.content-footer {
	top: 25px;
}

.footer-link {
	height: 30px;
	left: 190px;
	position: absolute;
	top: 4px;
	width: 520px;
}

.footer-link ul {
	list-style: none;
}

.footer-link li {
	float: left;
	margin-left: 5px;
	color: #000;
}

.footer-link li a {
	color: #2e2e2e;
	font-size: 12px;
	font-family: Tahoma;
}

.footer-link li a:hover {
	color: #E80812;
}
</style>


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

	<script type="text/javascript">
		$(document).ready(function() {
			$(".various").fancybox({
				maxWidth : 375,
				maxHeight : 470,
				fitToView : false,
				width : '375',
				height : '470',
				autoSize : false,
				closeClick : false,
				openEffect : 'none',
				closeEffect : 'none',
				padding : 0
			});
		});
	</script>

	<!-- CCCC -->
	<script type="text/javascript">
		$(window).load(function() {
			$('#slider').nivoSlider();

			$('#owl-monphai').slick({
				dots : false,
				infinite : false,
				speed : 300,
				slidesToShow : 6,
				slidesToScroll : 6,
			});
		});
	</script>


	<script>
		var popup_status = 0;
		$(document).ready(function() {
			if (popup_status == 1) {
				$("#login-box").css("display", "none");
				$("#mask").css("display", "none");
			} else {
				setTimeout(function() {
					if ($('#close').attr('rel') == 1) {
						FadePopup('a.login-window');
					}
				}, 3000);
			}
		});
	</script>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>


	<!-- Google Analytics -->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-37632868-1' ]);
		_gaq.push([ '_setDomainName', 'gosu.vn' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://'
					: '//')
					+ 'stats.g.doubleclick.net/dc.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<!-- End Google Analytics -->

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

	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/jquery-1.8.2.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/init.js" />"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/slick.js"/>"></script>
	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/easeljs-0.8.1.min.js"/>"></script>
	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/tweenjs-0.6.1.min.js"/>"></script>
	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/movieclip-0.8.1.min.js"/>"></script>
	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/preloadjs-0.6.1.min.js"/>"></script>

	<!-- footer script -->
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/jquery-ui.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/fadegallery.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/common.js"/>"></script>

	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/balon-init.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/popup-init.js"/>"></script>

	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/jquery.nivo.slider.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/jquery.gosupopup.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/cuuduong.gosu.vn/home/js/jquery.fancybox.js"/>"></script>
	<!-- Close SF -->
	<script type="text/javascript">
		var canvas_url = "https://cuuam.gosu.vn/home/static/templates/frontend/homepage/cack2/canvas/";
	</script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/Caibang.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/CamYve.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/CoMo.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/CucLacCoc.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/DaoHoaDao.js"/>"></script>

	<script src="<c:url value="/cuuduong.gosu.vn/home/js/DiHoaCung.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/DuongMon.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/FULLvideo.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/HoaSon.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/HuyetDaoMon.js"/>"></script>

	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/KimChamThamGia.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/LangKhach.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/NgaMi.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/NiemLaba.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/QuanTuDuong.js"/>"></script>

	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/ThanThuyCung.js"/>"></script>
	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/TruongPhongTieuCuc.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/TuGiaTrang.js"/>"></script>
	<script
		src="<c:url value="/cuuduong.gosu.vn/home/js/VanThuSonTrang.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/VoCanMon.js"/>"></script>

	<script src="<c:url value="/cuuduong.gosu.vn/home/js/Vodang.js"/>"></script>
	<script src="<c:url value="/cuuduong.gosu.vn/home/js/Taigame.js"/>"></script>

	<script src="<c:url value="/cuuduong.gosu.vn/home/js/canvas.js"/>"></script>
</header>

<body id="body" onload="init();">
	<div style="position: fixed; top: 0%; left: 0px; z-index: 9999;">
		<img style="width: 150px;"
			src="<c:url value="/cuuduong.gosu.vn/home/images/AIVO_18+.jpg" />">
	</div>
	
	<div style="position: fixed; top: 0%; right: 0px; z-index: 9999;">
		<c:if test="${ empty LoginInfo }">
			<div class="optionRight">
				<a href="/CUUDUONGTHANCONG/login">Login /</a> 
				<a href="/CUUDUONGTHANCONG/register">Register</a>
			</div>
		</c:if>
		<c:if test="${ not empty LoginInfo }">
			<div class="optionRight">
				<a href="#">${ LoginInfo.display_name } /</a> 
				<a href="/CUUDUONGTHANCONG/Logout">Đăng Xuất</a>
			</div>
		</c:if>
	</div>
	<style>
.optionRight {
	color: #e8dcbb;
	text-decoration: none;
	outline: none;
	font-size: 25px;
}
.optionRight .a
{
	color: #e8dcbb;
}
</style>
	<div class="wrap-bg">
		<div id="header">
			<div class="container">
				<div class="nav" id="nav">
					<ul class="nav-list">
						<li class="firstopt"><a class="nav-link" href="">Tin tức</a></li>
						<li><a class="nav-link">Giới thiệu</a></li>
						<li><a class="nav-link" href="">Hướng dẫn</a></li>
						<li><a class="nav-link" href="" target="_blank">Download</a></li>
						<li class="logo"><a href=""
							style="width: 150px; height: 150px; position: absolute; margin-left: -50px;"
							class="nav-link"></a></li>
						<li><a class="nav-link" href="">Đặc sắc</a></li>
						<li><a class="nav-link">Thư viện</a></li>
						<li><a class="nav-link" target="_blank" href="">Hỗ trợ</a></li>
						<li class="bord"><a class="nav-link" href="">Cộng đồng</a></li>
					</ul>

					<ul class="navexpand-list pa">
						<li class="firstopt"><a class="navexpand-link"
							target="_blank" href="">Tin tức</a> <a class="navexpand-link"
							target="_blank" href="">Sự kiện</a> <a class="navexpand-link"
							target="_blank" href=""> Cộng đồng</a></li>
						<li><a class="navexpand-link" target="_blank">Cửu Dương</a> <a
							class="navexpand-link" href="/CUUDUONGTHANCONG/monphai"
							target="_blank">Phái-Thế Lực</a> <a class="navexpand-link"
							href="" target="_blank">Phiên bản</a></li>
						<li><a class="navexpand-link" target="_blank">Cài đặt
								game</a> <a class="navexpand-link" href="/CUUDUONGTHANCONG/resign"
							target="_blank">Đăng ký</a> <a class="navexpand-link"
							target="_blank">KN Tân Thủ</a> <a class="navexpand-link"
							target="_blank">KN Cao Thủ</a></li>
						<li><a class="navexpand-link" target="_blank">Download</a> <a
							class="navexpand-link" target="_blank">Cấu hình yêu cầu</a></li>
						<!-- Logo giữa đầu -->
						<li class="navexpand-logo">
							<h1>
								<a href=""
									style="width: 150px; height: 150px; position: absolute;"></a>
							</h1>
						</li>
						<li><a class="navexpand-link" target="_blank">Đồ họa</a> <a
							class="navexpand-link" target="_blank">Không cấp độ</a> <a
							class="navexpand-link" href="/CUUDUONGTHANCONG/vohoc"
							target="_blank">Võ học</a> <a class="navexpand-link"
							target="_blank">Khinh công</a> <a class="navexpand-link"
							target="_blank">Nghề nghiệp</a> <a class="navexpand-link"
							target="_blank">Kỳ ngộ</a> <a class="navexpand-link"
							target="_blank">Không Offline</a></li>
						<li><a class="navexpand-link" target="_blank">Wallpaper</a> <a
							class="navexpand-link" target="_blank">Artwork</a> <a
							class="navexpand-link" target="_blank">Screenshot</a> <a
							class="navexpand-link" target="_blank">Clip/Video</a></li>
						<li></li>
						<li class="bord"><a class="navexpand-link" href=""
							target="_blank">Diễn đàn</a> <a class="navexpand-link"
							href="https://www.facebook.com/cuuam.gosu.vn" target="_blank">Fanpge</a>
						</li>
					</ul>
				</div>
				<!-- nav close -->
			</div>


		</div>
	</div>
</body>