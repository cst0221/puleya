<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--商品注册-->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册账号 - 完美世界通行证</title>
    <link rel="stylesheet" href="/static/css/style.css">
    <link rel="stylesheet" href="/static/css/register.css">
    <script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
</head>
<body>
<div class="topbar-register cl">
    <h1 class="fl logo fl"><a target="_blank" href="#"><img src="/static/images/logo.png" alt=""></a>
    </h1>
    <div class="lan_tab fr">
        <a class="ch" locale="zh-CN" href="javascript:void(0);">简体中文</a>
    </div>
</div>
<div class="as_register">
    <div class="lan_tab">
        <a class="ch" locale="zh-CN" href="javascript:void(0);">简体中文</a><i>|</i><a class="en" locale="en" href="javascript:void(0);">English</a>
    </div>
    <div class="as_wrap ">
        <a class="logo" href="javascript:void(0);"></a>

        <div id="tabCh" class="lan_tabpage tabch" style="display: block;">
            <h2 class="tit">注册完美通行证</h2>
            <p class="vicetit">创建完美世界账号，抢先享受全方位的游戏服务</p>
            <div class="func_tab cl">
            	<c:choose>
            		<c:when test="${type=='0'}">
		                <a href="/registerView?type=0" class="cur">手机注册（推荐）<i></i></a>
		                <a href="/registerView?type=1" class="">邮箱注册 <i></i></a>
            		</c:when>
            		<c:otherwise>
		                <a href="/registerView?type=0" class="">手机注册（推荐）<i></i></a>
		                <a href="/registerView?type=1" class="cur">邮箱注册 <i></i></a>
            		</c:otherwise>
            	</c:choose>
            </div>
            <div class="func_tabpage" style="display: block;">
                <!--表单-->
                <form id="registerForm" action="" autocomplete="off">
                	<input type="hidden" name="rid" value="2">
                    <input type="hidden" name="from" value="0">
                    <input type="hidden" name="s" value="">
                    <div class="ibox mb17">
	                    <c:if test="${type eq '0'}">
	                     	<input name="tel" required="required" class="t_phone" type="text" onblur="checkPhone()" placeholder="手机号">
						</c:if>
						<c:if test="${type eq '1'}">
	                     	<input name="email" required="required" class="t_phone" type="email" onblur="checkEmail()" placeholder="邮箱">
						</c:if>
                        <i></i>
                        <span id="hint_id" class="ihint ihint_error" ></span>
                    </div>
                    <div class="ibox ibox_eye">
                        <label class="pwshow" for="psw"></label>
                        <input name="password" required="required" class="password" type="password" 
                        placeholder="密码（由6-16位字母、数字及字符组成" id="psw" onblur="checkPwd()">
                        <i></i>
                        <span id="hint_pwd" class="ihint ihint_error" ></span>
                    </div>
                    <div class="ibox ibox_eye mb34">
                        <label class="pwshow" for="repeat"></label>
                        <input required="required" onblur="checkRep()" class="repeat" type="password" placeholder="重复密码" id="repeat">
                        <i></i>
                        <span id="hint_rep" class="ihint ihint_error" ></span>
                    </div>
                    <div class="ibox mb17">
                        <input name="relname" required="required" type="text" placeholder="真实姓名">
                        <i></i>
                        <span class="ihint ihint_error" style="display: none;"></span>
                    </div>
                    <div class="ibox mb17">
                        <input name="keyidentity" required="required" type="text" placeholder="身份证">
                        <i></i>
                        <span class="ihint ihint_error" style="display: none;"></span>
                    </div>
            <!--         <div class="cl vbox">
                        <div class="fl vboxl">
                            <div class="ibox">
                                <input name="rand" type="text" placeholder="验证码">
                                <i></i>
                            </div>
                        </div>
                        <div class="fl vboxr">
                            <a class="getMobileRand" href="javascript:void(0);">获取验证码</a>
                        </div>
                    </div>
                    <div class="cbox">
                        <input class="acceptcb" type="checkbox" checked="checked">
                        <i class="check"></i>
                        <span>我接受<a target="_blank" href="#">《完美通行证用户协议》</a>&nbsp;&nbsp;<a
                                target="_blank"
                                href="#">《隐私政策》</a></span>
                    </div> -->
                    <a class="rbtn_com rbtn_s1 mb15" href="javascript:register();" >免费注册通行证</a>
                    <a class="rbtn_com rbtn_s2" href="#">已经有通行证了？</a>
                </form>
            </div>


                <style>#mCaptcha .mCaptchaSliderShowOut *, #mCaptcha .mCaptchaSliderShowOut {
                    padding: 0;
                    margin: 0;
                    font-family: "微软雅黑";
                    box-sizing: content-box;
                    text-align: left;
                    line-height: 20px;
                }

                #mCaptcha .mCaptchaSliderShowOut {
                    position: relative;
                    z-index: 10000;
                    width: 292px;
                }

                #mCaptcha .mCaptchaSlideSuccess {
                    background-image: url(images/slidersuccess.png);
                    width: 260px;
                    height: 120px;
                    background-size: 260px 120px;
                    top: 0;
                    z-index: 100;
                    position: absolute;
                    left: 260px;
                }

                #mCaptcha .mCaptchaSliderShowOut .sliderImgOuterContainer {
                    overflow: hidden;
                    left: 1px;
                }

                #mCaptcha .sliderImgOuterContainer a.sliderImgRefreshBtn {
                    text-decoration: none;
                    cursor: pointer;
                    outline: none;
                }

                #mCaptcha .mCaptchaImgDiv {
                    float: left;
                    width: 13px;
                    height: 50%;
                }

                #mCaptcha .mCaptchaContainer {
                    display: block;
                    width: 260px;
                    height: 120px;
                }

                #mCaptcha .mCaptchaCubic {
                    z-index: 10;
                    display: none;
                    position: absolute;
                    width: 61px;
                    height: 120px;
                    top: 0;
                    left: 0;
                }

                #mCaptcha .sliderImgOuterContainer {
                    width: 260px;
                    height: 120px;
                    box-sizing: content-box;
                    -moz-box-sizing: content-box;
                    -webkit-box-sizing: content-box;
                    position: relative;
                    display: inline-block;
                    font-size: 0;
                    background: url("images/loading.png") no-repeat center #dbdbdb;
                }

                #mCaptcha #sliderImgContainer {
                    position: absolute;
                    width: 260px;
                    height: 120px;
                    left: 320px;
                }

                #mCaptcha .sliderImgOuterContainerWrapper {
                    display: none;
                    position: absolute;
                    width: 260px;
                    height: 120px;
                    left: 0px;
                    background: url("images/bg.png") no-repeat center;
                    z-index: 1;
                }

                #mCaptcha .sliderImgAlert {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 260px;
                    height: 120px;
                    overflow: hidden;
                }

                #mCaptcha .sliderImgAlert p.text {
                    margin: 0;
                    display: none;
                    position: absolute;
                    z-index: 100;
                    width: 100%;
                    height: 21px;
                    bottom: 0px;
                    color: white;
                    font-size: 13px;
                    line-height: 21px;
                    text-align: center;
                }

                #mCaptcha .sliderImgAlert p.text span {
                    float: none;
                    vertical-align: baseline;
                }

                #mCaptcha .sliderImgAlert p.text .wred {
                    color: white;
                }

                #mCaptcha .sliderImgAlert p.text .wgreen {
                    color: white;
                }

                #mCaptcha .sliderContorlBtns {
                    position: absolute;
                    right: 43px;
                    top: 22px;
                    z-index: 1000;
                }

                #mCaptcha .sliderImgRefreshBtn {
                    height: 25px;
                    width: 23px;
                    background-position: 0px -82px;
                    position: absolute;
                    left: 14px;
                    top: -18px;
                    background-image: url("images/icon.png");
                    cursor: pointer;
                }

                #mCaptcha .sliderImgRefreshBtn:hover {
                }

                #mCaptcha .sliderImgHelpBtn {
                    height: 14px;
                    width: 14px;
                    background-position: 0 -582px;
                    position: absolute;
                    left: 30px;
                    top: 0;
                    background-image: url("images/icon.png");
                    cursor: pointer;
                }

                .sliderImgHelpBtn:hover {
                    background-position: 0 -596px;
                }

                #mCaptcha .mCaptchaSliderContainer {
                    height: 32px;
                    width: 262px;
                    position: relative;
                }

                #mCaptcha .mCaptchaSlide {
                    height: 18px;
                    width: 13px;
                    background-position: -2px -1px;
                    display: block;
                    position: absolute;
                    top: 9px;
                    left: 19px;
                    background-image: url("images/icon.png");
                    cursor: move;
                }

                #mCaptcha .mCaptchaSlide.active {
                    background-position: -2px -20px;
                }

                #mCaptcha .mCaptchaSlide.success {
                    height: 18px;
                    width: 20px;
                    background-position: -2px -41px;
                    absolute;
                    top: 8px;
                    left: 15px;
                }

                #mCaptcha .mCaptchaSlide.fail {
                    height: 18px;
                    width: 20px;
                    background-position: -2px -64px;
                    absolute;
                    top: 8px;
                    left: 18px;
                }

                #mCaptcha .mCaptchaSliderBg {
                    height: 32px;
                    background: #ffffff;
                    border: 1px solid #dfdfdf;
                    position: relative;
                }

                #mCaptcha .mCaptchaSliderProcess {
                    position: absolute;
                    height: 34px;
                    background-color: #999999;
                }

                #mCaptcha .mCaptchaSliderProcess.success {
                    background-color: #3cd05e;
                }

                #mCaptcha .mCaptchaSliderProcess.fail {
                    background-color: #e03434;
                }

                #mCaptcha .mCaptchaSliderProcessText {
                    line-height: 20px;
                    font-size: 14px;
                    position: absolute;
                    z-index: 1;
                    width: 150px;
                    height: 20px;
                    color: #e03434;
                    left: 75px;
                    top: 5px;
                    letter-spacing: 1px;
                }

                #mCaptcha .mCaptchaSliderResult.success {
                    display: none;
                    height: 19px;
                    width: 28px;
                    background-position: 0px -64px;
                    background-repeat: no-repeat;
                    background-image: url(images/icon.png);
                    position: absolute;
                    left: 50%;
                    z-index: 1;
                    margin-left: -14px;
                    top: 50%;
                    margin-top: -9.5px;
                    background-position: 0px -64px;
                }

                #mCaptcha .mCaptchaSliderResult.fail {
                    display: none;
                    background-repeat: no-repeat;
                    background-image: url(images/icon.png);
                    position: absolute;
                    height: 23px;
                    width: 23px;
                    background-position: 0px -89px;
                    left: 50%;
                    z-index: 1;
                    margin-left: -11.5px;
                    top: 50%;
                    margin-top: -9.5px;
                }

                #mCaptcha .mCaptchaSlideBorder {
                    position: relative;
                    height: 34px;
                    width: 48px;
                    border: 1px solid #d9d9d9;
                    border-radius: 5px;
                    background-color: #ffffff;
                    -webkit-box-shadow: 0 0 10px 15px #0CC;
                    -moz-box-shadow: 0 0 2px 1px #d9d9d9;
                    -o-box-shadow: 0 0 2px 1px #d9d9d9;
                    -ms-box-shadow: 0 0 2px 1px #d9d9d9;
                    box-shadow: 0 0 2px 1px #d9d9d9;
                    top: -2px;
                }

                #mCaptcha .uptype.mCaptchaSliderShowOut {
                    display: none;
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                }

                #mCaptcha .mCaptchaSliderheader {
                    display: none;
                }

                #mCaptcha .mCaptchaSliderShowOut .blackbg {
                    display: none;
                }

                #mCaptcha .uptype.mCaptchaSliderShowOut .blackbg {
                    display: block;
                    width: 100%;
                    height: 100%;
                    position: fixed;
                    background-color: black;
                    opacity: 0.6;
                    filter: alpha(opacity=60);
                }

                #mCaptcha .uptype.mCaptchaSliderShowOut .mCaptchaSliderShowBox {
                    z-index: 1;
                    background: white;
                    position: relative;
                    border-radius: 10px;
                    overflow: hidden;
                    position: absolute;
                    left: 50%;
                    top: 50%;
                    margin: -135px 0 0 -155px !important;
                }

                #mCaptcha .uptype.mCaptchaSliderShowOut .sliderContentBox {
                    padding: 10px 30px 15px 15px;
                }

                #mCaptcha .uptype.mCaptchaSliderShowOut .mCaptchaSliderheader {
                    display: block;
                    background: #ddd;
                    font-size: 14px;
                    line-height: 42px;
                    border-top-left-radius: 10px;
                    border-top-right-radius: 10px;
                    text-indent: 20px;
                    color: #677D8B;
                }

                #mCaptcha .uptype.mCaptchaSliderShowOut .mCaptchaSliderheader .mCaptchaSlidercancel {
                    background-image: url("images/cancel.png");
                    height: 14px;
                    width: 14px;
                    background-position: -2px -2px;
                    cursor: pointer;
                    position: absolute;
                    right: 20px;
                    top: 14px;
                }</style>
            </div>
        </div>
        <div id="isMCaptcha" style="display: none"></div>


    </div>
</div>
<!--插入圆圈-->
<script type="text/javascript">
    (function () {
        if (!$('.as_register').length) {
            return
        }
        var circle = ["<div class='circle-box'><div class='circle-1'></div>"];
        circle.push("<div class='circle-2'></div>");
        circle.push("<div class='circle-3'></div>");
        circle.push("<div class='element-1'></div>");
        circle.push("<div class='element-2'></div></div>");
        $('body').append(circle.join(''));
    })();
</script>
<div class="circle-box">
    <div class="circle-1"></div>
    <div class="circle-2"></div>
    <div class="circle-3"></div>
    <div class="element-1"></div>
    <div class="element-2"></div>
</div>


<div class="paybot_wrap">
    <div class="paybot_wrap_link">
        <div><a href="#" target="_blank">公司介绍</a>|<a
                href="#" target="_blank">开发团队 </a>|<a
                href="#" target="_blank">招聘信息</a>|<a
                href="#" target="_blank">联系我们</a>|<a
                href="#" target="_blank">法律声明</a>|<a
                href="#" target="_blank">网站地图</a></div>
    </div>
    <p class="paybot_wrap_p">京ICP证：050016号&nbsp;&nbsp;《网络文化经营许可证》编号：文网文【2017】8929-1007号&nbsp;&nbsp;<a
            href="#" target="_blank">《网络视听许可证》编号：0110587</a>&nbsp;&nbsp;京公网安备11010502033859号<br><span>© 2004-2018 Perfect World Co.,Ltd. All rights reserved.</span>完美世界（北京）软件科技发展有限公司版权所有
    </p>
    <div class="paybot_wrap_img"><a href="#"
                                    target="_blank"><img src="/static/images/bot_img1.png"></a><a
            href="#"
            target="_blank"><img src="/static/images/bot_img2.png"></a></div>
    <style>body, div, p, ul, ol, li, dl, dt, dd, h1, h2, h3, h4, h5, h6, form, input, select, textarea, table, td {
        margin: 0;
        padding: 0;
    }

    img {
        border: 0;
    }

    .clearfix:after {
        content: "";
        display: block;
        height: 0;
        clear: both;
    }

    .clearfix {
        zoom: 1;
    }

    .paybot_wrap {
        padding-top: 20px;
        font: normal 12px "微软雅黑";
        color: #8f8f8f;
    }

    .paybot_wrap a {
        font: normal 12px "微软雅黑";
        color: #8f8f8f;
        text-decoration: none;
    }

    .paybot_wrap_link {
        height: 28px;
        border-top: 1px solid #e6e6e6;
        border-bottom: 1px solid #e6e6e6;
    }

    .paybot_wrap_link div {
        width: 1002px;
        height: 28px;
        margin: 0 auto;
        line-height: 28px;
        text-align: center;
    }

    .paybot_wrap_link div a {
        margin: 0 15px;
    }

    .paybot_wrap_p {
        width: 1002px;
        margin: 10px auto 0;
        line-height: 20px;
        text-align: center;
    }

    .paybot_wrap_img {
        padding: 10px 0 20px;
        text-align: center;
    }

    .paybot_wrap_img img {
        margin: 0 10px;
    }</style>
</div>
 <script type="text/javascript">
	function checkPhone() {
		var phone = $('input[name="tel"]').val();
		if (!(/^1[34578]\d{9}$/.test(phone))) {
			$('#hint_id').text("手机格式不正确");
			return false;
		} else {
			var data = 'id='+$('input[name="tel"]').val()+'&type=${type}';
			$.ajax({
				url : "/CheckID",
				type : "post",
				data : data,
				dataType : "json",
				success : function(data) {
					if (data.code == 500) {
						$('#hint_id').text("手机号已被注册");
					}else{
						$('#hint_id').text("");
					}
				}
			});
			
			return true;
		}
	}
	function checkEmail() {
		var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
		var email = $('input[name="email"]').val();
		if (!re.test(email)) {
			$('#hint_id').text("邮箱格式不正确");
			return false;
		} else {
			var data = 'id='+$('input[name="email"]').val()+'&type=${type}';
			$.ajax({
				url : "/CheckID",
				type : "post",
				data : data,
				dataType : "json",
				success : function(data) {
					if (data.code == 500) {
						$('#hint_id').text("邮箱已被注册");
					}else{
						$('#hint_id').text("");
					}
				}
			});
			return true;
		}
	}
	function checkPwd() {
		var pwd = $('input[name="password"]').val();
		var re = /^[\w_-]{6,16}$/;
		if (!re.test(pwd)) {
			$('#hint_pwd').text("密码格式不正确");
			return false;
		} else {
			$('#hint_pwd').text("");
			return true;
		}
	}
	function checkRep(){
		var pwd = $('input[name="password"]').val();
		var rep = $('#repeat').val();
		if(pwd!=rep){
			$('#hint_rep').text("两次密码输入不一致");
			return false;
		}else{
			$('#hint_rep').text("");
			return true;
		}
	}
	function register() {
		if ('${type}' == '1' && !checkEmail()) {
			alert("邮箱格式不正确");
			return false;
		}
		if ('${type}' == '0' && !checkPhone()) {
			alert("手机号格式不正确");
			return false;
		}
		if (!checkPwd()) {
			alert("密码格式不正确");
			return false;
		}
		if (!checkRep()){
			alert("两次密码输入不一致");
			return false;
		}
		$.ajax({
			url : "/register",
			type : "post",
			data : $('#registerForm').serialize() + "&type=${type}",
			dataType : "json",
			success : function(data) {
				alert(data.msg);
				if (data.code == 200) {
					location.href = "/productview";
				} 
			}
		});
	}
    </script>
</body>
</html>