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
	href="<%=request.getContextPath()%>/resources/css/product/product_menu.css" />
</head>
<body>

	<jsp:include page="./product_category.jsp" />
		
	<div id="recomend">오늘의 상품 추천</div>
	<!-- 상품 사진들 넣기-->
	
	<div class="item_list">
		<c:forEach items="${cateList}" var="list">	
			<div class="item_card">
				<div class="item_img">
					<img src="${list.image_url }" alt="상품">
				</div>
				<div class="text">
					<h5>
						<i class="fa-regular fa-heart" style="float: right;"></i>${list.title }
					</h5>
					<p>
						<fmt:formatNumber value="${list.price }" pattern="#,###" />
						원
					</p>
					<p>${list.createdTimeAgo }</p>
					<p>${list.post_address}</p>
					<!-- <button><i class="fas fa-check"></i>사러가기</button> -->
				</div>				
			</div>	
		</c:forEach>
	</div>
	
	
	<div class="pagination">	
		<c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
			<a href="./category?category_id=<'%=request.getParameter("category_id")%>&page=${i }">${i }</a>
		</c:forEach>	
	</div>
	
	
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
				<li class="page-item"><a class="page-link" href="./category?category_id=<%=request.getParameter("category_id")%>&page=${i }">${i }</a></li>
			</c:forEach>	
		</ul>
	</nav>






	<!-- 
	* 제목 말줄임 적용하기
	* 업로드 시간 표시하기
	* 지역표시하기
	* 페이지네이션 적용
	* 한줄에 5줄씩 x 몇행?
	 -->


</body>
</html>