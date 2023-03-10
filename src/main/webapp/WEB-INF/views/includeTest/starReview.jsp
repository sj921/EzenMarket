<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>

<!--  form은 HTML을 작성할 때 주로 사용자에게 정보를 입력받거나 전달받기 위해 사용되는 요소입니다. form에 기입된 값은 submit 이벤트가 발생하면,
	  정의된 method(유형)으로 action(목적지)에 전송됩니다 -->
	<form  action="${pageContext.request.contextPath}">
	    <input type="text" name="number" value="검색">
		<input type="submit" value="Search">
	</form>

	검색어 -> ${searchKeyword}
  
  
  
<!-- <input type="text" id='textBox' onkeyup='text()'/>
	<div id='result'></div> -->
		
<!-- 	
	<i class="fa-solid fa-star-half-stroke"></i>
-->

	

<!-- <script>

	function text()  {
	  const textBox = document.getElementById('textBox').value;
	  
	  var result = document.getElementById("result");
	  
	  result.innerText = textBox;
	
	} 	

 	input.oninput = function() {
	    result.innerHTML = input.value;
 };
</script>
  -->

	



</body>
</html>