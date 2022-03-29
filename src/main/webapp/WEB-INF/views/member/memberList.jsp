<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form id="" name="" method="get" action="/lucky/member/memberList">

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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

	<!--  -->
	<div class="container-fluid">

		<div class="row">
			<div class="col-4 col-sm-2 my-auto">
				<a href="memberList.html"> <img
					src="../../../images/xdmin/member/yes24logo.png">
				</a>
			</div>
			<div class="col-sm-4 my-auto d-none d-sm-block"></div>

			<div class="col-4 col-sm-2 my-auto text-end">
				<a class="btn btn-primary d-block d-sm-none"
					data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
					aria-controls="offcanvasExample" style="font-size: 0.3rem"> 목록
				</a>

				<div class="offcanvas offcanvas-start" tabindex="-1"
					id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title" id="offcanvasExampleLabel">목록</h5>
						<button type="button" class="btn-close text-reset"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
						<div>장르별구분</div>
						<div class="dropdown mt-3">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-bs-toggle="dropdown">장르클릭
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<li><a class="dropdown-item" href="#">소설</a></li>
								<li><a class="dropdown-item" href="#">인문</a></li>
								<li><a class="dropdown-item" href="#">만화</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-1 my-auto d-none d-sm-block">
				<img src="../../../images/xdmin/member/tomcru.png">
			</div>

			<div class="col-sm-2 my-auto text-end d-none d-sm-block">
				SANGWON LEE<br>Administrator
			</div>
			<div class="col-sm-1 my-auto text-end d-none d-sm-block">
				<form action="" method="get" id="" name=""
					enctype="multipart/form-data">
					<select id="" name="select">
						<optgroup label="언어">
							<option value="lang">언어
							<option value="KOR">한국어
							<option value="ENG">영어
							<option value="JPN">일본어
						</optgroup>
					</select>
				</form>
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
			
		<div class="col-1">
			<head>
				<a href="memberList.html"> 
					<i class="fa-solid fa-rotate-right"></i>
				</a>
			</head>
		</div>	
			<div class="col-9 text-end">
				<a href="memberForm.html">
				<button type="button" class="btn btn-primary">회원등록</button>
				</a>
			</div>
		</div>

		<form>
			<table class="table align-middle table-bordered border-primary">
			<tr>
				<td class="table-secondary" style="width: 15%"><strong>검색어</strong></td>
				<td>
					<select name="shIfmmSeq">
							<option value="">-전체검색-
						<c:forEach items="${listCodeGroup}" var="item" varStatus="status">
						<option value="<c:out value="${item.ifcgSeq}"/>"<c:if test="${param.shIfcgSeq eq item.ifcgSeq}">selected</c:if>><c:out value="${item.ifcgName}"/>	
					</c:forEach>
					</select>
					<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
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
				<td class="table-secondary"><strong>삭제여부</strong></td>
				<td>
				<select name="shIfmmSeq">
					<option value="">-삭제여부-
						<c:forEach items="${listCodeGroup}" var="item" varStatus="status">
						<option value="<c:out value="${item.ifcgSeq}"/>"<c:if test="${param.shIfcgSeq eq item.ifcgSeq}">selected</c:if>><c:out value="${item.ifcgName}"/>	
					</c:forEach>
					</select>
				</td>
			</tr>
			</table>
		</form>
		
		<div class=row>
			<div class="col-4"></div>
			<div class="col-4 text-center">
				<button type="button" class="btn btn-dark">검색</button>
			</div>
			<div class="col-4"></div>
		</div>

		<hr color="gray">
				
		<br>

		<div class="row">
			<div class="col-6 col-sm-6">
				<h6>Total:</h6>
			</div>
			<div class="col-6 col-sm-6 text-end">
				<form action="" method="get" id="" name=""
					enctype="multipart/form-data">
					<select id="" name="numberselect">
						<optgroup label="분류">
							<option value="ten">10
							<option value="twenty">20
							<option value="thirty">30
							<option value="fifty">50
						</optgroup>
					</select>
				</form>
			</div>
		</div>
		
	<form>
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
					<th>전화</th>
					<th>휴대폰</th>
					<th>가입일</th>
					<th>최근접속일</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<th>
					<div class="form-check d-flex justify-content-center">
  						<input class="form-check-input" type="checkbox" value="" name="check2" id="box2">
					</div>
				</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>2022-01-01</th>
				<th>2022-03-01</th>
				<th>
					<div class="btn-group me-2" role="group" aria-label="Second group">
    					<button type="button" class="btn btn-light">로그인</button>
    					<button type="button" class="btn btn-light">수정</button>
    					<button type="button" class="btn btn-secondary">탈퇴</button>
					</div>				
				</th>
				</tr>
			</tbody>
		</table>
	</form>	
	
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
</div>

<br>

<div style="text-align: center">Copyright ⓒ YES24 Corp. All Rights
	Reserved.</div>

<!--  -->

<!-- 스크립트 쓰는공간 -->


<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6ddd8200f3.js"
	crossorigin="anonymous"></script>

</body>
</html>
</form>