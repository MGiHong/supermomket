<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>

<body>
<%@ include file="../../menu.jsp"%>


<div class="cart-container">
	<h2>장바구니</h2>
<form action="insertcart">
	<table class="cart-table">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>상품이미지</th>
				<th>상품명</th>
				<th>수량</th>
				<th>상품금액</th>
				<th>합계금액</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cartList}" var="cvo">
				<tr>
					<th><input type="checkbox"></th>
					<td class="tdCenter">${cvo.p_img}</td>
					<td class="tdCenter">${cvo.p_name}</td>
					<td class="tdCenter">${cvo.p_count}</td>
					<td class="tdCenter">${cvo.p_price}</td>
					<td class="tdCenter">${cvo.p_total}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div class="total-container">
		합계: <span class="total-price">${carttotal.c_total}</span>
	</div>

	<div class="cart-buttons">
		<button class="delete-btn">선택상품삭제</button>
		<button class="select-purchase-btn">선택구매</button>
		<button type="submit" class="all-purchase-btn">전체구매</button>
	</div>
</form>
</div>
</div>

</body>
</html>