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

  <!-- DataTables -->
  <link rel="stylesheet" href="resources/plugins/datatables/dataTables.bootstrap.css">
 

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
    <a href="dashboard.do" class="logo">
      
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
            <!-- <ul class="dropdown-menu">
             
              <li class="user-header">
                <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  전산팀 - 김진수
                  
                </p>
              </li>
              사진 밑 바디
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-6 text-center">
                    <a href="#">나의 게시글 확인</a>
                  </div>
                  <div class="col-xs-6 text-center">
                    <a href="#">나의 게시글 확인</a>
                  </div>
                 
                </div>
              </li>
                     <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">프로필보기</a>
                </div>
                <div class="pull-right">
           
                  <a href="logout.do" class="btn btn-default btn-flat">로그아웃</a>
                </div>
              </li>
            </ul> -->
          </li>
        
        </ul>
      </div>
    </nav>
  </header>
  
  
  <!--왼쪽 컬럼, 사이드바 등 -->
  <aside class="main-sidebar">

    <section class="sidebar">

   


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
        	<a href="dashboard.do"><i class="fa fa-area-chart" aria-hidden="true"></i><span>DASHBOARD</span></a>
        </li>
        
         
       
 		<li class="active">
        	<a href="collectinglist.do"><i class="fa fa-list-alt" aria-hidden="true"></i><span>수집 게시물 목록</span></a>
        </li>
        
        
 		<li>
        	<a href="crawerstatus.do"><i class="fa fa-cog" aria-hidden="true"></i><span>수집기 조작</span></a>
        </li>
        
        
 		<li>
        	<a href="logout.do"><i class="fa fa-sign-out" aria-hidden="true"></i><span>로그아웃</span></a>
        </li>
        
       
        
      </ul>
      <!-- /.카테고리 끝 -->
    </section>
    <!-- /.왼쪽 사이드 바 끝 -->
  </aside>

  <!-- 본문 내용 놔두는 곳 컨텐츠 페이지는 여기에.. -->
  <div class="content-wrapper">
    <!-- 페이지 헤더 -->
   <section class="content-header">
  <!--     <h1>
       수집된 데이터
        <small>클라이언트#1</small>
      </h1> 
       -->



      <ol class="breadcrumb">
        <li><a href="#">StreamingMonitor</a></li>
        <li class="active">수집 게시물 목록</li>
      </ol>
      
    </section>
    <!-- 내용, 여기에 내용 -->
    <section class="content">
   
    	<div class="row" style="margin-top: 20px;">
    	
    	<div class="col-md-12">
    	
    		<div class="box box-danger">
            <div class="box-header">
              <h3 class="box-title">수집된 데이터 | 클라이언트 #1</h3>
              <h4 class="box-content"><span>클라이언트로 부터 수집된 저작권 침해 예상 목록 리스트 입니다.</span></h4>
            </div>
            <!-- /.box-header -->
                 <div class="box-body "> <!-- table-responsive -->
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>순번</th>
                  <th>버전</th>
                  <th>클라이언트ID</th>
                  <th>OSP 사이트</th>
                  <th>게시물 제목</th>
                  <th>콘텐츠 파일명</th>
                  <th>수집된 시간</th>
                </tr>
                </thead>
                <tbody>
               <!--  <tr>
                  <td>91</td>
                  <td>0.1</td>
                  <td>1</td>
                  <td>http://m.filewang.com/</td>
                  <td>[[유령]]파라노말 현상을 그린 미스테리 공포 스릴러!!</td>
                  <td>유령 The Apparition, 2012.mkv</td>
                  <td>2017-06-15T17:50:09.000Z</td>
                </tr>
                <tr>
                  <td>90</td>
                  <td>0.1</td>
                  <td>2</td>
                  <td>http://m.torrent.com/</td>
                  <td>2016 자체자막. 하나 끝나면 또 다른 게임이 시작된다.</td>
                  <td>ㅆㅗㅇㅜ5.mp4</td>
                  <td>2017-06-15T17:35:09.000Z</td>
                </tr>
                <tr>
                  <td>89</td>
                  <td>0.1</td>
                  <td>2</td>
                  <td>http://m.torrent.com/</td>
                  <td>이건 테스트다 테스트 테스트여</td>
                  <td>test.mp4</td>
                  <td>2017-06-15T17:32:09.000Z</td>
                </tr>
				<tr>
                  <td>88</td>
                  <td>0.1</td>
                  <td>1</td>
                  <td>http://m.applefile.com/</td>
                  <td>10억달러주식 탕웨이 주윤발 떠따떴어 빨리 공유</td>
                  <td>파국.mkv</td>
                  <td>2017-06-15T17:32:09.000Z</td>
                </tr>         
                 -->
              
                
	<c:forEach var="i" begin="1" end="871" step="1">
<tr>
                  <td>${i}</td>
                  <td>0.1</td>
                  <td>1</td>
                  <td>ht${i * 3}tp://m.applefile.com/</td>
                  <td>10억달러주식 ${i * 3}탕웨이 주윤발 떠따떴어 빨리 공유</td>
                  <td>파국.mkv</td>
                  <td>2017-06-15T17:32:09.000Z</td>
                </tr>         
		

	</c:forEach>
                
                
                
                </tbody>
                
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
    			
				
    	</div>
    	
    	
    	</div>
    
    

    </section>
    <!-- /.내용 끝 -->
  </div>
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

<!-- DataTables -->
<script src="resources/plugins/datatables/jquery.dataTables.js"></script>
<script src="resources/plugins/datatables/dataTables.bootstrap.js"></script>

<script type="text/javascript">

$(function () {
  $("#example1").DataTable({
	  
	  
	  "order": [[ 0, "desc" ]],
	  "lengthMenu": [[20, 50, 100, -1], [20, 50, 100, "All"]]
	
	
  } );
  
  
  $('#example2').DataTable({
	
	"paging": true,
    "lengthChange": false,
    "searching": false,
    "ordering": true,
    "info": true,
    "autoWidth": false
  });
});
</script>
</body>
</html>