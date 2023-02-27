<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    
<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script>

<!-- Swiper-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> 
<style>
	
	
      body {
        background-color:white;
      }

    
      .head {
       
        /* position: fixed; */
        position: relative;
        left: 100px;
        border:1px solid black;
        width: 1000px;
        height: 200px;
        
      }

      .logo {
      	position: relative;
      	top: 49px;
        font-size: 45px;
        font-weight: bold;  

      }





      .a-tag:link {
        text-decoration: none;
      }

      .a-tag {
        color: black;
      }


      .Top {
    

        border: 7px solid black;
        background-color: black;
        width: 1900px;
 
      }

      .top1 {

        margin-left: 35%;
        color: white;
        font-size: 15px;
        font-weight: bold;   
      }
      
      .top2 {
        font-weight: bold;   
        color: white;
        font-size: 15px;   
      }

      /* topMenu의 ID를 가진 태그 안에 <ul> 태그 안에 <li> 태그의 스타일을 지정 */
      .topMenu ul li {   

        list-style: none;
        color: hsl(0, 1%, 27%);
        float: right;
        margin-right: 20px;
        font-size: 14px;
        margin-top: -10px;
      }
      
      .topMenu {
      	position: relative;
      	left: -180px
      }
      
      #searchline {
        border: 1px solid black;
        width: 400px;
        height: 1px;
        margin-left: 13%;
        margin-top: -10px;
        /* margin-top: -10px; */
      }
      

      
      .topLine {
        position: relative;
        top: 10px;
        /* border: 0.1px solid rgb(240, 239, 239); */
        width: 100%;

      }
           
      .searchbox {
   
      	position: relative;
      	left : 480px;
      }
         
      .category {
      	position: relative;
      	left: 500px;
      	top: px;
      	list-style: none;
      	display:flex;
      	flex-wrap:wrap;
      }
      
      .items {
      	padding: 20px;
        
      }
      
       #box {
      	width: 1700px;
      }
      
      
      
      

      
</style>
</head>
<body>
	  <div id="box">
		 <header>

          <div class="Top">
              <a class="top1" style="color:white" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
              <a class="top2" style="color:white" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
              <!-- <a class="top" href=""></a> -->
         
          </div>
          
   <%--        <nav class="topMenu">
            <ul>
               <c:choose>
              <c:when test="${sessionScope.login eq 'yes' }">
              <li><a class="menuLink a-tag" href="logout">로그아웃</a></li>
              </c:when>
			  <c:otherwise>              
              <li><a class="menuLink a-tag" href="signup">회원가입</a></li>
              <li><a class="menuLink a-tag" href="signin">로그인</a></li>
               </c:otherwise>
              </c:choose>
            </ul>
          </nav> --%>


          <nav class="head">
          
            <a class="logo a-tag" href="">Ezen<i class="fa-brands fa-monero logoIcon"></i>arket</a>  
            
           <div class="searchbox">
           		 <a href=""><i id="readglasses" class="fa-solid fa-magnifying-glass"></i></a>
           		 <a class="lastHead Mypage a-tag" href=""><i class="fa-regular fa-user icon mypage"></i></a>
                 <a class="lastHead like a-tag" href="register"><i class="fa-solid fa-won-sign icon Like"></i></a>
           </div>
           
          	<ul class="category">
          		<li class="items"><a href="">ALL</a></li>
          		<li class="items"><a href="">SHOES</a></li>
          		<li class="items"><a href="">WOMEN</a></li>
          		<li class="items"><a href="">MAN</a></li>
          		<li class="items"><a href="">BABY</a></li>
          		<li class="items"><a href="">ACC</a></li>
          		<li class="items"><a href="">BRAND</a></li>
          		<li class="items"><a href="">PET</a></li>
          		<li class="items"><a href="">BAG</a></li>
          	</ul>
      
          </nav>

      

        </header>


</body>
</html>