<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- jquery ui CSS -->    
<link href="/lucky/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"> 	


<title>memberForm</title>

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

.addScroll {
		overflow-y: auto;
		height : 90px;
	}
	
.input-file-button {
		padding : auto;
		cursor : pointer;
	}

</style>
</head>

<body>
	<form id="formForm" name="formForm" method="post"
		action="/lucky/member/memberInst" autocomplete="off" enctype="multipart/form-data">
		<input type="hidden" name="thisPage"
			value="<c:out value="${vo.thisPage }"/>"> <input
			type="hidden" name="shOption"
			value="<c:out value="${vo.shOption }"/>"> <input
			type="hidden" name="shValue" value="<c:out value="${vo.shValue }"/>">

		<div class="container-fluid">

			<div class="row">
				<div class="col-4 my-auto">
					<a href="/lucky/member/memberList"> <img
						src="/lucky/resources/xdmin/image/yes24logo.png" />
					</a>
				</div>
				<div class="col-4"></div>

				<div class="col-1 my-auto">
					<img src="/lucky/resources/xdmin/image/tomcru.png" />
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
						<strong>회원 기본정보</strong>
					</h4>
				</div>

				<table class="table align-middle table-bordered border-primary">
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>아이디</strong></td>
						<td style="width: 35%"><input class="form-control"
							type="text" style="width: 250px" id="ifmmId" name="ifmmId">
						</td>
						<td class="table-secondary" style="width: 15%"><strong>이름</strong></td>
						<td style="width: 35%"><input class="form-control"
							type="text" style="width: 250px" id="ifmmName" name="ifmmName">
						</td>
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>승인</strong></td>
						<td>
							<div class="form-check" id="firstagree">
								<input class="form-check-input" type="radio" name="first"
									id="agree1">승인
							</div>
							<div class="form-check" id="secondagree">
								<input class="form-check-input" type="radio" name="first"
									id="agree2">미승인
							</div>
						</td>
						<td class="table-secondary" style="width: 15%"><strong>국가</strong></td>
						<td><select class="form-select"
							aria-label="Default select example">
								<option selected>국가</option>
								<option value="1">한국</option>
								<option value="2">미국</option>
						</select></td>
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>비밀번호</strong></td>
						<td><input class="form-control" type="text"
							style="width: 200px"></td>
						<td class="table-secondary" style="width: 15%"><strong>비밀번호
								확인</strong></td>
						<td><input class="form-control" type="text"
							style="width: 200px"></td>
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>성별</strong></td>
						<td>
							<div class="form-check" id="male">
								<input class="form-check-input" type="radio" name="second"
									id="male">남성
							</div>
							<div class="form-check" id="female">
								<input class="form-check-input" type="radio" name="second"
									id="female">여성
							</div>
						</td>
						<td class="table-secondary" style="width: 15%"><strong>생년월일</strong></td>
						<td>
							<input type="text" id="abcDate" name="abcDate"><fmt:formatDate pattern="yyyy-MM-dd" value="${item.ifmmDob}"/>
						</td> 
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>휴대폰번호</strong></td>
						<td><input class="form-control" type="text"
							style="width: 250px" id="ifmpNumber" name="ifmpNumber">
							<div class="form-check" id="threeagree">
								<input class="form-check-input" type="radio" name="three"
									id="threeagree">수신허용
							</div>
							<div class="form-check" id="fouragree">
								<input class="form-check-input" type="radio" name="three"
									id="fouragree">수신거부
							</div></td>
						<td class="table-secondary" style="width: 15%"><strong>이메일</strong></td>
						<td><input class="form-control" type="text"
							style="width: 250px" id="ifmeEmailFull" name="ifmeEmailFull">
							<div class="form-check" id="fiveagree">
								<input class="form-check-input" type="radio" name="four"
									id="fiveagree">수신허용
							</div>
							<div class="form-check" id="sixagree">
								<input class="form-check-input" type="radio" name="four"
									id="sixagree">수신거부
							</div></td>
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>주소</strong></td>
						<td colspan="3">
						<input  class="form-control" style="width: 250px" type="text" id="sample4_postcode" placeholder="우편번호"> 
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							<input class="form-control" style="width: 250px" type="text" id="sample4_roadAddress" placeholder="도로명주소" readonly>
							<input class="form-control" style="width: 250px" type="text" id="sample4_jibunAddress" placeholder="지번주소"><br>
							<span id="guide" style="color: #999; display: none"></span> 
							<input class="form-control" style="width: 250px" type="text" id="sample4_detailAddress" placeholder="상세주소">
							<input class="form-control" style="width: 250px" type="text" id="sample4_extraAddress" placeholder="참고항목">
							<input class="form-control" style="width: 250px" type="text" id="ifmaLatArray0" name="ifmaLatArray" value="<c:out value="${item.ifmaLat}"/>" placeholder="위도" readonly>
							<input class="form-control" style="width: 250px" type="text" id="ifmaLngArray0" name="ifmaLngArray" value="<c:out value="${item.ifmaLng}"/>" placeholder="경도" readonly>
						</td>
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>전화번호</strong></td>
						<td><input class="form-control" type="text"
							style="width: 250px"></td>
						<td class="table-secondary" style="width: 15%"><strong>팩스번호</strong></td>
						<td><input class="form-control" type="text"
							style="width: 250px"></td>
					</tr>
					<tr>
						<td class="table-secondary" style="width: 15%"><strong>설명</strong></td>
						<td colspan="3"><textarea class="form-control"
								id="exampleFormControlTextarea1" rows="3"></textarea></td>
					</tr>
					<tr>
					<th style="width: 15%" class="bg-light"><label for="file0" class="form-label input-file-button">이미지 첨부</label></th>
					<td class="text-start">
					
						<input class="form-control form-control-sm" id="file0" name="file0" onChange="upload(0, 2);" type="file" multiple="multiple" style="display:none;">
						<div class="addScroll bg-secondary">
							<ul id="ulFile0" class="list-group">
							</ul>
						</div>

					</td>
					<th style="width: 15%" class="bg-light"><label for="file1" class="form-label input-file-button">파일 첨부</label></th>
					<td class="text-start">
					
						<input class="form-control form-control-sm" id="file1" name="file1" onChange="upload(1, 1);" type="file" multiple="multiple" style="display:none;">
						<div class="addScroll bg-secondary">
							<ul id="ulFile1" class="list-group">
							</ul>
						</div>
						
					</td>
				</tr>
				</table>
				<br>
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
							<a href="javascript:goList()">목록</a>
						</div>
					</div>

					<div class="col-6 col-sm-6  d-md-flex justify-content-md-end text-end">
						<div class="mb-3">
							<input type="submit" id="btnSubmit" value="추가하기">
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

<!-- The Order of your script is wrong, Jquery Library file should be always on top, then jquery-ui. Keep
 제이쿼리 파일은 스크립트부분보다 항상 아래에 있어야하고 바로 밑에 있어야한다-->
<!-- jquery ui -->
<script src="/lucky/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
			goList = function() {
				$("#formForm").attr("action", "/lucky/member/memberList");
				$("#formForm").submit();
			};
</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=660e03b018f55f1335b665895653acd3&libraries=services"></script>

<script>
			//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
			function sample4_execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var roadAddr = data.roadAddress; // 도로명 주소 변수
								var extraRoadAddr = ''; // 참고 항목 변수

								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraRoadAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraRoadAddr += (extraRoadAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraRoadAddr !== '') {
									extraRoadAddr = ' (' + extraRoadAddr + ')';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('sample4_postcode').value = data.zonecode;
								document.getElementById("sample4_roadAddress").value = roadAddr;
								document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
								if (roadAddr !== '') {
									document
											.getElementById("sample4_extraAddress").value = extraRoadAddr;
								} else {
									document
											.getElementById("sample4_extraAddress").value = '';
								}

								var guideTextBox = document
										.getElementById("guide");
								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
								if (data.autoRoadAddress) {
									var expRoadAddr = data.autoRoadAddress
											+ extraRoadAddr;
									guideTextBox.innerHTML = '(예상 도로명 주소 : '
											+ expRoadAddr + ')';
									guideTextBox.style.display = 'block';

								} else if (data.autoJibunAddress) {
									var expJibunAddr = data.autoJibunAddress;
									guideTextBox.innerHTML = '(예상 지번 주소 : '
											+ expJibunAddr + ')';
									guideTextBox.style.display = 'block';
								} else {
									guideTextBox.innerHTML = '';
									guideTextBox.style.display = 'none';
								}
								
								/* lat and lng from address s */
								
								// 주소-좌표 변환 객체를 생성
 								var geocoder = new daum.maps.services.Geocoder();
								
								//주소로 좌표를 검색
								geocoder.addressSearch(roadAddr, function(result, status) {
									
									//정상적으로 검색이 완료됐으면, 
									if (status == daum.maps.services.Status.OK) {
										
										document.getElementById("ifmaLatArray0").value=result[0].y;
										document.getElementById("ifmaLngArray0").value=result[0].x;
										
										var moveLatLon = new kakao.maps.LatLng(result[0].y, result[0].x);
									    map.setCenter(moveLatLon);
									    
										var markerPosition  = new kakao.maps.LatLng(result[0].y, result[0].x); 
										var marker = new kakao.maps.Marker({ position: markerPosition });
										marker.setMap(null);   
										marker.setMap(map);
									}
								}); 
							}
						}).open();
			}
			
			
</script>

<script type="text/javascript">

/* upload = function(seq, div) {
	
	$("#ulFile" + seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	
	if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
	
	var totalFileSize;
	for (var i = 0; i < fileCount; i++) {
		if(div == 1) {
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		} else if (div == 2) {
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		} else {
			return false;
		}
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
	
	for (var i = 0; i < fileCount ; i++) {
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
}

addUploadLi = function (seq, index, name) {
	
	var ul_list = $("#ulFile0");
	
	li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
	li = li + name;
	li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq + ','+ index +')"><i class="bi bi-x-circle"></i></span>';
	li = li + '</li>';
	
	$("#ulFile"+seq).append(li);
}

delLi = function(seq, index) {
	$("#li_"+seq+"_"+index).remove();
}  
 */
upload = function(seq, div) {
	
	$("#ulFile" + seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	//파일 개수 확인
	if(checkUploadedTotalFileNumber(fileCount, seq) == false) { return false; }
	
	var totalFileSize;
	for (var i = 0 ; i < fileCount ; i++) {
		if(div == 1) {
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) { return false; }
		} else if(div == 2) {
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) { return false; }
		} else {
			return false;
		}
		
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false ) { return false; }
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	
	if(checkUploadedTotalFileSize(totalFileSize, seq) == false) { return false; }
	
	for ( var i = 0 ; i < fileCount ; i++) {
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
	
}

addUploadLi = function (seq, i, name){
	
	var li = '';
	li += '<li id="li_' + seq + '_' + i + '" class="list-group-item d-flex justify-content-between align-items-center">';
	li += name;
	li += '<span class="badge bg-danger rounded-pill" onClick="delLi(' + seq + ',' + i + ')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
	li += '</li>';		
	
	$("#ulFile" + seq).append(li);
	
}

delLi = function(seq, i) {
	$("#li_" + seq + "_" + i).remove();
}

</script>
<script type="text/javascript">
$(document).ready(function(){
	 $("#abcDate").datepicker();
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