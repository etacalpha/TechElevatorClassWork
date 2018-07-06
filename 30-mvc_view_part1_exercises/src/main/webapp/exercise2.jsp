<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Exercise 2 - Fibonacci 25</title>
		<style>
			li {
				list-style-type: none;
			}
		</style>
	</head>
	<body>
		<h1>Exercise 2 - Fibonacci 25</h1>
		<ul>
		<c:set var="sum" value="0"/>
		<c:set var="num1" value="0"/>
		<c:set var="num2" value="1"/>
		<li><c:out value="0"/></li>
		<li><c:out value="1"/></li>
		<c:forEach var="count" begin="0" end="22">
		<c:set var="sum" value="${num1+num2}"/>
		<li><c:out value="${sum}"/></li>
		<c:set var="num1" value="${num2}"/>
		<c:set var="num2" value="${sum}"/>
		</c:forEach> 
		
			<%--
				Add a list item (i.e. <li>) for each of the first 25 numbers in the Fibonacci sequence
				
				See exercise2-fibonacci.png for example output
			 --%>
		</ul>
	</body>
</html>