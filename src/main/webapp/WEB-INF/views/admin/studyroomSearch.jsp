<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../layout/adminHeader.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin studyroom search</title>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnWrite").click(function() {
		location.href = "/admin/studyroom/write"
	})
})
</script>

<style type="text/css">

/* 메인 타이틀 */
 .pagetitle > h1 { 
   font-size: 24px; 
   margin-bottom: 20px;
   font-weight: bold;
   display: inline-block;
}

/* 검색 창 */
.input-group {
	width:45%;
	float: right;
}

#searchForm {
 	width: 70%;
}

#keyword {
	width: 20%;
	height: 28px;
}

#btnSearch {
	padding: 5px;
	background-color: #6cc4dc;
	border: none;
	color: white;
	font-size: 14px;
}

/* 테이블 */
.table {
	text-align: center;
	vertical-align: middle;
}

.table thead {
    background-color: #aacde5;
}

.table thead th {
    padding: 10px;
    font-size: 16px;
    font-weight: bold;
    color: white;
}

.table tbody td {
    padding: 10px;
    margin: 0;
    font-size: 14px;
}

a {
	text-decoration: none;
	color: #212529;
}

/* 버튼 */
#btnWrite {
	font-size: 12px;
	background-color: #6cc4dc;
	float: right;
	color: #fff;
	padding: 5px;
	border: 1px solid #aacde5;
	border-radius: 10px;
}

/* 페이징 */
.totalCnt {
	font-size: 14px;
}

#titleHome {
	cursor: pointer;
}

</style>

<script type="text/javascript">

/* 스터디룸등록 클릭시 스터디룸등록 메인페이지로 새로고침 */
$(document).ready(function() {
	$("#titleHome").click(function() {
		location.href = "/admin/studyroom"
	})
})

</script>

</head>
<body>

<form action="/admin/studyroom/search" method="get">

<main id="main" class="main">
<div class="container">
  
    <div class="pagetitle">
    	<h1 id="titleHome">스터디룸 등록</h1>
  
  		<!-- 검색창 -->
    	<div class="input-group">
			<select class="form-select" id="category" name="category">
		        <option value="sroom_name">스터디룸명</option>
			</select>
			<div class="input-group" id="searchForm">
			  	<input type="text" class="form-control" aria-describedby="btnSearch" name="keyword">
			  	<button class="btn" type="submit" id="btnSearch">검색</button>
			</div>
        </div>
    </div>


   	<!-- 테이블 -->
    <section class="adminStudyroom">
       	<div class="col-lg-12">
   		<div class="row">
		    <div class="table-responsive">
			<table class="table">
                
			<thead>
				<tr>
					<th>글번호</th>
					<th>스터디룸 명</th>
					<th>한줄 소개</th>
					<th>가격</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${searchlist }" var="studyroom">
				<tr>
					<td style="text-align:center;">${studyroom.SROOM_NO }</td>
					<td><a href="/admin/studyroom/view?sRoomNo=${studyroom.SROOM_NO }">${studyroom.SROOM_NAME }</a></td>
					<td>${studyroom.SROOM_INTRO }</td>
					<td style="text-align:center;">${studyroom.SROOM_PRICE } 원/시간</td>
				</tr>
			</c:forEach>

			</tbody>
			
			</table>
			
			<!-- 페이징 -->
			<span class="totalCnt">total : ${paging.totalCount }</span>
			<button id="btnWrite" class="btn" type="button">글쓰기</button>
			<div class="clearfix"></div>
			
			<c:import url="/WEB-INF/views/admin/studyroomPaging.jsp" />

   			</div><!-- 테이블 row end -->
      	</div>
		</div><!-- main row end -->

	</section>
	</div><!-- main container end -->
	
</main><!-- main end -->

</form>

</body>
</html>