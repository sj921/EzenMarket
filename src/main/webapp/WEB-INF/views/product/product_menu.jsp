<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="com.ezen.ezenmarket.product.dto.Time" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="createdTimeAgo" value="${menuDto.createdTimeAgo}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/css/menu/menu.css" />
</head>

<body>

	
<jsp:include page="./product_category.jsp" />

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
              <p><fmt:formatNumber value="${list.price }" pattern="#,###" />원</p>
             <p>${list.createdTimeAgo}</p>
               <p>${list.post_address}</p>

					<!-- <button><i class="fas fa-check"></i>사러가기</button> -->
				</div>
			</div>
		</c:forEach>
	</div>
	
	<br><br><br><br><br>


</body>
</html>