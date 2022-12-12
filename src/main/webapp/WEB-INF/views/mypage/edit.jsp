<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyCloud</title>

<script type="text/javascript">

$(document).ready(function() {

//파일이름 변경 

$("#file").on('change',function(){
	  var fileName = $("#file").val();
	  $(".upload-name").val(fileName);
	  
	});

//버튼 클릭시 이동

// $("#btnsave").on("click", function(){
// 	location.href="/mypage";
// })

$("#gotologin").on("click", function(){
	location.href="/login";
	})

})


//휴대폰 번호 자동 하이픈 추가 
 
  $(document).ready(function() {
	   $("#memberPhone").keydown(function(event) {   //입력창에 숫자 입력
	       var key = event.charCode || event.keyCode || 0;
	       $text = $(this); 
	      
	       if (key !== 8 && key !== 9) {
	           if ($text.val().length === 3) {
	               $text.val($text.val() + '-');
	           }
	           if ($text.val().length === 8) {
	               $text.val($text.val() + '-');
	           }
	       }
	   })
  })
</script>

<style type="text/css">

body {
	background-color: #f9f9fa
	
}

.card {
	border: 0;
	border-radius: 0px;
 	margin-bottom: 30px; 
 	height: 850px;
	-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
	-webkit-transition: .5s;
	transition: .5s;
}

.row {
	padding-top: 25px;
	margin-left: 12%;
}

.profile-button {
	background: #6CC4DC;
	box-shadow: none;
	border: none;
	margin-left: -20%;
	font-size: 15px;
	padding: 10px;
	width: 30%;
}

.profile-button:hover {
	background: #3F92B7;
}

.profile-button:focus {
	background: #3F92B7;
	box-shadow: none;
}

.profile-button:active {
	background: #3F92B7;
	box-shadow: none;
}


/* input form css  */

.form-wrap {
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
/* 	padding: 3rem;  */
	line-height: 2.5;
	margin-left: 50%;
	margin-top: -25%;
	width: 70%;
}

.form-control {
	border-color: #ebebeb;
	border-radius: 2px;
	color: #8b95a5;
	padding: 2px 1px;
	font-size: 12px;
	line-height: inherit;
	-webkit-transition: 0.2s linear;
	transition: 0.2s linear;
	width: 40%;
	margin-top: 2%;
/* 	margin: 0 auto; */
}

.form-control:focus {
	box-shadow: none;
	border-color: #6CC4DC;
}

.form-name {
	color: #323232;
	font-size: 11pt;
	font-weight: 540;
	margin-left: -25%;
	margin-bottom: -10%;
	margin-top: 2%;
}


/* 프로필사진 input css */

.filebox .upload-name {
	display: inline-block;
	height: 30px;
	padding: 0 10px;
	vertical-align: middle;
	font-size: 12px;
	border: 1px solid #dddddd;
	width: 62%;
	color: #999999;
}

.filebox label {
	display: inline-block;
	padding: 7px 12px;
	color: #fff;
	font-size: 12px;
	vertical-align: middle;
	background-color: #6CC4DC;
	border-radius: 10%; cursor : pointer;
	height: 30px;
	margin-left: 10px;
	cursor: pointer;
}

.filebox input[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}


/* 로그인 하지 않았을 때 창 */

#gotologin {
	margin-left: 35%;
}

.loginment {
	margin-top: 10%;
}



</style>
</head>

<body>

	<div class="container rounded bg-white mt-5">
       <c:if test="${not empty login }">
	
		<form class="card" action="/edit" method="post" enctype="multipart/form-data">
		<input type="hidden" name="memberNo" value="${member.memberNo }">
			<input type="text" id="memberName" value="${member.memberName}">	
			<div class="col-md-4 border-right">
				<div class="d-flex flex-column align-items-center text-center p-3 py-5" >
					<img class="rounded-circle mt-5"
						src="https://img.icons8.com/color/512/test-account.png" width="90"><br>
					<span class="font-weight-bold">${member.memberName}</span> <span
						class="text-black-50">${member.memberEmail}</span><br>
					<div class="filebox">
						<input class="upload-name" value="프로필사진 변경" placeholder="프로필사진 변경">
						<label for="file">파일찾기</label> <input type="file" id="file">
					</div>
				</div>
			</div>
			<div class="col-md-8 form-wrap">
				<div class="p-3 py-5">
					<div class="row mt-2 input-wrap">
						<div class="form-name">비밀번호</div>
						<input class="form-control" type="password" id="memberPw" name="memberPw"
							placeholder="    영문, 숫자, 특수문자를 포함하여 8자리 이상">
					</div>
					<div class="row mt-3 input-wrap">
						<div class="form-name">비밀번호확인</div>
						<input class="form-control" type="password" placeholder="" id="memberPwck" name="memberPwck">
					</div>
					<div class="row mt-3 input-wrap">
						<div class="form-name">이름</div>
						<input class="form-control" type="text" id="memberName" name="memberName" value="${member.memberName}">
					</div>
					<div class="row mt-3 input-wrap">
						<div class="form-name">연락처</div>
						<input class="form-control" type="text" id="memberPhone" name="memberPhone" value="${member.memberPhone}">
					</div>
					<div class="row mt-3 input-wrap">
						<div class="form-name">이메일</div>
						<input class="form-control" type="text" id="memberEmail" name="memberEmail" value="${member.memberEmail}">
					</div>
					<div class="row mt-3 input-wrap">
						<div class="form-name">닉네임</div>
						<input class="form-control" type="text" id="memberNick" name="memberNick" value="${member.memberNick}">
					</div>
				</div>
				<div class="mt-5 text-right">
					<button class="btn btn-primary profile-button" id="btnsave">수정내역
						저장</button>
				</div>
				</div>
			</form>
			</c:if>
			
            <c:if test="${empty login }">
			 <div class="card">
            <div class="loginment">
	            	<h2 class ="text-dark text-center">회원 정보 수정 페이지입니다.</h2>
	            	<p class="text-center"> 
	            		<span>로그인 후 이용해주세요.</span>
	            	</p>
	            <div class="mt-5 text-right">
	           		<button type="button" class="btn btn-primary profile-button" id="gotologin">로그인 하기</button>
	            </div>
            </div>
            </div>
			</c:if>
			
		</div>
	<br><br><br><br><br>


</body>

<%@ include file="../layout/footer.jsp"%>

</html>