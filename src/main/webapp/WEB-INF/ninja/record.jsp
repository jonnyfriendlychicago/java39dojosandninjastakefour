<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    
<!DOCTYPE html>
<html lang="en">
<head>
<title>java39dojosandninjastakefour - ${ninja.firstName} ${ninja.lastName}</title>
<meta charset="UTF-8">
<!-- local css -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- local javascript -->
<script type ="text/javascript" src="javascript/app.js"></script>
<!--  Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" /> 
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<h2>java39dojosandninjastakefour - Ninja Profile</h2>
	<a href= "/">Home</a>
	<a href= "/ninjaplus">Ninja List</a>
	<a href= "/ninjaplus/${ninja.id}/edit">Edit</a> 
	
	<h3>firstName: <c:out value="${ninja.firstName}"></c:out></h3>
	<h4>lastName: <c:out value="${ninja.lastName}"></c:out></h4>
	<h4>ninja.ninjaMdl.state: <c:out value="${ninja.ninjaMdl.state}"></c:out></h4>
	<h4>ninja.ninjaMdl.expirationDate: <c:out value="${ninja.ninjaMdl.expirationDate}"></c:out></h4> 

	<form action="/ninjaplus/${ninja.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete this ninja">
	</form>
 
	
</body>
</html>