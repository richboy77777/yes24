<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<script src="https://apis.google.com/js/platform.js" async defer></script>

<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="217751378971-qf5rnn482iqk9j6f09p1s56nlje6duqe.apps.googleusercontent.com">

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
		<img src="/lucky/resources/xdmin/image/yes24logo.png"/>
	</div>
	</div>
	<div class="row row-cols-1 gy-2">
		<div class="col">
			<input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="aaa">
		</div>
		<div class="col">
			<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="qweasd">
		</div>
	</div>
	<div class="d-grid gap-2 mt-2">
		<button type="button" class="btn btn-primary" id="btnLogin" name="">로그인</button>
		<button type="button" class="btn btn-light">회원가입</button>
		<a href="" class="alert-link" style="text-align: center;">아이디/비밀번호찾기></a>
		<br>
		<button type="button" class="btn text-white" style="background-color:#2DB400;">네이버 계정으로 로그인</button>
		<button type="button" class="btn text-white" style="background-color:#3b5998; id="btn-facebook" onclick="fnFbCustomLogin();"">페이스북 계정으로 로그인</button>
		<button type="button" class="btn text-white" style="background-color:#fef01b;">카카오톡 계정으로 로그인</button>
		<button type="button" class="btn btn-light">Google 계정으로 로그인</button>
	</div>

<div>
<a href="javascript:kakaoLogin();"><button type="button" class="btn text-white" style="background-color:#fef01b;">카카오톡 계정으로 로그인</button></a>
</div>	
	
<ul>
	<li id="GgCustomLogin">
  		<a href="javascript:void(0)">
  		 <span>Login with Google</span>
 		</a>
 	</li>
</ul>

<!-- The JS SDK Login Button -->
<div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"></div>
	

	
</div>

<!--  -->

<!-- 스크립트 쓰는공간 -->


<!-- javascript -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- Load the JS SDK asynchronously -->
<!-- <script async defer crossorigin="anonymous"
src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=1388235378311345
&autoLogAppEvents=1" nonce="AMpiVJN3">
</script> -->	

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=1388235378311345
&autoLogAppEvents=1" nonce="YtTXFlNw"></script>


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
	
//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyBCUJ0v83ZhqA9qY7YeuKwQ4Q03bSkxpXU', 'access_token': access_token}
		, method:'GET'

		
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		/* console.log(profile) */
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/lucky/member/GloginProc"
			,data : {"ifmmName" : profile.getName()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/lucky/index/indexView";
				} else {
					alert("구글 로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
		
	})
	.fail(function(e){
		console.log(e);
	})
	
}

function onSignInFailure(t){		
	console.log(t);
}	 

</script>

<script>
        window.Kakao.init('660e03b018f55f1335b665895653acd3');
        console.log(Kakao.isInitialized()); 
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.	profile을 profile_nickname으로 변경하니 오류 해결
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account; 
                            const profile_nickname = res.properties.nickname; 
                            console.log(kakao_account)		// 받아온 정보들을 출력
                            console.log(profile_nickname)		// 받아온 정보들을 출력
                            $.ajax({
                    			async: true 
                    			,cache: false
                    			,type: "post"
                    			,url: "/lucky/member/KakaoLgProc"
                    			,data : {"ifmmName" : profile_nickname}
                    			,success: function(response) {
                    				if(response.item == "success") {
                    				 	location.href = "/lucky/index/indexView";
                    				} else {
                    					alert("카카오 로그인 실패");
                    				}
                    			}
                    			,error : function(jqXHR, textStatus, errorThrown){
                    				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                    			}
                    		})
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>

<script>
function checkLoginState() {               					//로그인 클릭시 호출
	    FB.getLoginStatus(function(response) {  
	      statusChangeCallback(response);
	    });
	  }

function statusChangeCallback(response) { 					// FB.getLoginStatus()의 결과호출
	
 console.log(response);             			 			//사용자의 현재 로그인 상태.
	if (response.status === 'connected') {   				// 웹페이지와 페이스북에 로그인이 되어있다면
		testAPI();  
	} else {         			                       		// 웹페이지와 페이스북에 로그인이 되어있지 않다면
		console.log('Please log into this webpage.'); 
	}
}

function fnFbCustomLogin(){
	FB.login(function(response) {
		if (response.status === 'connected') {
			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
				console.log(r);
				console.log('Successful login for: ' + r.name);
			/* 	console.log(testAPI(response)); */
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/lucky/member/FBLgProc"
					,data : {"ifmmName" : r.name}		// 넘겨줄 데이터를 설정
					,success: function(response) {
						if(response.item == "success") {
							location.href = "/lucky/index/indexView";
						} else {
							alert("페이스북 로그인 실패");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				}) 
			})
		} 
	}, {scope: 'public_profile,email'});		//profile, email 권한을 나중에 추가하려는 경우 FB.login() 함수로 다시 실행할 수 있다.
}

window.fbAsyncInit = function() {
	FB.init({
		appId      : '1388235378311345', // 내 앱 ID.
		cookie     : true,
		xfbml      : true,
		version    : 'v13.0'
	});
	FB.getLoginStatus(function(response) {   
		statusChangeCallback(response);        // 로그인 상태를 말해줌
	});
}; 

	function testAPI(response) {                      
	console.log('Welcome!  Fetching your information.... ');
	FB.api('/me', function(response) {
		console.log('Thanks for logging in ' + response.name);
	});
} 

</script>

</form>
</body>
</html>