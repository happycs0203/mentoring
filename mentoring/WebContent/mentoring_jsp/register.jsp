<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/register.css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Church &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />
<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/ext-core/3.1.0/ext-core.js">
<script type="text/javascript" src="js/bootstrap.js"></script>

		<div class="fh5co-loader"></div>
			<div id="page">
				<nav class="fh5co-nav" role="navigation">
					<div class="container-wrap">
						<div id="register" class="register">
							<div class="white_name">
								<span>. </span>
							</div>
							<div class="inner_head">
								<h1 class="text-center">
									<a href="http://www.naver.com" id="mentoringLogo"
										class="ico_join"> <span class="ir_wa text-success">Mentoring</span>
									</a>
								</h1>
							</div>
						</div>
				    </div>
				<div class="inner_wrap">
					<div class="white_name">
						<span>. </span>
					</div>
					<div id="inner_title" class="inner_title">
						<span class="it_wa"> 가입 정보 입력 </span>
					</div>
					
					<div class="white_name">
						<span>. </span>
					</div>
					
					<div id="sub_title" class="sub_title">
						<span class="st_wa"> 로그인 정보 및 가입 정보를 입력해주세요 </span>
					</div>
				</div>
				
					<div class="wrap_info">
						<div class="box_info">
							<dl class="name_info">
								<dt>
									<label for="inpId" class="lab_info"></label>
								</dt>
								<dd>
									<div class="wrap_inp">
										<label for="MentoringId" class="MentoringId">아이디</label> 
										
										<input type="text" id="MentoringId" class="name_info" value autocomplete="off" maxlength="30">
										
									</div>
								</dd>
							</dl>
					
							<dl>
								<dl class="item_info_info_password">
									<dt>
										<label for="inpPw" class="lab_info"></label>
									</dt>
									<dd>
										<div class="wrap_inp">
											<label for="password1" class="txt_placeholder">비밀번호</label>
											<!-- 텍스트 입력 시 .screen_out  -->
											<input type="password" id="password1" name="password1"
												class="inp_info_pw" value="" maxlength="30"> <span
												class="mark_valid" style="display: none;">불가</span>
										</div>
									</dd>
								</dl>
							</dl>
						</div>

						<div>
							<div class="box_info">
								<dl class="item_info">
									<dt>
										<label for="inpNmae" class="lab_info"></label>
									</dt>
									<dd>
										<div class="wrap_inp">
											<label for="name" class="txt_placeholder ">이름</label>
											<!-- 텍스트 입력 시 .screen_out  -->
											<input type="text" id="name" name="name" class="inp_placeholder"
												value="" maxlength="30"> <span class="mark_valid"><span
												class="ico_join ico_valid"></span><span class="screen_out">유효</span></span>
										</div>
										<p class="txt_message" style="display: none;"></p>
									</dd>
								</dl>
								<dl id="countryListContainer" class="item_info info_phone">
									<dt>
										<label for="inpPhone" class="lab_info"></label>
									</dt>
									<dd>
										<div class="wrap_inp">
											<label for="inpPhone" class="txt_placeholder">휴대폰 번호</label>
											<!-- 텍스트 입력 시 .screen_out  -->
											<a href="javascript:;" class="num_nation" id="numNation">
												<span class="ico_join"></span> <span class="link_nationnum">+82</span>
											</a> <input type="hidden" id="mobileNational"
												name="mobileNational" value="82"> <input
												type="hidden" id="mobileNationalCode"
												name="mobileNationalCode" value="KR"> <input
												type="hidden" id="mobileInternationalFormat"
												name="mobileInternationalFormat" value=""> <input
												type="text" id="inpPhone" name="inpPhone" class="inp_info"
												autocomplete="off">
											<button type="button" id="certBtn" class="btn_check disabled">인증</button>
										</div>
									</dd>
								</dl>
								<dl class="item_info info_phone">
									<dd>
									
										<p class="txt_message" style="display: none;"></p>
									</dd>
								</dl>
								<dl class="item_info info_email">
									<dt>
										<label for="inpEmail" class="lab_info">
											주소
										</label>
										<input type="text" id="mailId" class="mail_info" value autocomplete="off" maxlength="30">
									</dt>
								</dl>
							  <button id=
							  "btn_yes" class="btn btn-primary btn-lg">회원가입</button>
							</div>
						</div>
					</div>
			</div>
		</nav>
	<!-- <div class="container-wrap">
		
	</div>END container-wrap -->
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
</body>
</html>