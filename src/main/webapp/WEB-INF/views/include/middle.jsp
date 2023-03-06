<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<!-- Swiper-->
<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> 

<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script>
<style>

      .a-tag {
      	color: black;
       	text-decoration: none;
      }
      
      .a-tag:link {
      	color: black;
      }
      
      .a-tag:visited {
      	color:black;
      }
      
      #recomend {
        
        margin-top: 200px;
        font-size: 30px;
        margin-left: 420px;
        /* margin-bottom: 40px; */
      
      }
      
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
      
      	 
      .swiper {
       position: relative;
       margin-left: 340px;
       top: 50px
       /* padding-left: 100px; */
      }



      .swiper1 {
        width: 800px;
      }

      .swiper2 {
        position: relative;
        margin-left: 71.75%;
        margin-top: -27.05%;
        
      }

       .xLine {
        position: relative;
        border: 0.1px solid rgb(0, 0, 0);
        height: 1px;
        width: 430px;
        top: 54px;
      }

      .xLine2 {
        position: relative;
        left: 89.4%;
        border: 0.1px solid rgb(0, 0, 0);
        height: 1px;
        width: 382px;
        top: 51.7px;
        
      }
      
     .swiper-button-next {
		color: darkgray;
	}
	
	.swiper-button-prev {
	
		color: darkgray;
	}
	
	.swiper-pagination-bullet { 
		border: 1px solid #373737;
		opacity: 1;
		
	 }

	 
	 .swiper-pagination-bullet-active {
	 	 width: 20px;
	 	 transition: width .5s; 
	 	 border-radius: 5px; 
	 	 background: #373737; 
	 	 border: 1px solid transparent; 
	 }
	 
</style>

</head>
<body>

		    <div class="xLine"></div>
            <div class="xLine2"></div>
           
            
            <!--   애니메이션 넣기   -->
                <!-- Swiper -->
      
            <div class="swiper mySwiper swiper1">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="850px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951852995_w2058.jpg" width="850px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/950792743_w3087.jpg" width="850px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="850px" height="460px" alt="사진"></div>
              </div>
               <div class="swiper-button-next"></div> 
              <div class="swiper-button-prev"></div> 
              <div class="swiper-pagination pig"></div> 
           </div>
            <!-- 두번째 스와이퍼 -->
            <div class="swiper mySwiper swiper2">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/02/10/a39ae7c9ac0d44eba638f1b52a94aa7b_20230210181851.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2020/08/24/a9ebd1d26992499583dc838b2c753590_20200824152526.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <!-- <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/01/10/854c48a4623b4bf5a2c373fe5ae2e623_20230110131514.jpeg?width=500" width="230px" height="250px" alt="사진"></div> -->
              </div>
             <!--  <div class="swiper-button-next"></div> 
               <div class="swiper-button-prev"></div>  -->
               <div class="swiper-pagination"></div>  
          </div>
		
	  

	  <div id="recomend"> 오늘의 상품 추천</div>

            
         <!-- 상품 사진들 넣기-->
          <div class="item_list">
		  <c:forEach items="${posts }" var="post">
            <div class="item_card">    
              <div class="item_img">
              <a class="a-tag" href="product?id=${post.post_id }">
                <img src="${post.image_url }" alt="상품">
              </a>
              </div>
              <div class="text">
              
                <h5>
                <a class="a-tag" href="product?id=${post.post_id }">
                <i class="fa-solid fa-heart-circle-plus"  style="float: right; color: gray;"></i>${post.title }
              <%--   <i class="fa-regular fa-heart" style="float: right;"></i>${post.title } --%>
                 </a>
                </h5>
                <p>${post.price }</p>
                <!-- <button><i class="fas fa-check"></i>사러가기</button> -->
              </div>
             
            </div>
           
           </c:forEach>
            
          </div>        
          
          
          
               <!-- 스와이퍼 -->
      <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>


          <!-- 자바 스크립트 -->
          <script>
            var swiper = new Swiper(".swiper1", {
              spaceBetween: 30,
              centeredSlides: true,
              autoplay: {
                delay: 2100,
                disableOnInteraction: false,
              },
              pagination: {
                el: ".swiper-pagination",
                clickable: true,
              },
              navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
              },
            });

            var swiper = new Swiper(".swiper2", {
              spaceBetween: 30,
              centeredSlides: true,
              autoplay: {
                delay: 2600,
                disableOnInteraction: false,
              },
              pagination: {
                el: ".swiper-pagination",
                clickable: true,
              },
              navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
              },
            });
           </script>
	
	

</body>
</html>