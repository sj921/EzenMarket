<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>
      .selling {
    	  /* border: solid 1px white; */
    	  border-radius: 10px;
      	  /* padding: 20px; */
      }


      .item_list {
        border: 1px solid white;
        width: 70%;
        margin-top: 10px;
        margin-left: 24.5%;
        display: flex;
        flex-wrap: wrap;
     
      }

      .item_list .item_card {
        border: solid 0.2px #f7e6e625;
        height: 350px;
        width: 230px;
        padding: 5px;
        margin-bottom: 15px;
        
      }

      .item_list .item_card img {
        
        height: 210px;
        width: 214px;
        border-radius: 3px;
      }
      
      
      .item_list .item_card .text {
        margin-top: 10px;
        font-size: 26px;
        color: black;
        
      }
      
      .item_list .item_card .text p {
        font-size: 20px;
        opacity: .8;
        color: black;
        
      }
    </style>
       
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="ProductList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
<body>


	<div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div> <!-- 옵션선택 끝 -->


	  <div class="item_list">
		  <c:forEach var="list" items="${viewAll}">
            <div class="item_card">    
              <div class="item_img">
              <a class="a-tag" href="product?id=${list.post_id }">
                <img src="${list.image_url }" alt="상품">
              </a>
              </div>
              
              <div class="text">
           	   <h5>
               	 <a class="a-tag" href="product?id=${list.post_id }">
              		  <i class="fa-solid fa-heart-circle-plus"  style="float: right; color: gray;"></i>
               	 ${list.title }
               	 </a>
                </h5>
                <p>${list.price }</p>
                <!-- <button><i class="fas fa-check"></i>사러가기</button> -->
              </div>
             
            </div>
           
           </c:forEach>
        </div>
        
    <div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/productList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/productList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/productList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	
	</div>

        
	
</body>
</html>