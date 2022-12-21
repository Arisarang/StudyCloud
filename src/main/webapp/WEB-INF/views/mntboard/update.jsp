<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:import url="../layout/header.jsp" /> 
<link rel="stylesheet" href="/resources/css/mtBoardWrite.css">   
<script src="../resources/js/mtBoardWrite.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
<script type="text/javascript" src="/resources/se2/js/service/HuskyEZCreator.js"></script>

</head>
<body>

<script type="text/javascript">
$(document).ready(function() {
	
	$("#btnUpdate").click(function() {
		
		//작성된 내용을 #content에 반영
		updateContents();
		
		$("form").submit();
	})
	
	$("#btnCancle").click(function() {
		location.href = "/mntboard/list"
	})
	
	 if( ${empty FileUpload} ) {
		$("#newFile").show()
	} else {
		$("#originFile").show()
	}
	
	 $("#deleteFile").click(function() {
		$("#newFile").toggle()
		
		$("#originFile").toggleClass("through")
	})  
	
	
})

function updateContents() {
	// 작성된 내용을 #content에 반영
	oEditors.getById["mntboardContent"].exec("UPDATE_CONTENTS_FIELD", [])
}
</script>



<!-- content 전체 wrap -->
<main id="main">
<!-- 상단 이미지바 -->
<div class="mento_intro">
	<div class="mento_intro_content">
			<h1>☁️ ☁️ ☁️</h1>
	</div>
</div>

<main class="all_content">

<form action="./update" method="post" enctype="multipart/form-data">

<input type="hidden" name="mntboardNo" value="${param.mntboardNo }">

<div id="write_form">
<br><br><br><br>


<div class="form-group">
 <label for="title">&nbsp;닉네임<span class="rq">*</span></label>
<input class="form-control" type="text" id="memberNick" name="memberNick" value="${updateBoard.MEMBER_NICK}" style="margin-top: 5px; font-size: 13px" disabled></div>

<div class="form-group">
<label for="title">&nbsp;제목<span class="rq">*</span></label>
<input class="form-control" type="text" id="mntboardTitle" name="mntboardTitle" value="${updateBoard.MNTBOARD_TITLE }" style="margin-top: 5px; font-size: 13px"></div>

<div class="form-group">
<label for="field">&nbsp;분야</label>
<input class="form-control"  type="text" id="field" name="field" value="${updateBoard.FIELD }" style="margin-top: 3px; font-size: 13px;" disabled>
</div>




<div class="form-group">
<label for="content">본문<span class="rq">*</span></label>
<textarea id="mntboardContent" name="mntboardContent" rows="11" style="width: 100%">${updateBoard.MNTBOARD_CONTENT }</textarea>
</div>


<div class="form-group">
	<div id="fileBox">
		<div id="originFile">
			<a href="/mntboard/download?fileUploadNo=${fileUpload.fileUploadNo }">${fileUpload.fileUploadOri }</a>
			<img id="img_container" style="width:200px"/>
		</div>

		<div id="newFile">
			<label for="file">새 첨부파일</label><br>
			<input type="file" id="file" name="file" onchange="readURL(this)">
			<img id="img_container" style="width:180px"/>
		</div>

	</div>
</div>
<br>


<div class="btn-zip">
 <button class="btn btn-primary" id="btnCancle">취소</button>
 <!-- 글전송 구현해야됨 -->
 <button class="btn btn-primary" id="btnUpdate">수정</button>
</div>

</div><!-- write_form 끝 -->

<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "mntboardContent",
	sSkinURI: "/resources/se2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
})

function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('img_container').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('img_container').src = "";
  }
}
</script>
</form>


</main>
</main>

<c:import url="../layout/footer.jsp" />  
</body>
</html>