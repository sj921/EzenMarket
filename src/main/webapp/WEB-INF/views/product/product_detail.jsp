<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link
	href="<%=request.getContextPath()%>/resources/css/product/product_detail.css"
	rel="stylesheet" />
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
						<img class="card-img-top mb-3 mb-md-0" src="${post.image_url}"
							alt="..." />
					</div>
					&emsp; &emsp; &emsp;
					<div class="col-md-6" style="margin-left: 15px;">
						<div class="fs-5 large mb-1 fw-bolder">${post.title}</div>
						<h3 class="display-6 fw-bolder">
							<fmt:formatNumber value="${post.price}" pattern="#,###" /> 원
						</h3>
						<hr style="width: 420px;">
						<div class="fs-5 mb-4">
							<i class="bi bi-heart-fill"></i>&nbsp;${cntWishlist}&nbsp; 
							<i class="bi bi-eye-fill"></i>&nbsp;${post.post_view}&nbsp; 
							<i class="bi bi-clock-fill"></i>&nbsp;${post.createdTimeAgo }
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
					

						
							<button id="zzimBtn" type="button" class="btn btn-secondary flex-shrink-0 opacity-50"
								style="width: 150px; height: 60px;" >찜하기</button>
								
						
			
							&emsp; 


							<button class="btn btn-warning flex-shrink-0 opacity-75"
								type="button" style="width: 150px; height: 60px;">
								<i class="bi bi-messenger"></i> 채팅
							</button>
							<button class="btn btn-secondary flex-shrink-0 opacity-75"
								type="button" style="width: 150px; height: 60px;">수정</button>
							<button class="btn btn-secondary flex-shrink-0 opacity-75"
								type="button" style="width: 150px; height: 60px;">삭제</button>
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
				<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<c:forEach items="${lists}" var="list">
						<div class="col mb-5">
							<div class="card h-80">
								<!-- Product image-->
								<img class="card-img-top" src="${list.image_url }" alt="..." />
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
				<p class="m-0 text-center text-white">Copyright &copy; Your	Website 2022</p>
			</div>
		</footer>
	</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>



	<script>	
	const zzimBtn = document.getElementById('zzimBtn');
    
    zzimBtn.addEventListener('click', (e) => {
        
        // AJAX 요청 인스턴스 생성
        const xhttp = new XMLHttpRequest();

        xhttp.addEventListener('readystatechange', (e) => {
            /*
                readystate 1 : open()이 성공
                readystate 2 : 요청에 대한 응답이 도착함
                readystate 3 : 도착한 응답을 처리중
                readystate 4 : 준비 완료


                console.log('readyState:', e.target.readyState);
            */
           //console.log('readyState', xhttp.readyState);
           //console.log('httpStatus', xhttp.status);

           // 준비도 다 되었고, httpStatus도 ok인 상황
           let cntWishlist = document.getElementById('cntWishlist');
           
           if(xhttp.readyState == 4 && xhttp.status == 200){
                // RestController에서 응답한 데이터(body)가 responseText에 들어있다
                console.log('요청 성공!', xhttp.responseText);
                
                if(xhttp.responseText == '0'){                   
                   zzimBtn.style.backgroundColor = 'red';
                   cntWishlist.innerText =  parseInt(cntWishlist.innerText) + 1;
                   alert('찜이 등록되었습니다!');
                } else if(xhttp.responseText == '1'){
                   zzimBtn.style.backgroundColor = 'gray';
                   cntWishlist.innerText =  parseInt(cntWishlist.innerText) - 1;
                   alert('찜이 해제되었습니다.');
                   
                }
                
           }  
       
        });
        
        xhttp.open('GET', '<%=request.getContextPath()%>/product/zzim?user_number='+ ${sessionScope.user_number} + '&post_id=' + ${post.post_id});
        xhttp.send();
        
    });  
		
    </script>
	


	
	
</body>

	
</html>