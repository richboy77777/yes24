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

<title>indexView</title>

<style type="text/css">


</style>

</head>

<body>
	<form id="" name="" method="get" action="/lucky/index/indexView">
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
		<br>
		<br>
sessSeq: <c:out value="${sessSeq }"/><br>
sessName: <c:out value="${sessName }"/><br>
sessId: <c:out value="${sessId }"/><br>
<c:if test="${not empty sessSeq}">
	<button type="button" class="btn btn-danger btn-sm" name="" id="btnLogout"><i class="fa-solid fa-power-off"></i></button>
</c:if>
</div>


<br>

<div style="text-align: center">Copyright ⓒ YES24 Corp. All Rights
	Reserved.</div>

<!--  -->

<!-- 스크립트 쓰는공간 -->


<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6ddd8200f3.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type = "text/javascript">
$("#btnLogout").on("click", function() {
	$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/lucky/member/logOutProc"
			//,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/lucky/member/loginForm";
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
});	
</script>




</form>
</body>
</html>
