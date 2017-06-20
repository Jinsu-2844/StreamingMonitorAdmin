<%
/* =================================================================
 * 
 * 작성일 : 2017. 6. 14.
 *  
 * 작성자 : 김진수
 * 
 * 상세설명 : 로그인 페이지, 웹 첫 시작 화면
 *   
 * =================================================================
 * 수정일         작성자             내용     

 * -----------------------------------------------------------------------
 * 
 * =================================================================
 */ 
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="resources/bootstrap/css/font-awesome.css" rel="stylesheet">
   
   	<!-- 커스텀 로그인CSS -->
    <link href="resources/custom/login-form/loginform.css" rel="stylesheet">
   
   
   
   
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<title>New Streaming Monitor</title>
</head>
<body>


<div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Streaming Monitor</strong></h1>
                           
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>로그인</h3>
                            		<p>아이디와 비밀번호를 입력하세요</p>
                        		</div>
                        		<div class="form-top-right">
                        	    <i class="fa fa-lock" aria-hidden="true"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="login_check.do" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Email</label>
			                        	<input type="text" name="email_id" placeholder="Email..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">로그인</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>



  <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="resources/bootstrap/js/bootstrap.js"></script>
    <script src="resources/bootstrap/js/jquery.backstretch.js"></script>
    <script src="resources/custom/login-form/scripts.js"></script>
       <!--[if lt IE 10]>
            <script src="resources/custom/login-form/placeholder.js"></script>
        <![endif]-->
</body>
</html>