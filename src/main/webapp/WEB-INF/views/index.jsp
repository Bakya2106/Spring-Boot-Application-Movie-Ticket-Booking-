<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#content{

border: 10px solid;
border-color: grey;
margin : 50px;
padding : 20px
}
h1{
    color: crimson;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    text-align: center;
}  
table{

    color:cadetblue;
    font-weight: bold;
    border-spacing: 20px;
}

button{

    background-color:darkgreen;
    color: white;
    font-weight: bold;
    border-radius: 8px;
    padding: 5px;
}
</style>


<body style="background-color:azure">
	<h1>
		Welcome to Movie Ticket Booking
	</h1>

	<div id="content">
	<form:form method="post" modelAttribute="ticket" action="/calculateCost">
		<center>
			<table>
				<tr>
					<td><form:label path="movieName">Movie Name</form:label></td>
					<td><form:input path="movieName" type="text" id="movieName" /></td>
				</tr>
				<tr>
					<td><form:label path="circleType">Choose Circle:</form:label></td>
					<td><form:select path="circleType" items="${circleList}" /></td>
				</tr>
				<tr>
					<td><form:label path="noOfTickets">Number of Tickets</form:label></td>
					<td><form:input path="noOfTickets" type="text"
							id="noOfTickets" /></td>
				</tr>
				<tr>
					<td><button type="submit" name="submit">CalculateCost</button></td>
				</tr>

			</table>
		</center>
	</form:form></div>



</body>
</html>
