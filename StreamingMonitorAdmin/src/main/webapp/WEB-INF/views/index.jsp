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
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
      <!-- <span class="logo-mini"><b>SM</b></span>
       -->
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
        
        
          <!-- <li>
           -->   <!-- 검색 시작 -->
    <!--   <form action="#" method="get" class="sidebar-form"> -->
          <!-- <input type="text" name="q" class="form-control" placeholder="Search..."> -->
              <!-- <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
         </form>
      <!-- /.검색 끝 -->
    <!--   </li> -->

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
         
         
<!-- <form role="form" method="post">
            <div class="form-group">
            
                <select class="combobox input-large form-control" name="normal">
                    <option value="" selected="selected">중국 1 서버 10.1.23.1</option>
                    <option value="">한국 1 서버 10.1.23.1</option>
                    <option value="">일본 1 서버 10.1.23.1</option>
                    <option value="">미국 1 서버 10.1.23.1</option>
                    <option value="">미국 2 서버 11.1.11.1</option>
                </select>
            </div>
        </form>
          -->

         
         
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

       
      <!-- 검색 시작 -->
    <!--   <form action="#" method="get" class="sidebar-form"> -->
          <!-- <input type="text" name="q" class="form-control" placeholder="Search..."> -->
              <!-- <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span> -->
        <!--   </form>
      --> <!-- /.검색 끝 -->

<!-- 
<form role="form" method="post">
            <div class="form-group">
            
                <select class="combobox input-large form-control" name="normal">
                    <option value="" selected="selected">중국 1 서버 10.1.23.1</option>
                    <option value="">한국 1 서버 10.1.23.1</option>
                    <option value="">일본 1 서버 10.1.23.1</option>
                    <option value="">미국 1 서버 10.1.23.1</option>
                    <option value="">미국 2 서버 11.1.11.1</option>
                </select>
            </div>
        </form> -->

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
      <!--   <li class="divider"></li>
         -->
       
       <!-- 액티브시 활성화 시키기  -->
        <li class="active">
        	<a href="dashboard.do"><i class="fa fa-area-chart" aria-hidden="true"></i><span>DASHBOARD</span></a>
        </li>
        
         
       
 		<li>
        	<a href="collectinglist.do"><i class="fa fa-list-alt" aria-hidden="true"></i><span>수집 게시물 목록</span></a>
        </li>
        
        
 		<li>
        	<a href="crawerstatus.do"><i class="fa fa-cog" aria-hidden="true"></i><span>수집기 조작</span></a>
        </li>
        
        
 		<li>
        	<a href="logout.do"><i class="fa fa-sign-out" aria-hidden="true"></i><span>로그아웃</span></a>
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
    <!-- 페이지 헤더 -->
   <section class="content-header">
     <!--  <h1>
        Flot Charts
        <small>preview sample</small>
      </h1> -->
      
      
      <ol class="breadcrumb">
        <li><a href="#">StreamingMonitor</a></li>
        <li class="active">DashBoard</li>
      </ol>
      
    </section>
    <!-- 내용, 여기에 내용 -->
    <section class="content">
   
    
    
    <div class="row" style="margin-top: 20px;">
    	<div class="col-xs-12" >
    <div class="box box-danger">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">수집 게시물 추이</h3>

              <div class="box-tools pull-right">
                실시간 보기
                <div class="btn-group" id="realtime" data-toggle="btn-toggle">
                  <button type="button" class="btn btn-default btn-xs active" data-toggle="on">On</button>
                  <button type="button" class="btn btn-default btn-xs" data-toggle="off">Off</button>
                </div>
              </div>
            </div>
            <div class="box-body">
              <div id="interactive" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
    	</div>
    </div>
    		
     <div class="row">
     
     <div class="col-md-7">
    	<div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">실시간 수집 현황</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin hover">
                  <thead>
                  <tr>
                    <th>순번</th>
                    <th>단말기ID</th>
                    <th>사이트명</th>
                    <th>컨텐츠명</th>
                    <th>발생일자</th>
                    <th>수집여부</th>
 					<th></th>
                  </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach var="monitor_list" items="${monitor_list}">
        			<tr>
            			<td>${monitor_list.id}</td>
            			<td>${monitor_list.terminal_id}</td>
            			<td>${monitor_list.site_name}</td>
            			<td>${fn:substring(monitor_list.title,0,45)}</td>
            			<td>${fn:substring(monitor_list.collect_time,0,10)}</td>
            			<td><span class="label label-success">수집완료</span></td>
            		    <td><a href="#"><i class="fa fa-search-plus" aria-hidden="true"></i></a></td>
            		</tr>
    		      </c:forEach>
                                    
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
           <!--    <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Place New Order</a> -->
              <a href="collectinglist.do" class="btn btn-sm btn-default btn-flat pull-right">모두 보기</a>
            </div>
            <!-- /.box-footer -->
          </div>
    	</div>
    	
    	
    	
    	
    	
     
     
    	
    	<div class="col-md-5">
    	<div class="box box-danger">
            <div class="box-header with-border">
           
              <h3 class="box-title">페이지별 수집 진행 진척도</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div id="bar-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
    	</div>
    	
    </div>
      
      
      <div class="row">
        <div class="col-md-2 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-desktop" aria-hidden="true"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">총 클라이언트</span>
              <span class="info-box-number">2</span>
                    <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                            <span class="progress-description">
                 <i class="fa fa-angle-up"></i>   &nbsp;    0% 전 주 대비
              </span>
              
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
    
       <div class="col-md-2 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-clock-o" aria-hidden="true"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">평균 작동 시간</span>
              <span class="info-box-number">2,000</span>
                    <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                            <span class="progress-description">
               <i class="fa fa-angle-up"></i>   &nbsp;      0% 전 주 대비
              </span>
              
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        
        <div class="col-md-2 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-play" aria-hidden="true"></i>
</span>

            <div class="info-box-content">
              <span class="info-box-text">작동 중인 클라이언트</span>
              <span class="info-box-number">1</span>
                    <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                            <span class="progress-description">
                <i class="fa fa-angle-up"></i>   &nbsp;     0% 전 일 대비
              </span>
              
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        
        <div class="col-md-2 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-pause" aria-hidden="true"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">중지된 클라이언트</span>
              <span class="info-box-number">1</span>
                    <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                            <span class="progress-description  text-red">
              <i class="fa fa-angle-up"></i>   &nbsp;       0% 전 일 대비
              </span>
              
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        
        <div class="col-md-2 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-check" aria-hidden="true"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">확인한 게시물 수</span>
              <span class="info-box-number">4</span>
                    <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                            <span class="progress-description">
                   <i class="fa fa-angle-up"></i>   &nbsp;  0% 전 주 대비
              </span>

            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        
        <div class="col-md-2 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-list" aria-hidden="true"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">전체 수집 정보</span>
              <span class="info-box-number">199</span>
                    <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div> 
              <span class="progress-description">
                   <i class="fa fa-angle-up"></i>   &nbsp; 0% 전 주 대비
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        
        
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.내용 끝 -->
  </div>
  <!-- /.내용놔두는 컨텐츠페이지 끝 -->

  <!-- 메인 푸터 -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2017 <a href="#">MWSTORY</a>.</strong> All rights reserved.
  </footer>

</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.3 -->
<script src="resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/dist/js/app.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
     <!-- ChartJS 1.0.1 -->
<script src="resources/plugins/chartjs/Chart.min.js"></script>
<!-- FLOT CHARTS -->
<script src="resources/plugins/flot/jquery.flot.min.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="resources/plugins/flot/jquery.flot.resize.min.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="resources/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="resources/plugins/flot/jquery.flot.pie.js"></script>


<!-- Page script -->

<script>
  $(function () {
    /*
     * Flot Interactive Chart
     * -----------------------
     */
    // We use an inline data source in the example, usually data would
    // be fetched from a server
    var data = [], totalPoints = 100;

    function getRandomData() {

      if (data.length > 0)
        data = data.slice(1);

      // Do a random walk
      while (data.length < totalPoints) {

        var prev = data.length > 0 ? data[data.length - 1] : 50,
            y = prev + Math.random() * 10 - 5;

        if (y < 0) {
          y = 0;
        } else if (y > 100) {
          y = 100;
        }

        data.push(y);
      }

      // Zip the generated y values with the x values
      var res = [];
      for (var i = 0; i < data.length; ++i) {
        res.push([i, data[i]]);
      }

      return res;
    }

    var interactive_plot = $.plot("#interactive", [getRandomData()], {
      grid: {
        borderColor: "#f3f3f3",
        borderWidth: 1,
        tickColor: "#f3f3f3"
      },
      series: {
        shadowSize: 0, // Drawing is faster without shadows
        color: "#3c8dbc"
      },
      lines: {
        fill: true, //Converts the line chart to area chart
        color: "#3c8dbc"
      },
      yaxis: {
        min: 0,
        max: 100,
        show: true
      },
      xaxis: {
        show: true
      }
    });

    var updateInterval = 500; //Fetch data ever x milliseconds
    var realtime = "on"; //If == to on then fetch data every x seconds. else stop fetching
    function update() {

      interactive_plot.setData([getRandomData()]);

      // Since the axes don't change, we don't need to call plot.setupGrid()
      interactive_plot.draw();
      if (realtime === "on")
        setTimeout(update, updateInterval);
    }

    //INITIALIZE REALTIME DATA FETCHING
    if (realtime === "on") {
      update();
    }
    //REALTIME TOGGLE
    $("#realtime .btn").click(function () {
      if ($(this).data("toggle") === "on") {
        realtime = "on";
      }
      else {
        realtime = "off";
      }
      update();
    });
    /*
     * END INTERACTIVE CHART
     */

    /*
     * BAR CHART
     * ---------
     */

    var bar_data = {
      data: [["파일투어", 11210], ["파일노리", 91237],
    	  ["보물섬", 41237], ["토렌트킴", 31237],
    	  ["애플파일", 33476], ["클럽박스", 1335]],
      color: "#3c8dbc"
    };
    $.plot("#bar-chart", [bar_data], {
      grid: {
        borderWidth: 1,
        borderColor: "#f3f3f3",
        tickColor: "#f3f3f3"
      },
      series: {
        bars: {
          show: true,
          barWidth: 0.5,
          align: "center"
        }
      },
      xaxis: {
        mode: "categories",
        tickLength: 0
      }
    });
    $.plot("#bar-chart1", [bar_data], {
        grid: {
          borderWidth: 1,
          borderColor: "#f3f3f3",
          tickColor: "#f3f3f3"
        },
        series: {
          bars: {
            show: true,
            barWidth: 0.5,
            align: "center"
          }
        },
        xaxis: {
          mode: "categories",
          tickLength: 0
        }
      });
    /* END BAR CHART */
    
    
    
  

  });
  
</script>




     
</body>
</html>