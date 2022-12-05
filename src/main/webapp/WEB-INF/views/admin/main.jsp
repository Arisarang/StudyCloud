<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../layout/adminHeader.jsp" />
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <!-- 폰트 --> -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->

<style type="text/css">

/* 메인 바디 색상 */
body {
  background: #e3eff9;
}

#main {
	margin-top: 60px;
  	padding: 20px 30px;
  	transition: all 0.3s;
}


/* 메인 타이틀 */
.pagetitle {
  margin-bottom: 10px;
}

.pagetitle h1 {
  font-size: 24px;
  margin-bottom: 0;
  font-weight: bold;
}


/* 카드 */
.card {
  margin-bottom: 30px;
  border: none;
  border-radius: 5px;
  box-shadow: 0px 0 30px rgba(1, 41, 112, 0.1);
}

.card-header,
.card-footer {
  border-color: #ebeef4;
  background-color: #fff;
  color: #798eb3;
  padding: 15px;
}

.card-title {
  padding: 20px 0 15px 0;
  font-size: 18px;
  font-weight: 500;
  color: #012970;
}

.card-title span {
  color: #899bbd;
  font-size: 14px;
  font-weight: 400;
}

.card-body {
/*   padding: 0 20px 20px 20px; */
  padding: 20px;
}

@media (max-width: 1199px) { /* 지우면 안댐 */
  .header .search-bar {
    position: fixed;
    top: 50px;
    left: 0;
    right: 0;
    padding: 20px;
    box-shadow: 0px 0px 15px 0px rgba(1, 41, 112, 0.1);
    background: white;
/*     z-index: 9999; */
    transition: 0.3s;
    visibility: hidden;
    opacity: 0;
  }

/*   .header .search-bar-show { */
/*     top: 60px; */
/*     visibility: visible; */
/*     opacity: 1; */
/*   } */
}


/* 캘린더 */
.today {
  width: 100%;
  -webkit-box-shadow: 0px 15px 30px -16px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0px 15px 30px -16px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 15px 30px -16px rgba(0, 0, 0, 0.3); }

.today-piece {
  border-radius: 0.25rem;
  padding: 1.6rem;
  font-size: 1.25em;
  text-align: center;
  background: white; }

.top {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0; }

.middle {
  border-radius: 0; }

.bottom {
  border-top-right-radius: 0;
  border-top-left-radius: 0; }

.day,
.year {
  font-size: 0.65em;
  font-weight: 500;
  letter-spacing: 0.35em;
  text-transform: uppercase;
  color: white;
/*   background: #52de97; */
  background:  #e3eff9;; } /* 캘린더 색상 */

.month {
  padding-top: 1.75rem;
  padding-bottom: 0;
  font-size: 1.5em;
  font-weight: 200; }

.date {
  padding-top: 0;
  padding-bottom: 1.75rem;
  font-size: 3em;
  font-weight: 100;
  color: #000; }

</style>


</head>
<body>

<main id="main" class="main">
  
	<div class="container">
  
    <div class="pagetitle">
    	<h1>Home</h1>
    </div>

    <section class="dashboard">
      	<div class="row">

        <!-- 왼쪽 -->
        <div class="col-lg-8">
        	<div class="row">

	            <!-- 멘토 신청 -->
	            <div class="col-xxl-6 col-md-6">
	              	<div class="card">
	                	<div class="card-body" style="height: 337px;">
	                  		<h5 class="card-title">멘토신청 <span>| Today</span></h5>
	
		                  	<div class="d-flex align-items-center">
<!-- 		                    	<div class="ps-3"> -->
		                      	<span><h6>${todayMentoApply }</h6></span>
		                      	<span class="text-success small pt-1 fw-bold">&nbsp개의 신청 목록</span>
<!-- 		                    	</div> -->
		                  	</div>
	                	</div>
	              	</div>
	            </div><!-- 멘토 신청 end -->
	            
	            <!-- 스터디 신청 -->
	            <div class="col-xxl-6 col-md-6">
					<div class="card">
	                	<div class="card-body" style="height: 337px;">
		                	<h5 class="card-title">스터디 신청 <span>| This Month</span></h5>
		
		                  	<div class="d-flex align-items-center">
		                    	<div class="ps-3">
		                      	<h6>${todayStudyApply }</h6>
		                      	<span class="text-success small pt-1 fw-bold">&nbsp개의 신청 목록</span>
		                    	</div>
		                  	</div>
		                </div>
	             	</div>
	           	</div><!-- 스터디 신청 end -->
	       	</div><!-- row end -->
		</div>

        <!-- 오른쪽 -->
        <div class="col-lg-4">

			<!-- 캘린더 -->
			<div class="card">
				<div class="card-body">
				    <div class="activity">
						<div class="row justify-content-center">
							<div class="today">
							    <div class="today-piece  top  day"></div>
							    <div class="today-piece  middle  month"></div>
							    <div class="today-piece  middle  date"></div>
							    <div class="today-piece  bottom  year"></div>
							</div>
						</div>	
					</div>
		        </div>
			</div><!-- 캘린더 end -->
		</div>


     	<!-- 테이블 -->
       	<div class="col-lg-12">
        	<div class="row">
				
				<!-- Qna관리 -->
	            <div class="col-6">
	            	<div class="card recent-sales overflow-auto">
	
	            	    <div class="card-body">
	                  	<h5 class="card-title">QnA 관리 <span>| Today</span></h5>
	
	                  		 <table class="table table-borderless datatable">
						        <thead>
						            <tr>
						                <th scope="col">#</th>
						                <th scope="col">제목</th>
						                <th scope="col">작성자</th>
						   			 </tr>
								</thead>
								<tbody class="table-group-divider">
								    <tr>
								        <th scope="row">1</th>
								        <td>제목1</td>
								        <td>작성자1</td>
									</tr>
									<tr>
									    <th scope="row">2</th>
									    <td>제목2</td>
									    <td>작성자2</td>
									</tr>
									<tr>
									    <th scope="row">3</th>
									    <td>제목3</td>
									    <td>작성자3</td>
						            </tr>
									<tr>
									    <th scope="row">4</th>
									    <td>제목4</td>
									    <td>작성자4</td>
						            </tr>
									<tr>
									    <th scope="row">5</th>
									    <td>제목5</td>
									    <td>작성자5</td>
						            </tr>
						        </tbody>
						    </table>
	                	</div><!-- card-body end -->
              		</div>
            	</div><!-- Qna관리 -->

	            <!-- 예약 리스트 -->
	            <div class="col-6">
	            	<div class="card top-selling overflow-auto">
	
		                <div class="card-body">
		                	<h5 class="card-title">예약 리스트 <span>| Today</span></h5>
		
		                   <table class="table table-borderless datatable">
					        <thead>
					            <tr>
					                <th scope="col">#</th>
					                <th scope="col">스터디룸</th>
					                <th scope="col">예약자</th>
					   			 </tr>
							</thead>
							<tbody class="table-group-divider">
							    <tr>
							        <th scope="row">1</th>
							        <td>제목1</td>
							        <td>작성자1</td>
								</tr>
								<tr>
								    <th scope="row">2</th>
								    <td>제목2</td>
								    <td>작성자2</td>
								</tr>
								<tr>
								    <th scope="row">3</th>
								    <td>제목3</td>
								    <td>작성자3</td>
					            </tr>
								<tr>
								    <th scope="row">4</th>
								    <td>제목4</td>
								    <td>작성자4</td>
					            </tr>
								<tr>
								    <th scope="row">5</th>
								    <td>제목5</td>
								    <td>작성자5</td>
					            </tr>
					        </tbody>
					    </table>
		                </div>
					</div>
            	</div><!-- 예약리스트 end-->
      		</div><!-- 테이블 row end -->
       	</div>
	</div><!-- main row end -->
	
	</section>

	</div><!-- main container end -->
</main><!-- main end -->
  
  
<script type="text/javascript">
(function($) {

	"use strict";

function DateTime() {
    function getDaySuffix(a) {
        var b = "" + a,
            c = b.length,
            d = parseInt(b.substring(c-2, c-1)),
            e = parseInt(b.substring(c-1));
        if (c == 2 && d == 1) return "th";
        switch(e) {
            case 1:
                return "st";
                break;
            case 2:
                return "nd";
                break;
            case 3:
                return "rd";
                break;
            default:
                return "th";
                break;
        };
    };

    this.getDoY = function(a) {
        var b = new Date(a.getFullYear(),0,1);
    return Math.ceil((a - b) / 86400000);
    }

    this.date = arguments.length == 0 ? new Date() : new Date(arguments);

    this.weekdays = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
    this.months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
    this.daySuf = new Array( "st", "nd", "rd", "th" );

    this.day = {
        index: {
            week: "0" + this.date.getDay(),
            month: (this.date.getDate() < 10) ? "0" + this.date.getDate() : this.date.getDate()
        },
        name: this.weekdays[this.date.getDay()],
        of: {
            week: ((this.date.getDay() < 10) ? "0" + this.date.getDay() : this.date.getDay()) + getDaySuffix(this.date.getDay()),
            month: ((this.date.getDate() < 10) ? "0" + this.date.getDate() : this.date.getDate()) + getDaySuffix(this.date.getDate())
        }
    }

    this.month = {
        index: (this.date.getMonth() + 1) < 10 ? "0" + (this.date.getMonth() + 1) : this.date.getMonth() + 1,
        name: this.months[this.date.getMonth()]
    };

    this.year = this.date.getFullYear();

    this.sym = {
        d: {
            d: this.date.getDate(),
            dd: (this.date.getDate() < 10) ? "0" + this.date.getDate() : this.date.getDate(),
            ddd: this.weekdays[this.date.getDay()].substring(0, 3),
            dddd: this.weekdays[this.date.getDay()],
            ddddd: ((this.date.getDate() < 10) ? "0" + this.date.getDate() : this.date.getDate()) + getDaySuffix(this.date.getDate()),
            m: this.date.getMonth() + 1,
            mm: (this.date.getMonth() + 1) < 10 ? "0" + (this.date.getMonth() + 1) : this.date.getMonth() + 1,
            mmm: this.months[this.date.getMonth()].substring(0, 3),
            mmmm: this.months[this.date.getMonth()],
            yy: (""+this.date.getFullYear()).substr(2, 2),
            yyyy: this.date.getFullYear()
        }
    };

    this.formats = {
        pretty: {
          a: this.sym.d.dddd,
          b: this.sym.d.ddddd,
          c: this.sym.d.mmmm,
          d: this.sym.d.yyyy
        }
    };
};



var dt = new DateTime();
$('.day').text(dt.formats.pretty.a);
$('.date').text(dt.formats.pretty.b);
$('.month').text(dt.formats.pretty.c);
$('.year').text(dt.formats.pretty.d);

})(jQuery);

</script>

</body>
</html>