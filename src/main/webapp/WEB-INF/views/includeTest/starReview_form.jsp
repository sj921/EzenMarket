<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String hobby[] = request.getParameterValues("hobby");

String age = request.getParameter("age");
String massage = request.getParameter("massage");

out.println("id : "+ id +"<br>");
out.println("pwd : "+ pwd +"<br>");
if(hobby != null && hobby.length > 0){
	for(int i = 0; i < hobby.length; i++){
		out.println("hobby : "+ hobby[i] +"<br>");
	}
}
out.println("age : "+ age +"<br>");
out.println("massage : "+ massage +"<br>");
%> --%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

 	String number = request.getParameter("number");
%>
숫자: <%=number %>
${param.number }
	
 	
 	<c:choose>
		<c:when test="${param.number % 5 eq 0}">
			<c:out value="${number}" />
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
		</c:when>
		<c:when test="${param.number % 5 le 1 }" >
			<c:out value="${param.number}" /> 
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
		</c:when>
		<c:when test="${param.number % 5 le 2 }" >
			<c:out value="${param.number}" /> 
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
		</c:when>
		<c:when test="${param.number % 5 le 3 }" >
			<c:out value="${param.number}" /> 
			<i class="fa-solid fa-star"></i>
			<i class="fa-solid fa-star"></i>
		</c:when>
		<c:when test="${param.number % 5 le 4 }" >
			<c:out value="${param.number}" /> 
			<i class="fa-solid fa-star"></i>
		</c:when>
		<c:otherwise>
			<div></div>
		</c:otherwise>
	</c:choose>  
	
	
</body>
</html>