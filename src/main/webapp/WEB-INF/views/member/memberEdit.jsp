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


<title>memberEdit</title>

<style type="text/css">


#firstagree {
	float: left;
}

#secondagree {
	float: left;
}

#male {
	float: left;
}

#female {
	float: left;
}

#threeagree {
	float: left;
}

#fouragree {
	float: left;
}

#fiveagree {
	float: left;
}

#sixagree {
	float: left;
}


</style>
</head>

<body>
	<form  id="formEdit" name="formEdit" method="post" action="/lucky/member/memberUpdt">
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
		<input type="hidden" id="shIfDelNy" name="shIfDelNy" value="<c:out value="${vo.shIfDelNy}"/>">
		<input type="hidden" id="shIfmmName" name="shIfmmName" value="<c:out value="${vo.shIfmmName}"/>">
		<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
		<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>">
		
	
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
						<strong>회원 기본정보</strong>
					</h4>
				</div>
				
					
						<table class="table align-middle table-bordered border-primary">
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>아이디</strong></td>
								<td style="width: 35%">
									<input class="form-control" type="text"  style="width:250px" id="ifmmId" name="ifmmId" value="<c:out value="${item.ifmmId}"/>">
								</td>
								<td class="table-secondary" style="width: 15%"><strong>이름</strong></td>
								<td style="width: 35%">
									<input class="form-control" type="text"  style="width:250px" id="ifmmName" name="ifmmName" value="<c:out value="${item.ifmmName}"/>">
								</td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>승인</strong></td>
								<td>
									<div class="form-check" id="firstagree">
  										<input class="form-check-input" type="radio" name="first" id="agree1">승인
									</div>
									<div class="form-check" id="secondagree">
  										<input class="form-check-input" type="radio" name="first" id="agree2">미승인
									</div>
								</td>
								<td class="table-secondary" style="width: 15%"><strong>국가</strong></td>
								<td>
									<select class="form-select" aria-label="Default select example">
  										<option selected>국가</option>
									  	<option value="1">한국</option>
									  	<option value="2">미국</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>비밀번호</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:200px" id="ifmmPassword" name="ifmmPassword" value="<c:out value="${item.ifmmPassword}"/>">
								</td>
								<td class="table-secondary" style="width: 15%"><strong>비밀번호 확인</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:200px">
								</td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>성별</strong></td>
								<td>
									<div class="form-check" id="male">
  										<input class="form-check-input" type="radio" name="second" id="male">남성
									</div>
									<div class="form-check" id="female">
  										<input class="form-check-input" type="radio" name="second" id="female">여성
									</div>
								</td>
								<td class="table-secondary" style="width: 15%"><strong>생년월일</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:200px" id="ifmmDob" name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>">
								</td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>휴대폰번호</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:250px" id="ifmpNumber" name="ifmpNumber" value="<c:out value="${item.ifmpNumber}"/>">
										<div class="form-check" id="threeagree">
  										<input class="form-check-input" type="radio" name="three" id="threeagree">수신허용
									</div>
									<div class="form-check" id="fouragree">
  										<input class="form-check-input" type="radio" name="three" id="fouragree">수신거부
									</div>
								</td>
								<td class="table-secondary" style="width: 15%"><strong>이메일</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:250px" id="ifmeEmailFull" name="ifmeEmailFull" value="<c:out value="${item.ifmeEmailFull}"/>">
									 <div class="form-check" id="fiveagree">
  										<input class="form-check-input" type="radio" name="four" id="fiveagree">수신허용
									</div>
									<div class="form-check" id="sixagree">
  										<input class="form-check-input" type="radio" name="four" id="sixagree">수신거부
									</div>
								</td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>주소</strong></td>
								<td colspan="3"></td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>전화번호</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:250px">
								</td>
								<td class="table-secondary" style="width: 15%"><strong>팩스번호</strong></td>
								<td>
									<input class="form-control" type="text"  style="width:250px">
								</td>
							</tr>
							<tr>
								<td class="table-secondary" style="width: 15%"><strong>설명</strong></td>
								<td colspan="3">
									<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
								</td>
							</tr>
						</table>
					
				
			
			<br>

			<div class="row">
				<div class="col-12 col-sm-3">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">최종수정자</label>
						<input class="form-control" type="text" value="이상원"
							aria-label="readonly input example" readonly>
					</div>
				</div>
				<div class="col-12 col-sm-3">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">최종수정일</label>
						<input class="form-control" type="text"
							value="2022.02.01 12:00:00" aria-label="readonly input example"
							readonly>
					</div>
				</div>
				<div class="col-12 col-sm-3">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">최초등록자</label>
						<input class="form-control" type="text" value="이상원"
							aria-label="readonly input example" readonly>
					</div>
				</div>
				<div class="col-12 col-sm-3">
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">최초등록일</label>
						<input class="form-control" type="text"
							value="2022.01.01 12:00:00" aria-label="readonly input example"
							readonly>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-6 col-sm-6">
					<div class="mb-3">
						<a href="javascript:goView()">뒤로가기(상세)</a>
					</div>
				</div>

				<div
					class="col-6 col-sm-6  d-md-flex justify-content-md-end text-end">
					<div class="mb-3">
						<input type="submit" id="btnsubmit" value="제출">
					</div>
				</div>
			</div>
		</div>
		</div>


	<!-- 스크립트 쓰는공간 -->


	<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/lucky/resources/xdmin/js/validation.js"></script>

<script type = "text/javascript">
	
goView = function(){
	$("#formEdit").attr("action", "/lucky/member/memberView");
	$("#formEdit").submit();
};




</script>

</form>		
</body>
</html>