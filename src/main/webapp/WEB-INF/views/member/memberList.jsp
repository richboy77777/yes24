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
						<optgroup label="??????">
							<option value="lang">??????
							<option value="KOR">?????????
							<option value="ENG">??????
							<option value="JPN">?????????
						</optgroup>
					</select>
			</div>
		</div>


		<nav class="navbar navbar-expand-lg navbar-light d-none d-sm-block"
			style="background-color: #457ade;"">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">??????</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">????????????</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<br> <br>

		<div class="row">
			<div class="col-2">
				<h4>
					<strong>????????????</strong>
				</h4>
				
			</div>
			
		
			<div class="col-10 text-end">
 				<a href="javascript:goForm()">
 					<button type="button" class="btn btn-info">??????</button>
 				</a>	
			</div>
		</div>

		<table class="table align-middle table-bordered border-primary">
			<tr>
				<td class="table-secondary"><strong>????????????</strong></td>
				<td>
					<select name="shIfDelNy" id="shIfDelNy">
						<option value="">::????????????::
						<option value="1" <c:if test="${vo.shIfDelNy eq 1}">selected</c:if>>Y
						<option value="0" <c:if test="${vo.shIfDelNy eq 0}">selected</c:if>>N
					</select> 
				</td>
				<td class="table-secondary" style="width: 15%"><strong>????????????</strong></td>
				<td>
					<div class="form-check" id="normal1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="normal">??????
					</div>
					<div class="form-check" id="facebook1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="facebook">????????????
					</div>
					<div class="form-check" id="kakaotalk1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="kakaotalk">????????????
					</div>
					<div class="form-check" id="naver1">
 				 		<input class="form-check-input" type="checkbox" value="" name="check1" id="naver">?????????
					</div>
				</td>
			</tr>
			
			<tr>
				<td class="table-secondary"><strong>????????? ?????? ??????</strong></td>
				<td>
					<div class="form-check" id="firstall">
  						<input class="form-check-input" type="radio" name="first" id="all1">??????
					</div>
					<div class="form-check" id="firstagree">
  						<input class="form-check-input" type="radio" name="first" id="agree2">????????????
					</div>
					<div class="form-check" id="firstdisagree">
  						<input class="form-check-input" type="radio" name="first" id="disagree3">????????????
					</div>
				</td>
				<td class="table-secondary"><strong>??????(SMS) ????????????</strong></td>
				<td>
					<div class="form-check" id="secondall">
  						<input class="form-check-input" type="radio" name="second" id="all4">??????
					</div>
					<div class="form-check" id="secondagree">
  						<input class="form-check-input" type="radio" name="second" id="agree5">????????????
					</div>
					<div class="form-check" id="seconddisagree">
  						<input class="form-check-input" type="radio" name="second" id="disagree6">????????????
					</div>
				</td>
			</tr>
			
			<tr>
				<td class="table-secondary"><strong>????????????</strong></td>
				<td>
					<div class="form-check" id="thirdall">
  						<input class="form-check-input" type="radio" name="third" id="all7">??????
					</div>
					<div class="form-check" id="thirdagree">
  						<input class="form-check-input" type="radio" name="third" id="agree8">??????
					</div>
					<div class="form-check" id="thirddisagree">
  						<input class="form-check-input" type="radio" name="third" id="disagree9">?????????
					</div>
				</td>
				<td class="table-secondary" style="width: 15%"><strong>?????????</strong></td>
				<td>
					<select name="shOption" id="shOption">
						<option value="">::????????????::
							<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>?????????
							<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>??????
					</select>
					<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
				</td>
			</tr>
			<tr>
				<td class="table-secondary" style="width: 15%"><strong>????????????</strong></td>
				<td colspan="3">
					<select class="form-select" name="shOptionDate">
							<option value="">::??????::</option>
							<option value="1">?????????</option>
							<option value="2">?????????</option>
							<option>?????????</option>
					</select>
				</td>			
			</tr>
			<tr>
				<td class="table-secondary" style="width: 15%"><strong>?????????</strong></td>
				<td><input class="form-control shDate" type="text" id="shDateStart" name="shDateStart" value="${vo.shDateStart}" placeholder="?????????" autocomplete="off"></td>
				<td class="table-secondary" style="width: 15%"><strong>?????????</strong></td>
				<td><input class="form-control shDate" type="text" id="shDateEnd" name="shDateEnd" value="${vo.shDateEnd}" placeholder="?????????" autocomplete="off"></td>				
			</tr>
		</table>
		
		
		<div class=row>
			<div class="col-4"></div>
			<div class="col-4 text-center">
				<input type="submit" class="btn btn-primary" id="btnSubmit" name="search"> 
			</div>
				<div class="col-3">
					<a href="/lucky/member/memberList">
						<button type="button" class="btn btn-success" id="abc">???????????????</button>
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
						<optgroup label="??????">
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
					<th>??????</th>
					<th>??????</th>
					<th>?????????</th>
					<th>??????</th>
					<th>?????????</th>
					<th>?????????</th>
					<th>?????????</th>
					<th>???????????????</th>
					<th>??????</th>
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
    					<button type="button" class="btn btn-light">?????????</button>
    					<button type="button" class="btn btn-light">??????</button>
    					<button type="button" class="btn btn-secondary">??????</button>
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

<div style="text-align: center">Copyright ??? YES24 Corp. All Rights
	Reserved.</div>


</div>

<br>



<!--  -->

<!-- ???????????? ???????????? -->


<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/lucky/resources/xdmin/js/validation.js"></script>

<!-- jquery ui -->
<script src="/lucky/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type = "text/javascript">

$("#btnSubmit").on("click", function() {
	if(!checkNull($("#shValue"), $("#shValue").val(), "???????????? ????????? ?????????!")) return false;
	
});	

goList = function(Seq) {
	alert(Seq);
	//form ????????? ?????? ??????.
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
  prevText: '?????? ???',
  nextText: '?????? ???',
  monthNames: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
  monthNamesShort: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
  dayNames: ['???', '???', '???', '???', '???', '???', '???'],
  dayNamesShort: ['???', '???', '???', '???', '???', '???', '???'],
  dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'],
  showMonthAfterYear: true,
  yearSuffix: '???'
});


</script>
</form>
</body>
</html>
