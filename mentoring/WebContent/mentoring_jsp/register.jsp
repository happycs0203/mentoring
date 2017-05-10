<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by freehtml5.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="freehtml5.co" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>register.jsp</title>

<link rel="stylesheet" href="/mentoring/mentoring_jsp/assets/css/register.css">

<link rel="shortcut icon"
	href="/mentoring/mentoring_jsp/assets/images/gt_favicon.png">

<link href="//code.jboxcdn.com/0.4.7/jBox.css" rel="stylesheet">

<!-- Bootstrap -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css"
	rel="stylesheet">
<!-- Icon font -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<!-- Fonts -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
<!-- Custom styles -->
<link rel="stylesheet"
	href="/mentoring/mentoring_jsp/assets/css/styles.css">


<script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="//code.jboxcdn.com/0.4.7/jBox.min.js"></script>

<script type="text/javascript"
	src="/mentoring/mentoring_jsp/assets/js/jquery-ui-1.10.4.custom.min.js"></script>
<!-- UI 플러그인 연동 -->
<script type="text/javascript"
	src="/mentoring/mentoring_jsp/assets/js/jquery.cookie.js"></script>
<!-- 쿠키 플러그인 연동 -->
<script type="text/javascript"
	src='/mentoring/mentoring_jsp/assets/js/script.js'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/ext-core/3.1.0/ext-core.js">
</script>

</head>
<body>

	<header id="header"> 
	<jsp:include page="mentoringHeader.jsp" />
	</header>

	
	
	<div id="page">
		<nav class="fh5co-nav" role="navigation">
		
		<div class="inner_wrap">
			<div id="inner_title" class="inner_title">
				<span class="it_wa"> 함께 배우고자 하는 사람들이 모여 서로의 가치를 공유하실 수 있습니다 <br/>
				간단한 절차에 맞게 기본정보를 입력해 주시면 회원가입이 바로 완료됩니다
				</span>
			</div>
			<hr/>
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
							<input
type="text" id="MentoringId" class="name_info" value
								autocomplete="off" maxlength="30">

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
							<label for="inpName" class="lab_info"></label>
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
								<a href="javascript:;" class="num_nation" id="numNation"> <span
									class="ico_join"></span> <span class="link_nationnum">+82</span>
								</a> <input type="hidden" id="mobileNational" name="mobileNational"
									value="82"> <input type="hidden"
									id="mobileNationalCode" name="mobileNationalCode" value="KR">
								<input type="hidden" id="mobileInternationalFormat"
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
							<label for="inpEmail" class="lab_info"> 주소 </label> <input
								type="text" id="mailId" class="mail_info" value
								autocomplete="off" maxlength="30">
						</dt>
					</dl>
					<button id="btn_yes" class="btn btn-primary btn-lg">회원가입</button>
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