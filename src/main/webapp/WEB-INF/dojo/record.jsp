<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    
<!DOCTYPE html>
<html lang="en">
<head>
<title>java39dojosandninjastakefour - ${dojo.dojoName}</title>
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
	<h2>java39dojosandninjastakefour - Dojo Profile</h2>
	<a href= "/">Home</a>
	<a href= "/dojo">Dojo List</a>
	
	<%-- <h3>firstName: <c:out value="${dojo.firstName}"></c:out></h3> --%>
	<h4>dojoName: <c:out value="${dojo.dojoName}"></c:out></h4>
	<%-- <h4>dojo.personMdl.state: <c:out value="${dojo.personMdl.state}"></c:out></h4>
	<h4>dojo.personMdl.expirationDate: <c:out value="${dojo.personMdl.expirationDate}"></c:out></h4> --%> 

	<a href= "/dojo/${dojo.id}/edit">Edit</a> 
	<form action="/dojo/${dojo.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete this dojo">
	</form>
 
	
</body>
</html>