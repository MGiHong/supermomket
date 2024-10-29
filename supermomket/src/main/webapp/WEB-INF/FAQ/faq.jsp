<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../header.jsp"%>


<%@ include file="../../menu.jsp"%>
<form name="fm" action="updatefaq.do"  method="POST">
	<input type="hidden" name="faq_no" value="${fvo.faq_no}">
	 <!-- 여기서 textarea 값들을 hidden input에 담기 위한 숨겨진 필드를 추가 -->
	<div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">자주묻는 질문</span>
      </div>
		<input type="text" class="form-control innm" name="faq_q" value="${fvo.faq_q}"> 
	</div>
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<span class="input-group-text">답변</span>
		</div>
		<input type="text" class="form-control innm" name="faq_a" value="${fvo.faq_a}"> 
	</div>

	<div id="footer">
		<button type="submit" class="btn btn-primary">수정완료</button>
		<button id="conDel" type="button" class="btn btn-primary">글삭제</button>
		<button id="conList" type="button" class="btn btn-primary">글목록</button>
	</div>
</form>
</div>
</body>
</html>