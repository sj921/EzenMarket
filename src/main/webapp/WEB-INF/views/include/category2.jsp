<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>모바일 토글 메뉴 - FMW</title>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#nav ul.sub").hide();
			$("#nav ul.menu li").click(function(){
				$("ul",this).slideToggle("fast");
			});
		});
	</script>
	<style>	
		@font-face {
		    font-family: 'SUIT-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}	
		* {font-family: 'SUIT-Regular'; font-size: 20px; }		
		#nav {float: left; margin: 70px 10px 0 200px; }
		#nav ul{ width:210px; margin:0; padding:0; }
		#nav ul.menu li{ position:relative; float:left; width:210px; list-style-type:none; font-size:40px;}
		#nav ul.menu li a{ display:block; width:100%; height:100%; line-height:50px; text-indent:30px; color:#000; font-weight:bold; text-decoration:none; }
		#nav ul.menu li a:hover{ background:#eee; }
		#nav ul.menu li .sub a{ position:relative; float:left; display:block; width:210px; z-index:999; background:#ccc; }
		#nav ul.menu li .sub a:hover{ background:#444; color:#fff; }
		
	</style>
</head>
<body>
	<div id="nav">
		<ul class="menu">
		
			<li><a href="category/viewall">전체보기</a>
			</li>
		
			<li><a href="#">의류</a>
				<ul class="sub">
					<li><a href="category?category_id=1">남성의류</a></li>
					<li><a href="category?category_id=2">여성의류</a></li>
				</ul>
			</li>

            <li><a href="#">패션잡화</a>
				<ul class="sub">
					<li><a href="category?category_id=3">신발</a></li>
					<li><a href="category?category_id=4">가방</a></li>
                    <li><a href="category?category_id=5">시계</a></li>
				</ul>
			</li>

            <li><a href="#">가구생활</a>
				<ul class="sub">
					<li><a href="category?category_id=6">주방용품</a></li>
					<li><a href="category?category_id=7">인테리어</a></li>
                    <li><a href="category?category_id=8">생필품</a></li>
				</ul>
			</li>

            <li><a href="#">취미 컬렉션</a>
				<ul class="sub">
					<li><a href="category?category_id=9">건강용품</a></li>
					<li><a href="category?category_id=10">반려용품</a></li>
                    <li><a href="category?category_id=11">사무용품</a></li>
				</ul>
			</li>

            <li><a href="#">스포츠레저</a>
				<ul class="sub">
					<li><a href="category?category_id=12">아웃도어</a></li>
					<li><a href="category?category_id=13">운동화</a></li>
				</ul>
			</li>

            <li><a href="#">디지털기기</a>
				<ul class="sub">
					<li><a href="category?category_id=14">노트북/PC</a></li>
					<li><a href="category?category_id=15">휴대전화</a></li>
                    <li><a href="category?category_id=16">주변기기</a></li>
				</ul>
			</li>

            <li><a href="#">기타</a>
				<ul class="sub">
					<li><a href="category?category_id=17">기타용품</a></li>
				</ul>
			</li>


		</ul>
	</div>
</body>
</html>