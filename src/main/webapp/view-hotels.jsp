<%@page import="dto.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
	%>

	<div align="center">
		<h1>Hotels List</h1>
		<table border="1">
			<tr>
				<th>Hotel Name</th>
				<th>Hotel Address</th>
				<th>Hotel Mobile</th>
				<th>Select</th>
			</tr>

			<%
			for (Hotel hotel : hotels) {
			%>
			<tr>
				<th><%=hotel.getName()%></th>
				<th><%=hotel.getAddress()%></th>
				<th><%=hotel.getMobile()%></th>
				<th><a href="view-food?id=<%=hotel.getId()%>"><button>Select</button></a></th>
			</tr>
			<%
			}
			%>
		</table><br>
<a href="/restaurants"><button>Back</button></a>
	</div>
</body>
</html>