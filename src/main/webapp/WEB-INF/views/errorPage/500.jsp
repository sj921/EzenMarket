<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<style>
	@font-face {
		font-family: 'Tenada';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-2@1.0/Tenada.woff2') format('woff2');
		font-weight: normal;
		font-style: normal;
	}
	@font-face {
	    font-family: 'GongGothicMedium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	     font-family: 'S-CoreDream-3Light';
	     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
	     font-weight: normal;
	     font-style: normal;
	}
	html, body {
		margin: 0;
		padding: 0;
	}
	.errorPage {
		margin-top: 180px;
	}
   .logo {
		font-family: 'Tenada';
		margin-left: 738px;
		text-decoration: none;
		font-size: 72px;
		font-weight: bold; 
		color: black;
    }
	.logoIcon {
			font-size: 1em;
	}        
	.logo:hover {
		color: black;
	}
	.a-tag {
		text-decoration: none;
	}
	.errorPage h1 {
		text-align: center;
		font-size: 3.0em;
		font-family: 'GongGothicMedium';
		letter-spacing: 7.5px;
	}
	.errorPage h3 {
		text-align: center;
		font-size: 1.7em;
		font-family: 'S-CoreDream-3Light';
	}
    .errorPage p {
		text-align: center;
		font-size: 1.2em;
		font-family: 'S-CoreDream-3Light';
	}
	.redirectPage {
		margin-top: 50px;
	}
	#redirectBtn {
		background-color: white;
		padding: 5px 15px 5px 15px;
		border: 0.3px #dcdcdc solid;
		border-radius: 12px;
		margin-left: 895px;
		text-decoration: none;
		color: black;
		font-size: 1.1em;
		font-family: 'GyeonggiTitleM';
	}



</style>
<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script>
</head>
<body>
	


    <c:if test="${requestScope['javax.servlet.error.status_code'] == 500}">
		<div class="errorPage">
			<a class="logo a-tag" href="<%=request.getContextPath()%>">Ezen<i class="fa-brands fa-monero logoIcon"></i>arket</a>
	        <h1>500 INTERNAL SERVER ERROR</h1>
			<h3>페이지가 작동하지 않습니다.</h3>
			<p>서버에 오류가 발생하여 요청을 수행할 수 없습니다.</p>  			
		</div>
		<div class="redirectPage">
			<a id="redirectBtn" href="<%=request.getContextPath() %>/">메인으로</a>		
		</div>
		
	</c:if>



	
</body>
</html>