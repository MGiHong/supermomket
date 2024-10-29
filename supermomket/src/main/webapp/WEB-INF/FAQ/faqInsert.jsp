<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../../header.jsp"%>


<%@ include file="../../menu.jsp"%>
<form name="fm" action="insertfaq.do"  method="POST">
	<!-- select 태그의 name을 faq_class로 수정하여 서버에서 해당 값을 받을 수 있도록 함 -->
		<select class="form-control innm" name="faq_class">
			<!-- JSP 내에서 선택된 값 유지 -->
			<option value="결재" ${fvo.faq_class == 'payment' ? 'selected' : ''}>결재</option>
			<option value="거래" ${fvo.faq_class == 'transaction' ? 'selected' : ''}>거래</option>
			<option value="이용방법" ${fvo.faq_class == 'utilization' ? 'selected' : ''}>이용방법</option>
		</select>
	</div>
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
		<button type="submit" class="btn btn-primary">작성 완료</button>
	</div>
</form>

	<ul class="pagination">
		<c:if test="${paging.nowPage > 1 && paging.lastBtn > paging.viewBtnCnt}">
			<li class="page-item"><a class="page-link" href="getBoardList.do?nowPage=${paging.nowPage-1}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">이전</a></li>
		</c:if>
		<c:forEach var="i" begin="${paging.startBtn}" end="${paging.endBtn}" step="1">
			<c:choose>
				<c:when test="${paging.nowPage==i}"><li class="page-item active"><a class="page-link" >${i}</a></li></c:when>
				<c:otherwise><li class="page-item"><a class="page-link" href="getBoardList.do?nowPage=${i}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">${i}</a></li></c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.nowPage < paging.lastBtn  && paging.lastBtn > paging.viewBtnCnt}">
			<li class="page-item"><a class="page-link" href="getBoardList.do?nowPage=${paging.nowPage+1}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">이후</a></li>
		</c:if>
	</ul>


</div>
</body>
</html>