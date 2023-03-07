<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Item - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/resources/css/product/product_detail.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <style>
        .box {
            width: 70px;
            height: 70px; 
            border-radius: 70%;
            overflow: hidden;
        }

        .profile {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .swiper-container {
 	width:400px;
    height:400px;
    border:1px solid silver;
    border-radius:7px;
    margin-left: -100px;
}

.swiper-slide {
  
    display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
    align-items:center; /* 위아래 기준 중앙정렬 */
    justify-content:center; /* 좌우 기준 중앙정렬 */
}

.swiper-slide img {
	width:400px;
    height:400px;
	box-shadow:0 0 5px #555;
}
        
        
    </style>
</head>

<body>

    <!-- Product section-->    
    <div style="width: 1200px; clear: both; margin: auto;">
        <section class="py-5">
            <hr style="border: 1px black solid;">
            <div class="container px-lg-5 my-5" style="width: 1050px;">
                <div class="row gx-4 gx-lg-5 m-auto">
                    <div class="col-md-5">
                    <div class="swiper-container swiper1">
              				<div class="swiper-wrapper">
                       <div class="swiper-slide"><img src="${post.image_url }" alt="..." ></div>
								<div class="swiper-slide"><img src="http://ccimg.hellomarket.com/images/2023/item/03/01/15/3055907_5199481_1.jpg?size=s6" alt="사진"></div>
								<div class="swiper-slide"><img src="http://ccimg.hellomarket.com/images/2023/item/03/01/23/1714590_5437572_1.jpg?size=s6" alt="사진"></div>
								<div class="swiper-slide"><img src="http://ccimg.hellomarket.com/images/2021/item/11/16/13/4837625_242095_1.jpg?size=s6" alt="사진"></div>
							</div>
              		<div class="swiper-button-next"></div>
              		<div class="swiper-button-prev"></div>
              		<div class="swiper-pagination"></div> 
					</div>
					</div>
                    &emsp;
                    &emsp;
                    &emsp;
                    <div class="col-md-6" style="margin-left: 15px;">
                        <div class="fs-5 large mb-1 fw-bolder">${post.title}</div>
                        <h3 class="display-6 fw-bolder"><fmt:formatNumber value="${post.price}" pattern="#,###" />원</h3>
                        <hr style="width: 420px;">
                        <div class="fs-5 mb-4">
                            <i class="bi bi-heart-fill"></i>&nbsp;${cntWishlist}&nbsp;
                            <i class="bi bi-eye-fill"></i>&nbsp;${post.post_view}&nbsp;
                            <i class="bi bi-clock-fill"></i>&nbsp;${post.createdTimeAgo }
                        &emsp;&emsp;&emsp;&emsp;&emsp;
                        
                        <jsp:include page="./report.jsp" />
  
                        
                        </div>
                        <ul>
                            <li>상품상태&emsp;&emsp;<span>중고</span></li>
                            <br>
                            <li>교환여부&emsp;&emsp;<span>교환불가능</span></li>
                            <br>
                            <li>배송비&emsp;&emsp;&emsp;<span>배송비포함</span></li>
                            <br>
                            <li>거래지역&emsp;&emsp;<span>${post.post_address}</span></li>
                        </ul>
                        <div class="d-flex justify-content-around" style="margin-right: 50px;">
                            <button id="wishlist" class="btn btn-secondary flex-shrink-0 opacity-50" type="button"
                                style="width: 150px; height: 60px;">
                                <i class="bi bi-heart-fill"></i>
                                찜
                            </button>
                            &emsp;
                            <button class="btn btn-warning flex-shrink-0 opacity-75" type="button"
                                style="width: 150px; height: 60px;">
                                <i class="bi bi-messenger"></i>
                                채팅
                            </button>
                            <button class="btn btn-secondary flex-shrink-0 opacity-75" type="button"
                                style="width: 150px; height: 60px;">
                                수정
                            </button>
                            <button class="btn btn-secondary flex-shrink-0 opacity-75" type="button"
                                style="width: 150px; height: 60px;">
                                삭제
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     
        
        <hr style="border: 1px black solid;">
        <!-- Related items section-->

        <section class="py-1 bg-light">
            <div class="container px-4 px-lg-5 mt-5 d-flex">
                <div style="width: 60%;">
                    <h2 class="fw-bolder mb-4">상품정보</h2>
                    <hr style="opacity: 25%;">
                    <p>${post.post_content}</p>
                </div>
                &emsp;
                <div>
                    <hr style="width: 1px; height: 80%;">
                </div>
                &emsp;
                <div style="width: 40%;">
                    <h2 class="fw-bolder mb-4">판매자정보</h2>
                    <hr style="opacity: 25%;">
                    <div class="d-flex">
                        <div class="box" style="background: #BDBDBD;">
                            <img class="profile" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fdi0GrI%2FbtqyyWdEYM8%2FLbDOJG6QuYVXzFI9AlMq60%2Fimg.png">
                        </div>
                        &emsp;
                        <div>
                        <h4>${post.nickname }</h4>
                        <h5>상품 ${cntProd}</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     
        <br>

		<section class="py-3 bg-light">
			<div class="container px-3 px-lg-5 mt-5">
				<h2 class="fw-bolder mb-4">${post.nickname }님의판매상품</h2>
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<c:forEach items="${lists}" var="list">
						<div class="col mb-5">
							<div class="card h-80">
								<!-- Product image-->
								<img class="card-img-top"
									src="${list.image_url }"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">${list.title }</h5>
										<!-- Product price-->
										${list.price }
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"></div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>


		<!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
            </div>
        </footer>
    </div>
    </div>
    
     <input name="currentPage"  value="0"  type="hidden"/>
	</form> 
    
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js">
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
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
	
	
		function show() {
			document.querySelector(".background").className = "background show";
		}

		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#show").addEventListener("click", show);
		document.querySelector("#close").addEventListener("click", close);
	</script>
	
	                        
   
      
</body>

</html>