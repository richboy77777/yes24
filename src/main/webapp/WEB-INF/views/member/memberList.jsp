<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- jquery ui CSS -->    
<link href="/lucky/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"> 

<title>memberList</title>

<style type="text/css">

#normal1 {
	float: left;
}

#facebook1 {
	float: left;
}

#kakaotalk1 {
	float: left;
}

#naver1 {
	float: left;
}

#firstall {
	float: left;
}

#firstagree {
	float: left;
}

#firstdisagree {
	float: left;
}

#secondall {
	float: left;
}

#secondagree {
	float: left;
}

#seconddisagree {
	float: left;
}

#thirdall {
	float: left;
}

#thirdagree {
	float: left;
}

#thirddisagree {
	float: left;
}

</style>

</head>

<body>
	<form id="formList" name="formList" method="post" action="/lucky/member/memberList">
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">

		
	<!--  -->
	<div class="container-fluid">
	
		<div class="row">
			<div class="col-4 my-auto">
				<a href="/lucky/member/memberList"> 
				<img src="/lucky/resources/xdmin/image/yes24logo.png"/>
				</a>
			</div>
			<div class="col-4"></div>

			<div class="col-1 my-auto">
				<img src="/lucky/resources/xdmin/image/tomcru.png"/>
			</div>
			
			<div class="col-2 my-auto text-end">
				SANGWON LEE<br>Administrator
			</div>
			<div class="col-1 my-auto text-end">
					<select id="" name="select">
						<optgroup label="언어">
							<option value="lang">언어
							<option value="KOR">한국어
							<option value="ENG">영어
							<option value="JPN">일본어
						</optgroup>
					</select>
			</div>
		</div>


		<nav class="navbar navbar-expand-lg navbar-light d-none d-sm-block"
			style="background-color: #457ade;"">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">관리</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">회원관리</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<br> <br>

		<div class="row">
			<div class="col-2">
				<h4>
					<strong>회원검색</strong>
				</h4>
				
			</div>
			
		
			<div class="col-10 text-end">
 				<a href="javascript:goForm()">
 					<button type="button" class="btn btn-info">등록</button>
 				</a>	
			</div>
		</div>

		<table class="table align-middle table-bordered border-primary">
			<tr>
				<td class="table-secondary"><strong>삭제여부</strong></td>
				<td>
					<select name="shIfDelNy" id="shIfDelNy">
						<option value="">::삭제여부::
						<option value="1" <c:if test="${vo.shIfDelNy eq 1}">selected</c:if>>Y
						<option value="0" <c:if test="${vo.shIfDelNy eq 0}">selected</c:if>>N
					</select> 
				</td>
				<td class="table-secondary" style="width: 15%"><strong>회원구분</strong></td>
				<td>
					<div class="form-check" id="normal1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="normal">일반
					</div>
					<div class="form-check" id="facebook1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="facebook">페이스북
					</div>
					<div class="form-check" id="kakaotalk1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="kakaotalk">카카오톡
					</div>
					<div class="form-check" id="naver1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="naver">네이버
					</div>
				</td>
			</tr>
			
			<tr>
				<td class="table-secondary"><strong>이메일 수신 여부</strong></td>
				<td>
					<div class="form-check" id="firstall">
  						<input class="form-check-input" type="radio" name="first" id="all1">전체
					</div>
					<div class="form-check" id="firstagree">
  						<input class="form-check-input" type="radio" name="first" id="agree2">수신허용
					</div>
					<div class="form-check" id="firstdisagree">
  						<input class="form-check-input" type="radio" name="first" id="disagree3">수신거부
					</div>
				</td>
				<td class="table-secondary"><strong>문자(SMS) 수신여부</strong></td>
				<td>
					<div class="form-check" id="secondall">
  						<input class="form-check-input" type="radio" name="second" id="all4">전체
					</div>
					<div class="form-check" id="secondagree">
  						<input class="form-check-input" type="radio" name="second" id="agree5">수신허용
					</div>
					<div class="form-check" id="seconddisagree">
  						<input class="form-check-input" type="radio" name="second" id="disagree6">수신거부
					</div>
				</td>
			</tr>
			
			<tr>
				<td class="table-secondary"><strong>승인여부</strong></td>
				<td>
					<div class="form-check" id="thirdall">
  						<input class="form-check-input" type="radio" name="third" id="all7">전체
					</div>
					<div class="form-check" id="thirdagree">
  						<input class="form-check-input" type="radio" name="third" id="agree8">승인
					</div>
					<div class="form-check" id="thirddisagree">
  						<input class="form-check-input" type="radio" name="third" id="disagree9">미승인
					</div>
				</td>
				<td class="table-secondary" style="width: 15%"><strong>검색어</strong></td>
				<td>
					<select name="shOption" id="shOption">
						<option value="">::검색구분::
							<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>아이디
							<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>이름
					</select>
					<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
				</td>
			</tr>
			<tr>
				<td class="table-secondary" style="width: 15%"><strong>날짜구분</strong></td>
				<td colspan="3">
					<select class="form-select" name="shOptionDate">
							<option value="">::날짜::</option>
							<option value="1">등록일</option>
							<option value="2">수정일</option>
							<option>끝날짜</option>
					</select>
				</td>			
			</tr>
			<tr>
				<td class="table-secondary" style="width: 15%"><strong>시작일</strong></td>
				<td><input class="form-control shDate" type="text" id="shDateStart" name="shDateStart" value="${vo.shDateStart}" placeholder="시작일" autocomplete="off"></td>
				<td class="table-secondary" style="width: 15%"><strong>종료일</strong></td>
				<td><input class="form-control shDate" type="text" id="shDateEnd" name="shDateEnd" value="${vo.shDateEnd}" placeholder="종료일" autocomplete="off"></td>				
			</tr>
		</table>
		
		
		<div class=row>
			<div class="col-4"></div>
			<div class="col-4 text-center">
				<input type="submit" class="btn btn-primary" id="btnSubmit" name="search"> 
			</div>
				<div class="col-3">
					<a href="/lucky/member/memberList">
						<button type="button" class="btn btn-success" id="abc">검색초기화</button>
					</a>
				</div>	
			<div class="col-1"></div>
		</div>

		<hr color="gray">
				
		<br>

		<div class="row">
			<div class="col-6 col-sm-6">
				<h6>Total: <c:out value="${vo.totalRows}"/></h6>
			</div>
			<div class="col-6 col-sm-6 text-end">
					<select id="" name="numberselect">
						<optgroup label="분류">
							<option value="ten">10
							<option value="twenty">20
							<option value="thirty">30
							<option value="fifty">50
						</optgroup>
					</select>
			</div>
		</div>
		
		<table class="table table-hover" style="text-align: center;">
			<thead class="table table-secondary">
				<tr>
					<th>
						<div class="form-check d-flex justify-content-center">
  							<input class="form-check-input" type="checkbox" value="" name="check2" id="box1">
						</div>
					</th>
					<th>번호</th>
					<th>승인</th>
					<th>아이디</th>
					<th>성명</th>
					<th>이메일</th>
					<th>휴대폰</th>
					<th>가입일</th>
					<th>최근접속일</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item" varStatus="status">
				<tr>
				
				<th>
					<div class="form-check d-flex justify-content-center">
  						<input class="form-check-input" type="checkbox" value="" name="check2" id="box2">
					</div>
				</th>
				
				<td><c:out value="${item.ifmmSeq}"/></td>
				<td></td>
				<td><a href="javascript:goView(<c:out value="${item.ifmmSeq}"/>)"><c:out value="${item.ifmmId}"/></a></td>
				<td><c:out value="${item.ifmmName}"/></td>
				<td><c:out value="${item.ifmeEmailFull}"/></td>
				<td><c:out value="${item.ifmpNumber}"/></td>
				<td><c:out value="${item.regDateTime}"/></td>
				<td><c:out value="${item.modDateTime}"/></td>
				<th>
					<div class="btn-group me-2" role="group" aria-label="Second group">
    					<button type="button" class="btn btn-light">로그인</button>
    					<button type="button" class="btn btn-light">수정</button>
    					<button type="button" class="btn btn-secondary">탈퇴</button>
					</div>				
				</th>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	
<nav aria-label="...">
  <ul class="pagination" style="justify-content: center;">
  
    <c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>     
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
</c:if> 

  </ul>
</nav>

<div style="text-align: center">Copyright ⓒ YES24 Corp. All Rights
	Reserved.</div>


</div>

<br>



<!--  -->

<!-- 스크립트 쓰는공간 -->


<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/lucky/resources/xdmin/js/validation.js"></script>

<!-- jquery ui -->
<script src="/lucky/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type = "text/javascript">

$("#btnSubmit").on("click", function() {
	if(!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력해 주세요!")) return false;
	
});	

goList = function(Seq) {
	alert(Seq);
	//form 객체를 가져 온다.
	$("#thisPage").val(Seq);
	$("#formList").submit();
}

goForm = function(){
	$("#formList").attr("action", "/lucky/member/memberForm");
	$("#formList").submit();
};

goView = function(seq) {
	alert(seq);
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action", "/lucky/member/memberView");
	$("#formList").submit();
}

$(document).ready(function(){
	 $("input.shDate").datepicker();
}); 

$.datepicker.setDefaults({
  dateFormat: 'yy-mm-dd',
  prevText: '이전 달',
  nextText: '다음 달',
  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
  showMonthAfterYear: true,
  yearSuffix: '년'
});


</script>
</form>
</body>
</html>
