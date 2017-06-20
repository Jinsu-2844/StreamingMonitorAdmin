<%
/* =================================================================
 * 
 * 작성일 : 2017. 6. 14.
 *  
 * 작성자 : 김진수
 * 
 * 상세설명 : 인덱스 페이지
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

  <!-- 부트스트랩 3.3.6 -->
  <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  
  <!-- UI 꾸미기 bootstrap 커스텀시킨거-->
  <link rel="stylesheet" href="resources/dist/css/Groupware.css">


  <!-- 커스텀 로그인CSS -->
   <!-- <link href="resources/custom/board/responsive.bootstrap.min.css" rel="stylesheet">
    
  <link href="resources/custom/board/dataTables.bootstrap.min.css" rel="stylesheet">
   -->


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="hold-transition skin-red-light fixed">
<div class="wrapper">

  <!-- 메인헤더 -->
  <header class="main-header">

    <!-- 로고 -->
    <a href="index.do" class="logo">
      
      <!-- 50*50픽셀 미니 로고 -->
      <span class="logo-mini"><b>SM</b></span>
      
      <!-- 기본 상태 로고 -->
      <span class="logo-lg"><b>StreamingMonitor</b></span>
    </a>



    <!-- 부트스트랩 네비빠  -->
    <nav class="navbar navbar-static-top" role="navigation">
      
      
      <!-- 사이드 토글버튼-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      
      
      <!-- 네비빠 오른쪽 쪽지나 알림, 사용자이름  -->
      <div class="navbar-custom-menu">
      
        <ul class="nav navbar-nav">
        
        
          

          <!-- 알림 토글 버튼  -->
          <!-- <li class="dropdown notifications-menu">
            Menu toggle button
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">1</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">총 1개의 알림이 있습니다.</li>
              <li>
                <ul class="menu">
                  <li>start notification
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i>중지된 클라이언트가 1건 있습니다.
                    </a>
                  </li>
                  end notification
                </ul>
              </li>
              <li class="footer"><a href="#">모든 알림 보기</a></li>
            </ul>
          </li> -->
          <!-- /.여기까지 알림보기 끝 -->
        
          <!-- 유저 메뉴  -->
         <li class="user user-menu">
         
           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             
             <!--  <img src="resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              --> <span>김진수</span>
            </a>
            <ul class="dropdown-menu">
             
              <!-- <li class="user-header">
                <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  전산팀 - 김진수
                  
                </p>
              </li>
              사진 밑 바디
 -->            <!--   <li class="user-body">
                <div class="row">
                  <div class="col-xs-6 text-center">
                    <a href="#">나의 게시글 확인</a>
                  </div>
                  <div class="col-xs-6 text-center">
                    <a href="#">나의 게시글 확인</a>
                  </div>
                 
                </div>
              </li>
              푸터 플필보기, 로갓
  -->             <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">프로필보기</a>
                </div>
                <div class="pull-right">
           
                  <a href="login.do" class="btn btn-default btn-flat">로그아웃</a>
                </div>
              </li>
            </ul>
          </li>
        
        </ul>
      </div>
    </nav>
  </header>
  
  
  <!--왼쪽 컬럼, 사이드바 등 -->
  <aside class="main-sidebar">

    <section class="sidebar">

       
      <!-- 검색 시작 -->
     <!--  <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form> -->
      <!-- /.검색 끝 -->



      <!-- 사이드바 메뉴 -->
      <ul class="sidebar-menu">
      
      
    
        <li class="treeview">
          <a href="#"><span>중국 1 서버 10.1.23.1</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">중국 1 서버 10.1.23.1</a></li>
            <li><a href="#">중국 1 서버 10.1.23.1</a></li>
            <li><a href="#">중국 1 서버 10.1.23.1</a></li>
          </ul>
        </li>
        
        <li class="header">카테고리</li>
        
        
       
       <!-- 액티브시 활성화 시키기  -->
        <li>
        	<a href="index.do"><i class="fa fa-area-chart" aria-hidden="true"></i><span>DASHBOARD</span></a>
        </li>
        
         
       
 		<li class="active">
        	<a href="collectinglist.do"><i class="fa fa-list-alt" aria-hidden="true"></i><span>수집 게시물 목록</span></a>
        </li>
        
        
 		<li>
        	<a href="crawerstatus.do"><i class="fa fa-cog" aria-hidden="true"></i><span>수집기 조작</span></a>
        </li>
        
        
 		<li>
        	<a href="login.do"><i class="fa fa-sign-out" aria-hidden="true"></i><span>로그아웃</span></a>
        </li>
        
        
        <!-- 업무일지 주요기능
        / 업무일지 조회
        / 업무일지 결재
        / 직원 업무일지 조회 권한
        / 개인별, 부서별 지시사항 입력
        / 업무일지 검색
        / 일일, 주간, 월간 업무일지 작성
        / 결재선 관리
          -->
    <!--     <li class="treeview">
          <a href="#"><span>업무일지</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">업무일지 작성</a></li>
            <li><a href="#">업무일지 확인</a></li>
            <li><a href="#">업무일지 조회</a></li>
          </ul>
        </li>
        
         -->
       <!-- 
 		<li>
        	<a href="#"><span>조직도</span></a>
        </li>
        
		        
   -->
        
        
      </ul>
      <!-- /.카테고리 끝 -->
    </section>
    <!-- /.왼쪽 사이드 바 끝 -->
  </aside>

  <!-- 본문 내용 놔두는 곳 컨텐츠 페이지는 여기에.. -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      
      <ol class="breadcrumb">
        <li><a href="#">StreamingMonitor</a></li>
        <li class="active">404 error</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="error-page">
        <h2 class="headline text-yellow">500</h2>

        <div class="error-content">
          <h3><i class="fa fa-warning text-yellow"></i>페이지를 표시할 수 없습니다.</h3>

          <p>
                가능성이 높은 원인 : 
          1. 사이트에 오류가 있습니다.
          2. 현재 사이트는 유지 관리 중 입니다.
         <a href="index.do">메인으로 돌아가기</a>
          </p>

                  </div>
        <!-- /.error-content -->
      </div>
      <!-- /.error-page -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <!-- /.내용놔두는 컨텐츠페이지 끝 -->

  <!-- 메인 푸터 -->
  <footer class="main-footer">
    <!-- To the right -->
    <!-- <div class="pull-right hidden-xs">
      .
    </div> -->
    <!-- Default to the left -->
    <strong>Copyright &copy; 2017 <a href="#">MWSTORY</a>.</strong> All rights reserved.
  </footer>

</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
<script src="resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/app.min.js"></script>

</body>
</html>