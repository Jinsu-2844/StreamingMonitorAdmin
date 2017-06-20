<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<style type="text/css">
table {
    border-collapse: separate;
    border-spacing: 0 5px;
}

thead th {
    background-color: #006DCC;
    color: white;
}

tbody td {
    background-color: #EEEEEE;
}

tr td:first-child,
tr th:first-child {
    border-top-left-radius: 6px;
    border-bottom-left-radius: 6px;
}

tr td:last-child,
tr th:last-child {
    border-top-right-radius: 6px;
    border-bottom-right-radius: 6px;
}
</style>
</head>
<body style="padding: 50px;">
<h1>spring oracle mybatis test</h1>
<p>현재 시간 : ${serverTime}</p>
<br/>
<a href="loginform.do" class="btn btn-success">로그인/회원가입</a><br/><br/>
<!-- <a href="logintest.do" class="btn btn-success">로그인테스트</a><br/> -->


<div class="row">
<h1>회원 리스트</h1>
<hr style="border: 2px solid black;"/>

<table class="table">
    <thead>
        <tr>
            <th>번호</th>
            <th>이메일</th>
            <th>패스워드</th>
            <th>이름</th>
            <th>회원등급</th>
            <th>전화번호</th>
            <th>프로필사진</th>
            <th>생년월일</th>
            <th>가입일자</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="memberlist" items="${memlist}">
        <tr>
            <td>${memberlist.member_no}</td><!-- 회원번호  -->
            <td>${memberlist.email}</td><!-- 이메일  -->
            <td>${memberlist.password}</td><!-- 패스워드  -->
            <td>${memberlist.name}</td><!-- 이름  -->
            <td>${memberlist.grade}</td><!-- 회원등급  -->
            <td>${memberlist.tel}</td><!-- 전화번호  -->
            <td>${memberlist.profimg}</td><!-- 프로필사진  -->
            <td>${memberlist.birthday}</td><!-- 생년월일  -->
            <td>${memberlist.regdate}</td><!-- 가입일자  -->
            <td>삭제 수정</td>
        </tr>
        </c:forEach>
    </tbody>
</table>


</div>


<script type="text/javascript" src="resources/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
</body>
</html>