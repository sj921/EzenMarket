<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/menu/menu.css" />
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "page?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
</head>
<body>

	<jsp:include page="./category.jsp" />

	<div id="recomend">오늘의 상품 추천</div>
	<!-- 상품 사진들 넣기-->

	<div class="item_list">
		<c:forEach items="${cateList }" var="list">
			<div class="item_card">
				<div class="item_img">
					<img src="${list.image_url }" alt="상품">
				</div>
				<div class="text">
					<h5>
						<i class="fa-regular fa-heart" style="float: right;"></i>${list.title }
					</h5>
					<p>
						<fmt:formatNumber value="${list.price }" pattern="#,###" />원
					</p>
					<p>${list.createdTimeAgo}</p>
					<p>${list.post_address}</p>

					<!-- <button><i class="fas fa-check"></i>사러가기</button> -->
				</div>
			</div>
		</c:forEach>
	</div>
	<br>

	<div class=pagination>
		<c:if test="${paging.startPage != 1 }">
			<a
				href="page?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
			var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="page?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a
				href="page?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>

	<!-- 
	* 업로드 시간 표시하기
	* 지역표시하기
	* 페이지네이션 적용
	 -->

</body>
</html>