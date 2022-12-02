<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyCloud</title>

<style type="text/css">

.card {
	border: 0;
	border-radius: 0px;
	padding: 10px;
	margin-left: 30%;
 	margin-bottom: 10%; 
 	margin-top: 10%;
 	width: 80%;
	-webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.03);
	-webkit-transition: .5s;
	transition: .5s;
}

.title {
	margin-top: 5%;
	font-size: 18pt;
	font-weight: bold;
	text-align: center;
}

body {
	margin-top:20px;
	background-color: #f9f9fa
	
}

h3 {
    font-size: 16px;
}

.text-navy {
    color: #3F92B7;
    padding-top: 10%;
}

.cart-product-imitation {
  text-align: center;
  padding-top: 30px;
  padding-right: 30px;
  height: 150px;
  width: 150px;
}

table.shoping-cart-table {
  margin-bottom: 0;
}

table.shoping-cart-table tr td {
  border: none;
  text-align: right;
}

table.shoping-cart-table tr td.desc,
table.shoping-cart-table tr td:first-child {
  text-align: left;
}

table.shoping-cart-table tr td:last-child {
  width: 10px;
}

.ibox {
  clear: both;
  margin-bottom: 25px;
  margin-left: 5%;
  margin-top: 12%;
  padding: 0;
}

.ibox.collapsed .ibox-content {
  display: none;
}

.ibox:after,
.ibox:before {
  display: table;
}

.ibox-title {
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  border-color: #e7eaec;
  border-image: none;
  border-style: solid solid none;
  border-width: 3px 0 0;
  color: inherit;
  margin-bottom: 0;
  padding: 14px 15px 7px;
  min-height: 48px;
}

.ibox-content {
  color: inherit;
  padding: 15px 20px 20px 20px;
  border-color: #e7eaec;
  border-image: none;
  border-style: solid solid none;
  border-width: 1px 0;
}

.ibox-footer {
  color: inherit;
  border-top: 1px solid #e7eaec;
  font-size: 90%;
  background: #ffffff;
  padding: 10px 15px;
}

.desc {
	width: 50%;
}

/* 버튼 css */

.delete-button {
	background: #6CC4DC;
	box-shadow: none;
	border: none;
	margin-left: -20%;
	font-size: 12px;
	padding: 10px;
	width: 30%;
}

.delete-button:hover {
	background: #3F92B7;
}

.delete-button:focus {
	background: #3F92B7;
	box-shadow: none;
}

.profile-button:active {
	background: #3F92B7;
	box-shadow: none;
}



</style>
</head>

<body>

  <div class="col-md-9">
  	<div class="card">
  			<div class="title">좋아요 목록</div>
            <div class="ibox"><h5>번개게시판</h5></div>
                <div class="ibox-content">
                    <div class="table-responsive">
       					<table class="table shoping-cart-table">
                            <tbody>
                            <tr>
        					    <td width="45">
                                <img src="https://img.icons8.com/color/512/test-account.png" alt="..." class="cart-product-imitation">
                                </td>                                    
                                <td class="desc">
                                    <div class="text-navy" >
                                     <h3>제목</h3> <a href="">오늘 강남역쪽에서 밤샘카공 하실분 계신가요</a>
                                    </div><br>
                                    <dl class="small m-b-none">
                                        <dt>작성자</dt>
                                        <dd>아이디 : cafestudyjjang</dd>
                                    </dl>
                                </td>
                              </tr>
                              <tr>  
        					    <td width="90">
                                <img src="https://img.icons8.com/color/512/test-account.png" alt="..." class="cart-product-imitation">
                                </td>                                    
                                <td class="desc">
                                    <div class="text-navy" >
                                   <h3>제목</h3> <a href="">엄청 춥지만 만나서 공부 하실분?</a>
                                    </div><br>
                                    <dl class="small m-b-none">
                                        <dt>작성자</dt>
                                        <dd>아이디 : verycold</dd>
                                    </dl>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    </div>
                    
            <div class="ibox"><h5>멘티 찾기</h5></div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">
                            <tbody>
                            <tr>
        					    <td width="90">
                                <img src="https://img.icons8.com/color/512/test-account.png" alt="..." class="cart-product-imitation">
                                </td>                                    
                                <td class="desc">
                                    <div class="text-navy" >
                                     <h3>제목</h3> <a href="">오류 해결 해 주실 척척박사님 모십니다</a>
                                    </div><br>
                                    <dl class="small m-b-none">
                                        <dt>작성자</dt>
                                        <dd>아이디 : gaebalgaebal</dd>
                                    </dl>
                                </td>
                              </tr>
                              <tr>  
        					    <td width="90">
                                <img src="https://img.icons8.com/color/512/test-account.png" alt="..." class="cart-product-imitation">
                                </td>                                    
                                <td class="desc">
                                    <div class="text-navy" >
                                   <h3>제목</h3> <a href="">자바 객체부분 공부 도와주실분..</a>
                                    </div><br>
                                    <dl class="small m-b-none">
                                        <dt>작성자</dt>
                                        <dd>아이디 : gaebalgaebal</dd>
                                    </dl>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    </div>
					</div>
                </div>
      

</body>

<%@ include file="../layout/footer.jsp" %>

</html>