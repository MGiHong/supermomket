<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>

<body>
	<%@ include file="../../menu.jsp" %>
<div>
<form name="frm" method="post" style="display:none">
<input type="hidden" name="faq_class" value="">
</form>
    <button onclick="faqbtn(1)" class="btn btn-primary">결재</button>
    <button onclick="faqbtn(2)" class="btn btn-primary">거래</button>
    <button onclick="faqbtn(3)" class="btn btn-primary">이용방법</button>
</div>
<div style="width: 80%;margin: 0 auto;border: 1px solid #000;">
 <form class="form-inline" action="getFaqUserList.do" method="post">
  	<select class="form-control" id="sel1" name="searchCondition" style="display:inline-block!important;margin-right:10px;">
        <c:forEach items="${conditionMap}" var="option">
	        <option value="${option.value}">${option.key}</option>
        </c:forEach>
    </select>
    <input class="form-control mr-sm-2" type="text" name="searchKeyword" placeholder="검색어를 입력하세요.">
    <button class="btn btn-success" type="submit">검색</button>
  </form>

    <table class="faqList_table">
    <thead>
        <tr>
            <th>분류</th>
            <th>질문</th>
            <th>답변</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${fvo}" var="fvo">
	<tr>
	  <td class="tdCenter">${fvo.faq_class}</td>
	  <td class="tdCenter">${fvo.faq_q}</td>
	  <td class="tdCenter">${fvo.faq_a}</td>
	</tr>
</c:forEach>
    </tbody>
    </table>
    
    
    
    	<ul class="pagination">
		<c:if test="${paging.nowPage > 1 && paging.lastBtn > paging.viewBtnCnt}">
			<li class="page-item"><a class="page-link" href="${searchURI }?nowPage=${paging.nowPage-1}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">이전</a></li>
		</c:if>
		<c:forEach var="i" begin="${paging.startBtn}" end="${paging.endBtn}" step="1">
			<c:choose>
				<c:when test="${paging.nowPage==i}"><li class="page-item active"><a class="page-link" >${i}</a></li></c:when>
				<c:otherwise><li class="page-item"><a class="page-link" href="${searchURI }?nowPage=${i}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">${i}</a></li></c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.nowPage < paging.lastBtn  && paging.lastBtn > paging.viewBtnCnt}">
			<li class="page-item"><a class="page-link" href="${searchURI }?nowPage=${paging.nowPage+1}&searchCondition=${searchCondition}&searchKeyword=${searchKeyword}">이후</a></li>
		</c:if>
	</ul>
    
</div>

</div>
</body>
</html>