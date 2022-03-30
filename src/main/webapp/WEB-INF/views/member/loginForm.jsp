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

<title>login</title>

<style type="text/css">

.my-wrap {
	width: 380px;
}

</style>

</head>

<body>
<form id="" name="" method="get" action="/lucky/member/loginForm">
<!--  -->
<br>
<div class="container my-wrap">
	<div class="row">
		<div class="col text-center">
		<h1>로그인</h1>
		</div>
	</div>
	<div class="row">
	<div class="col text-center">
		<img src="../../../images/xdmin/loginout/booklogo.jpg">
	</div>
	</div>
	<div class="row row-cols-1 gy-2">
		<div class="col">
			<input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="아이디">
		</div>
		<div class="col">
			<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="비밀번호">
		</div>
	</div>
	<div class="d-grid gap-2 mt-2">
		<button type="button" class="btn btn-primary" id="btnLogin" name="">로그인</button>
		<button type="button" class="btn btn-light">회원가입</button>
		<a href="" class="alert-link" style="text-align: center;">아이디/비밀번호찾기></a>
		<br>
		<button type="button" class="btn text-white" style="background-color:#2DB400;">네이버 계정으로 로그인</button>
		<button type="button" class="btn text-white" style="background-color:#3b5998;">페이스북 계정으로 로그인</button>
		<button type="button" class="btn text-white" style="background-color:#fef01b;">카카오톡 계정으로 로그인</button>
		<button type="button" class="btn btn-light">Google 계정으로 로그인</button>
	</div>

</div>

<!--  -->

<!-- 스크립트 쓰는공간 -->


<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type = "text/javascript">
$("#btnLogin").on("click", function() {
	$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/lucky/member/loginProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/lucky/index/indexView";
				} else {
					alert("회원없음");
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