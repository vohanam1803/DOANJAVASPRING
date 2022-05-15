<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Cửu Dương Thần Công - Tuyệt phẩm Kiếm Hiệp 3D - Đăng ký</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Game Online Được Mong Chờ Nhất 2013. Phiên Bản Mới - Máy Chủ Mới - Nhiều VIP Code Giá Trị Khủng Tặng Game Thủ"></meta>
	<meta name="keywords" content="cuu am, cack, cuu am chan kinh, chan kinh cuu am, cửu âm chân kinh, game cửu âm, trang chủ cửu âm, cách chơi cửu âm, game online hay, game online mới, game hay nhat, play free game online, online free games, games online for free, free games online to play, free fun games online, best free games online, best free online game, free onlines games, games free online play"></meta>
	<meta name="robots" content="index,follow" />
    <link href="https://static.gosu.vn/home/cack2/register/css/popupmy.css?v=21032019" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://cuuam.gosu.vn/home/third_party/jquery/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="https://cuuam.gosu.vn/home/static/templates/frontend/homepage/js/register-popup.js?v=21032019"></script>

    <script src='https://www.google.com/recaptcha/api.js'></script>

    <title>Đ</title>
    <style type="text/css">
        .error_msg
        {
            color: Red;
            font-weight: bold;
            font-size: 10pt;
            color: Red;
            position: relative;
            top: -5px;
        }

        /*change 15/03/2019*/
        .login-popup {
            width: 375px;
            border-right: 5px solid #112141;
            border-left: 5px solid #112141;
            box-sizing: border-box;
            
            overflow: hidden;
        }
        #content-popup {
            width: 100%;
            margin-left: 0;
        }
        #titleDangKy {
            height: 0;
        }
        #tablePopup, .form-register {
            float: none;
        }
        #contentTabxx, #contenttabxx1 {
            width: 100%;
        }
        #btnSubmitPopup {
            float: none;
        }
    </style>
    <script type="text/javascript">
    	var formValid = false;
        function EmailValidate(email) {
            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (reg.test(email) == false) {
                alert("Địa chỉ email bạn cung cấp không hợp lệ!");
                formValid = false;
                return false;
            }
            else {
                formValid = true;
                return true;
            }
        }
        function CheckAvailability() {
            $.post("https://cuuam.gosu.vn/home/home/validate_username.html",
                {
                    username: $("#UserName").val()
                },
                function(data) {
                    if (data == 1) {
                    	formValid = true;
                        $("#usernamelookupresult").html("<font color='green'>- Tài khoản được chấp nhận.</font>")
                    }
                    else if (data == 0) {
                    	formValid = false;
                        $("#usernamelookupresult").html("<font color='red'>- Tên tài khoản này đã được sử dụng.</font>")
                    }
                    else {
                    	formValid = false;
                        $("#usernamelookupresult").html("<font color='red'>- Định dạng tên tài khoản không đúng.</font>")
                    }
                });
        }

	function CheckPassAvailability() {
            $.post("https://cuuam.gosu.vn/home/home/validate_password.html",
            {
                password: $("#Password1").val()
            },
            function(data) {
                if (data == 1) {
                	formValid = true;
                    $("#passwordlookupresult").html("<font color='green'>- Mật khẩu được chấp nhận</font>");
                }
                else if (data == -1) {
                	formValid = false;
                    $("#passwordlookupresult").html("<font color='red'>- Mật khẩu không hợp lệ </font>");
                }
                else if (data == -3) {
                	formValid = false;
                    $("#passwordlookupresult").html("<font color='red'>- Mật khẩu tối thiểu 8 ký tự gồm: Chữ viết và số </font>");
                }
                else {
                	formValid = false;
                    $("#passwordlookupresult").html("<font color='red'>- Mật khẩu không an toàn</font>");
                }

            });
        }

		function CheckGamePassAvailability() {
			$("span.p-message-error").hide();
						
	        $.post("https://cuuam.gosu.vn/home/home/validate_gamer_password.html",
	        {
	            password: $("#GamePassword").val()
	        },
	        function(data) {
	            if (data == 1) {
	            	formValid = true;
	                $("#gamepasswordlookupresult").html("<font color='green'>- Mật khẩu được chấp nhận</font>");
	            }
	            else if (data == -1) {
	            	formValid = false;
	                $("#gamepasswordlookupresult").html("<font color='red'>- Mật khẩu game phải là ký tự hoặc số</font>");
	            }
	            else if (data == -3) {
	            	formValid = false;
	                $("#gamepasswordlookupresult").html("<font color='red'>- Mật khẩu tối thiểu có 6 ký tự</font>");
	            }
	            else {
	            	formValid = false;
	                $("#gamepasswordlookupresult").html("<font color='red'>- Mật khẩu không an toàn</font>");
	            }
	
	        });
	    }

        function CheckEmail() {
            $.post("https://cuuam.gosu.vn/home/home/validate_email.html",
            {
                email: $("#Email").val()
            },
            function(data) {
                if (data == 1) {
                	formValid = true;
                    $("#emaillookupresult").html("<font color='green'>- Email được chấp nhận.</font>")
                }
                else {
                	formValid = false;
                    $("#emaillookupresult").html("<font color='red'>- Email không đúng hoặc đã sử dụng.</font>")
                }
            });
        }
        function validateForm() {
			if($("#Password").val() != $("#Password1").val()) {
				formValid = false;
				$("#passwordlookupresult2").html("<font color='red'>- Mật khẩu không giống nhau</font>");
				return false;
			}

			/*if($("#GamePassword").val() != $("#GameConfirmPassword").val()) {
				formValid = false;
				$("#gamepasswordlookupresult").html("<font color='red'>- Mật khẩu game không giống nhau</font>");
				return false;
			}*/
            
            if (EmailValidate(document.getElementById('Email').value) == false)
                return false;

			if(!formValid) {
				alert('Dữ liệu chưa hợp lệ xin vui lòng kiểm tra lại');
				return false;
			}
            
            return true;
        }      
    </script>

</head>
<body>
    <!--  BEGIN popup -->
    <input id="choosetab" name="choosetab" type="hidden" value="#contenttabxx1" />
    <input id="chooseTurn" name="chooseTurn" type="hidden" value="1" />
    
        
    <a href="#login-box" class="login-window"></a>
    <div id="login-box" class="login-popup">
        <div id="content-popup">
            <ul>
                <li class="activexx1"></li>               
            </ul>
            <div id="contentTabxx">
                <div id="contenttabxx1" class="subTabxx">
                    <div id="titleDangKy"></div>
					<form:form action="/CUUDUONGTHANCON/resign" method="POST"
						modelAttribute="user">
						<table id="tablePopup" class="form-register" width=""
							cellspacing="0" cellpadding="0" border="0" align="center">
							<tbody>
								<tr>
									<td>
										<!-- <input type="text" placeholder="Tên đăng nhập" />  --><!-- onfocus="myFocus(this);" onblur="myBlur(this);" onchange="CheckAvailability();" placeholder="Tên đăng nhập" name="username" id="UserName" /> -->
										<input type="email" placeholder="Nhập email" path="email" />  
									</td>
								</tr>
								<tr>
									<td>
										<!-- <input type="text" placeholder="Tên đăng nhập" />  --><!-- onfocus="myFocus(this);" onblur="myBlur(this);" onchange="CheckAvailability();" placeholder="Tên đăng nhập" name="username" id="UserName" /> -->
										<input type="text" placeholder="Tên đăng nhập" path="user" />  
									</td>
								</tr>
								<!-- <tr>
                                <td>
                                    <div id="usernamelookupresult">
                                    	                                    </div>
                                </td>
                            </tr> -->
								<tr>
									<td>
										<!-- <input type="password" placeholder="Nhập mật khẩu" /> -->
										<input type="password" placeholder="Nhập mật khẩu" path="password" onfocus="myFocus(this);" onblur="myBlur(this);"  name="password" id="Password1"/> 
										<!-- onchange="CheckPassAvailability();" onfocus="myFocus(this);" onblur="myBlur(this);"  name="password" id="Password1" placeholder="Nhập mật khẩu" /> -->
									</td>
								</tr>
								<!-- <tr>
                                <td>
									<div id="passwordlookupresult">
																			</div>
                                </td>
                            </tr> -->
								<tr>
									<td>
										<!-- <input type="password" placeholder="Nhập lại mật khẩu" /> -->
										<input type="text" placeholder="Nhập họ tên" path="display_name" /> 
										<!-- onfocus="myFocus(this);" onblur="myBlur(this);"  name="passconf" id="Password" placeholder="Nhập lại mật khẩu" /> -->
									</td>
								</tr>
								<!-- <tr>
                                <td>
                                    <div id="passwordlookupresult2">
                                        
                                    </div>
                                </td>
                            </tr> -->

								<!-- <tr style="display: none;">
                                <td>
                                    <input type="text" onfocus="myFocus(this);" onblur="myBlur(this);" onchange="CheckEmail()" placeholder="Địa chỉ email" name="email" id="Email" />
                                </td>
                            </tr> -->
								<!-- <tr>
                                <td>
                                <div id="emaillookupresult"></div>
                                                                    </td> -->
								<!--   </tr>

                                                        <tr>
                                <td style="position: relative;">                                    
                                    <div class="captcha">
                                        <img src="https://cuuam.gosu.vn/home/home/imagecaptcha.html?_CAPTCHA&amp;t=0.79269900+1649397393" alt="" />
                                        <input type="text" name="captcha" class="input-captcha" />
                                    </div>
                                    <span style="position: absolute;top: -18px;color: red;">
                                                                            </span>                                    
                                </td>
                            </tr>
                             -->
								<tr>
									<td>
										<p style="color: red; font-size: 12px; text-align: center;">Mật
											khẩu tối thiểu 8 ký tự gồm: Chữ viết và số</p>
									</td>
								</tr>
							</tbody>
						</table>

						<!-- <table id="tablePopup" class="form-password" width=""
							cellspacing="0" cellpadding="0" border="0" align="center"
							style="display: none;">
							<tr>
								<td>
									<div id="titleDangKyMkGame"></div>
								</td>
							</tr>
							<tr>
								<td>
									<div id="usernamelookupresult"></div>
								</td>
							</tr>
							<tr>
								<td class="mk-game"><input type="password"
									onchange="CheckGamePassAvailability();"
									onfocus="myFocus(this);" onblur="myBlur(this);"
									value="Mật khẩu" name="game_password" id="GamePassword" /></td>
							</tr>
							<tr>
								<td>
									<div id="gamepasswordlookupresult">
										<font color='red'></font>
									</div>
								</td>
							</tr>
							<tr>
								<td class="mk-game"><input type="password"
									onfocus="myFocus(this);" onblur="myBlur(this);"
									value="Mật khẩu" name="game_passconf" id="GameConfirmPassword" />
								</td>
							</tr>

							<tr>
								<td>
									<div id="emaillookupresult">
										<font color='red'></font>
									</div>
								</td>
							</tr>

							                            <tr>
                                <td style="position: relative;">                                    
                                    <div class="captcha">
                                        <img src="https://cuuam.gosu.vn/home/home/imagecaptcha.html?_CAPTCHA&amp;t=0.79269900+1649397393" alt="" />
                                        <input type="text" name="captcha" class="input-captcha" />
                                    </div>
                                    <span style="position: absolute;top: -18px;color: red;">
                                                                            </span>                                    
                                </td>
                            </tr>
                            
						</table> -->

						<!-- <input type="hidden" name="cack_csrf_tkn"
							value="a74e6e8e063a370d2024f1925140f27e" /> -->
						<!-- <input style="height: 59px; margin-top: 7px;" id="btnSubmitPopup"
							class="" type="submit" name="submitForm" value="" /> -->
						<button style="height: 59px; margin-top: 7px; margin-left: 150px;" 
							class="btn btn-block" type="submit" ><a href="/CUUDUONGTHANCONG/index">Đăng Ký</a></button>
					</form:form>
					<p style="text-align: center;">Bạn đã có tài khoản GOSU, <b><a style="color:#000;" id="login_now" href="/CUUDUONGTHANCONG/login">Đăng Nhập Ngay</a></b></p>
                </div>               
            </div>
        </div>
    </div>
    <!--  END popup -->
    

    <style>
        .captcha{
            display: block;
            margin: auto;
            height: 55px;
            position: relative;
        }
        .captcha img{
            height: 45px;
            width: 160px;
            vertical-align: middle;height: 39px;
            width: 160px;
            vertical-align: middle;
            position: absolute;
            top: 0;
        }
        .input-captcha{
            width: 100px !important;
            font-size: 18px !important;
            position: absolute;
            top: 0;
            right: 0;
        }
    </style>

    <script>
        $('#login_now').on('click',function(){
            var return_url = getParameterByName('return_url') || null;
            if(return_url==null ){
                if(parent){
                    return_url = parent.window.location.href;
                } else {
                    return_url = 'https://cuuam.gosu.vn/home/';
                }
            }
            var auth="https://id.gosu.vn/auth/authorize?response_type=code&client_id=cack.Rbvyoow386a86jbCCaLLHo35i3rsFR&redirect_uri=https://cuuam.gosu.vn/home/authenticate.html&popup=true&state="+return_url;
            window.location.replace(auth);
            console.log(auth);

        });

        function getParameterByName(name, url) {
            if (!url) url = window.location.href;
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }
    </script>
</body>
</html>
