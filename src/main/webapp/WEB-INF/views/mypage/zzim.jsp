<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,1,0" />
    <style>
    
    /*부트스트랩 기본 css*/
	.bd-placeholder-img { font-size: 1.125rem; text-anchor: middle; -webkit-user-select: none; -moz-user-select: none; user-select: none; }
	@media (min-width: 768px) { .bd-placeholder-img-lg {font-size: 3.5rem;} }
        
    
    /* 탭메뉴 */
	* { margin:0; padding:0; font-size:15px; line-height:1.3;  }
	ul { list-style:none; }
	.tabmenu { max-width:1000px; margin: 0 auto; position:relative; }
	.tabmenu ul { position: relative; }
	.tabmenu ul li { display: inline-block; width:calc(100%/4); float:left; text-align:center; background :white; line-height:40px; }
	.tabmenu label { display:block; width:100%; height:40px; line-height:40px; }
	.tabmenu input { display:none; }
	.tabCon { display:none; width: 100%; text-align:left; padding: 20px; position:absolute; left:0; top:40px; box-sizing: border-box; border : 0px solid #f9f9f9; }
	.tabmenu input:checked ~ label { border-bottom: 3px black solid; }
	.tabmenu input:checked ~ .tabCon { display:block; }   
    
    
    /* 전체 적용 */
	a { text-decoration: none; color: black; }
	a:hover { text-decoration: none; color: black; } 
	.container { margin-top: 50px; margin-bottom: 0; padding-bottom: 0; }
      
     /* 프로필 단 */
	.intro { width: 260px; height: 70px; box-sizing: border-box; border: solid 2px #1E90FF; border-radius: 5px; font-size: 16px; resize: both; }
	#modify-btn{ margin: 0 0 10px 3px; padding: 0 5px 0 5px; color: black; font-size: 16px; }      
	#modify-btn:hover { background-color: black; color: white; }      
	#userInfo-btn { margin: 0 0 0 3px; padding: 0 5px 0 5px; color: black; font-size: 16px; }
	#userInfo-btn:hover { background-color: black; color: white; }      
	#profile-section { border: 0px solid black; width: 300px; margin-left:90px; }      
	#profile-product { border: 0px solid black; width: 1000px; height: 1800px; margin-right:-200px; }      
	.profile-img { margin-top : 100px; }

	/*프로필*/
	#profile-section { border: 0px solid black; padding: 30px; }	
	#profile-section .profile-img { width: 150px; height: 150px; border-radius: 70%; overflow: hidden; margin-left: 60px }	
	#profile-section .profile-img-img { width: 100%; height: 100%; object-fit: cover; }	
	.profile-txt div { margin: 1em;}	
	.profile-txt div:first-child { text-align: center; font-weight: 900; margin-bottom: 2em; }	
	.profile-txt div:nth-child(2) { text-align: center; margin-bottom: 3em; }	
	.product #left { text-align: left; }
	.product #right { float: right; text-align: right; }
	.review #left2 { text-align: left; }
	.review #right2 { float: right; text-align: right; }

	/* 탭메뉴 단 (전체) */
 	
 
	/* 탭메뉴 단 (세부내용) */ 
	
	/* 상품 제목 가격 */
	.card-body { position: relative; }
	.card-body span { color: black; max-width: 210px; }	
	.card-body p { color: black; font-size: 1.5em; float: left; }


	/*상품 이미지 위에 아이콘 추가*/
	.card i { position: absolute; right: 15px; bottom: 140px; color: #FF6464; font-size: 1.5em; }


	/* 탭메뉴 단 (페이징) */      
	/*	
	#page { border: solid 1px #d7d7d7; border-radius: 0.2rem; color: #7d7d7d; text-decoration: none; text-transform: uppercase;
		display: inline-block; text-align: center; padding: 0.5rem 0.9rem; }  
	.pagination { justify-content: center; margin: 30px 0 50px 0; } 
	.pagination > li > a { margin-right: 5px; color: black; } 
	*/
	.page { margin-top: 60px; margin-bottom: 243px;	}
	#page2 {position: static; }
	.pagination { justify-content: center;}  
	.pagination > li > a {  color: black; text-align: center; width:40px; }
	.page-item { margin-right: -150px; }

    </style>
</head>
<body>
  <jsp:include page="../include/header.jsp"/>
 
     <!--본문(해당회원 마이페이지)-->
  <hr>
	<div class="container">
		<!--container start-->
		<div class="row">
			<!--row start-->
			<div id="profile-section" class="col-2">
				<!--profile-section start-->
				<div class="profile-img" id="imgContainer">
					<img id="img" class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="프로필이미지" />
				</div>
				<div class="profile-img" id="modifyimgContainer" onclick="fileUploadAction();" style="display: none;">
					<img id="modifyImg" class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="">
				</div>
				<input type="file" id="input_imgs" style="display: none;" />
				<div class="profile-txt">
					<div class="row">
						<div id="nick">${profile.nickname }</div>
						<input id="modifyNick" type="text" style="display: none;">
					</div>

					<div>
						<span></span> <span></span>
					</div>

					<div class="product">
						<span id="left">상품</span> <span id="right">${profile.postCount }</span>
					</div>
					<div class="review">
						<span id="left2">거래후기</span> <span id="right2">${profile.reviewCount }</span>
					</div>

					<div id="intro" class="intro" style="margin-left: 10px; border: 0px;">${profile.user_intro }</div>
					<textarea id="modifyIntro" class="intro" style="display: none;"></textarea>

					<c:choose>
						<c:when test="${verified eq 'yes' }">
							<button id="modify-btn" onclick="modifyProfile()" type="button" class="btn btn-outline-secondary" style="width: 95%; height: 40px; margin-right: 10px;">
								<i class="fa-solid fa-user-plus"></i> 프로필수정
							</button>
							<button id="userInfo-btn" onClick="location.href='management?user_number=${user_number}'" type="button" class="btn btn-outline-secondary" style="width: 95%; height: 40px; margin-right: 10px;">
								<i class="fa-solid fa-basket-shopping"></i> 내상품관리
							</button>
						</c:when>
					</c:choose>

					<button id="modify-done-btn" onclick="modifyProfileDone()" style="display: none;">완료</button>
				</div>
			</div>
			<!--profile-section end-->


			<!-- 마이페이지 (본인)-->
			<div id="profile-product" class="col-10">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="tabmenu out-tabmenu">
								<ul>
									<li id="tab1" class="btnCon">
										<input type="radio" name="tabmenu" id="tabmenu1" onclick="location.href='./?user_number=${user_number}'">
										<label for="tabmenu1">판매상품</label>
										<div class="tabCon"></div>
									</li>
									<li id="tab2" class="btnCon">
										<input type="radio" name="tabmenu" id="tabmenu2" onclick="location.href='./buy_list?user_number=${user_number}'">
										<label for="tabmenu2">구매내역</label>
										<div class="tabCon"></div>
									</li>
									<li id="tab3" class="btnCon">
										<input type="radio" name="tabmenu" id="tabmenu3" onclick="location.href='./review?user_number=${user_number}'">
										<label for="tabmenu3">후기</label>
										<div class="tabCon"></div>
									</li>
									<li id="tab4" class="btnCon">
										<input type="radio" name="tabmenu" id="tabmenu4" checked> 
										<label for="tabmenu4">찜</label>
										<div class="tabCon">
											<div class="container">
												<div class="row">
													<div class="col">
														<div class="zzim-section" style="margin-bottom: 1em;">
															<span style="font-size: 1.2em; font-weight: 700;">찜한 상품</span>
															<span style="color: crimson; font-weight: 700;">${profile.zzimCount }</span>
															<!--후기 등록될 때마다 숫자 증가해야 함-->
														</div>
													</div>
												</div>											
												<div class="row">
												<c:choose>
													<c:when test="${profile.zzimCount > 0}">
													<c:forEach items="${zzim }" var="zzim">
														<div class="col-4">
															<a class="product" href="../product?id=${zzim.post_Id }">
																<div class="card" style="width: 13em; margin: 0 10px 20px 0;">
																	<img src="${zzim.image_url }" class="card-img-top" alt="..." style="width: 100%; height: 250px;"> 
																		<a href="./deleteZzim?post_Id=${zzim.post_Id }&user_number=${user_number}" onclick="deleteZzim()">
																			<i class="fa-solid fa-heart"></i>																			
																		</a>
																		<!--찜 목록 해제시 색상변경되어야 함-->
																	<div class="card-body">
																		<span class="d-inline-block text-truncate card-text" >${zzim.title }</span>
																		<p><fmt:formatNumber value="${zzim.price }" pattern="#,###" />원</p>
																	</div>
																</div>
															</a> 
														</div>
													</c:forEach>
													</c:when>
													<c:otherwise>
														<span>찜한 상품이 없습니다</span>
													</c:otherwise>												
												</c:choose>
													<!--<c:forEach begin="${pagination_start }" end="${pagination_end }" var="i">
														<a id="page" href="./zzim?user_number=${user_number }&page=${i }">${i }</a>
													</c:forEach>-->
													<div class="page">
														<nav aria-label="Page navigation example" id="page2">
														   <ul class="pagination">
														      <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
														         <li class="page-item"><a class="page-link" href="./zzim?user_number=${user_number }&page=${i }">${i }</a></li>
														      </c:forEach>   
														   </ul>
														</nav>
													</div>
													
												</div>	
											</div>								
										</div>
									</li>					
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../include/footer.jsp"/>
	
    <script>
      function deleteZzim() {
        alert('찜이 해제되었습니다.')
      }
    </script>

	<script>
			const imgContainer = document.getElementById('imgContainer');
			const modifyimgContainer = document.getElementById('modifyimgContainer');
			const nick = document.getElementById('nick');
			const modifynick = document.getElementById('modifyNick');
			const intro = document.getElementById('intro');
			const modifyintro = document.getElementById('modifyIntro');
			const nickbtn = document.getElementById('modify-btn');
			const nickdonebtn = document.getElementById('modify-done-btn');
			function modifyProfile() {
				nick.style.display = "none";
				nickbtn.style.display = "none";
				intro.style.display = "none";
				imgContainer.style.display = "none";
				modifynick.style.display = "inline";
				modifynick.value = nick.innerText;
				modifyintro.style.display = "inline";
				modifyintro.value = intro.innerText;
				nickdonebtn.style.display = "inline";
				modifyimgContainer.style.display = "block";
			}

			function modifyProfileDone() {
				const RegXep = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;
				if (!RegXep.test(modifynick.value) || modifynick.value == "") {
					alert("사용불가 2~16자 이하 영어, 숫자, 한글로 구성");
					return false;
				} else if (modifynick.value != nick.innerText) {
					var nickname = modifynick.value;
					var userintro = modifyintro.value;
					$.ajax({
							url : './modifynick', //Controller에서 요청 받을 주소
							type : 'post', //POST 방식으로 전달
							data : {
								name : nickname,
								intro : userintro,
								img : document.getElementById('modifyImg').src
							},
					success : function(result) { //컨트롤러에서 넘어온 cnt값을 받는다
						if (result == 0) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
							alert("사용 가능한 닉네임입니다.");
							modifynick.style.display = "none";
							nickdonebtn.style.display = "none";
							modifyintro.style.display = "none";
							modifyimgContainer.style.display = "none";
							nick.innerText = modifynick.value;
							intro.innerText = modifyintro.value;
							console.log(document.getElementById('img').src);
							console.log(document.getElementById('modifyImg').src);
							document.getElementById('img').src = document.getElementById('modifyImg').src;
							console.log(document.getElementById('img').src);
							nick.style.display = "inline";
							nickbtn.style.display = "inline";
							intro.style.display = "inline";
							imgContainer.style.display = "block";
						} else { // cnt가 1일 경우 -> 이미 존재하는 아이디
							alert("이미 존재하는 닉네임입니다. 다시 입력해주세요.");
						}
					},
					error : function() {
						alert("에러입니다");
					}
				});
				return true;
			} else {
				modifynick.style.display = "none";
				nickdonebtn.style.display = "none";
				modifyintro.style.display = "none";
				modifyimgContainer.style.display = "none";
				nick.innerText = modifynick.value;
				intro.innerText = modifyintro.value;
				document.getElementById('img').src = document.getElementById('modifyImg').src;
				nick.style.display = "inline";
				nickbtn.style.display = "inline";
				intro.style.display = "inline";
				imgContainer.style.display = "block";
			}
		}
	</script>
  
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/mypage/fileupload.js" charset="utf-8"></script>
	<script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>