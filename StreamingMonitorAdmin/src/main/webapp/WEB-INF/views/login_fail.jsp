<%
/* =================================================================
 * 
 * 작성일 : 2017. 6. 19.
 *  
 * 작성자 : 김진수
 * 
 * 상세설명 : 로그아웃 실패 페이지
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>New Streaming Monitor</title>

  <!-- 해상도에 따라 반응형 -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="resources/bootstrap/css/font-awesome.css" rel="stylesheet">
</head>
<body>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
        <div class="modal-content">
              <div class="modal-header">
                   <button onclick="login_go();" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                   <h4 class="modal-title" id="myModalLabel">아이디 또는 비밀번호를 다시 확인하세요.</h4>
              </div>
              <div class="modal-body">
                  등록되지 않은 아이디이거나, 아이디 또는 비밀번호를 잘못 입력하셨습니다.<br/><br/>
                  아이디 또는 비밀번호가 기억이 나지 않으실 경우 관리자에게 문의 바랍니다. <br/><br/>
                  
               id : system pw : mwstory <br/>
               id : admin pw : mwstory <br/>
                  
              </div>
              <div class="modal-footer">
                 <button onclick="login_go();" type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
                 
               <!--   <button type="button" class="btn btn-primary">Save changes</button> -->
              </div>
        </div>
     </div>
</div>

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="resources/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript"> 
    //Call the method on pageload
    $(window).load(function(){
      //Disply the modal popup
        $('#myModal').modal('show');
    });
    
    $('#myModal').on('hidden.bs.modal', function (e) {
    	window.location.href="login.do";
    })
    
    
    function login_go(){
    	window.location.href="login.do";
    }
  </script>
</body>
</html>
