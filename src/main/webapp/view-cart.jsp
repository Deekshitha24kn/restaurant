<%@page import="dto.Cart"%>
<%@page import="dto.CartItem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Cart cart=(Cart)request.getAttribute("cart"); %>
<div align="center">
		<h1>View Cart</h1>
		<table border="1">
       <tr>
		<th>Name</th>
		<th>Quantity</th>
		<th>Image</th>
		<th>Price</th>
		<th>Total</th>
		
        </tr>
        <%
        for(CartItem item :cart.getCartItems())%>
		<tr></tr>
					


</body>
</html>