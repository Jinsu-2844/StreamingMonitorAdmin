
<%
/* =================================================================
 * 
 * 작성일 : 2017. 6. 21.
 *  
 * 작성자 : 김진수
 * 
 * 상세설명 : 대쉬보드 상 수집 현황 상세보기 페이지
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

<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-hidden="true">&times;</button>
	<h4 class="modal-title" id="myModalLabel">상세보기</h4>
</div>
<div class="modal-body">
	<div class="row" style="margin-top: 5px">
		<div class="col-md-4">
			<label class="control-label" for="NumDoc">ID : </label> <input
				class="form-control" disabled="disabled"
				value="${details.id}" type="text">
		</div>

		<div class="col-md-4">
			<label class="control-label" for="NumDoc">단말기 ID : </label> <input
				class="form-control" disabled="disabled"
				value="${details.terminal_id}" type="text">
		</div>

		<div class="col-md-4">
			<label class="control-label" for="NumDoc">시드 ID : </label> <input
				class="form-control" disabled="disabled"
				value="${details.seed_id}" type="text">
		</div>
	</div>

	<div class="row" style="margin-top: 15px">
		<div class="col-md-6">
			<label class="control-label" for="NumDoc">사이트 명 : </label> <input
				class="form-control" disabled="disabled"
				value="${details.site_name}" type="text">
		</div>
		<div class="col-md-6">
			<label class="control-label" for="NumDoc">사이트 URL : </label> <input
				class="form-control" disabled="disabled"
				value="${details.host}" type="text">
		</div>
	</div>

	<div class="row" style="margin-top: 15px">
		<div class="col-md-12">
			<label class="control-label" for="NumDoc">컨텐츠 제목 : </label> <input
				class="form-control" disabled="disabled"
				value="${details.title}" type="text">
		</div>
	</div>

	<div class="row" style="margin-top: 15px">
		<div class="col-md-12">
			<label class="control-label" for="NumDoc">파일명 : </label> <input
				class="form-control" disabled="disabled"
				value="${details.contents_name}" type="text">
		</div>
	</div>

	<div class="row" style="margin-top: 15px">
		<div class="col-md-12">
			<label class="control-label" for="NumDoc">수집 URL : </label> <input
				class="form-control" disabled="disabled" id = "a"
				value="${details.url}" type="text">

		</div>
	</div>
	<div class="row" style="margin-top: 15px">
		<div class="col-md-12">
			<label class="control-label" for="NumDoc">스트리밍 URL : </label> <input
				class="form-control" disabled="disabled" id = "b"
				value="${details.streaming_url}" type="text">
		</div>
	</div>

	<div class="row" style="margin-top: 15px">
		<div class="col-md-12">
			<label class="control-label" for="NumDoc">수집 시간 : </label> <input
				class="form-control" disabled="disabled"
				value="${details.collect_time}" type="text">

		</div>
	</div>
</div>
<div class="modal-footer">
<%-- 	<button type="button" class="btn btn-danger" onclick="copy_to_clipboard('${details.url}');">
 --%>
 	<button type="button" class="btn btn-danger" onclick="window.open('${details.url}');">
 
 		수집URL이동
	</button>
	
	<button type="button" class="btn btn-danger" data-dismiss="modal">
		<i class="ace-icon fa fa-times"></i> 닫기
	</button>
</div>
<!-- 
<script type="text/javaScript">
function is_ie() {
  if(navigator.userAgent.toLowerCase().indexOf("chrome") != -1) return false;
  if(navigator.userAgent.toLowerCase().indexOf("msie") != -1) return true;
  if(navigator.userAgent.toLowerCase().indexOf("windows nt") != -1) return true;
  return false;
}
 
function copy_to_clipboard(str) {
  if( is_ie() ) {
    window.clipboardData.setData("Text", str);
    alert("복사되었습니다.");
    return;
  }
  prompt("Ctrl + C를 눌러 복사하세요.", str);
}
</script> -->