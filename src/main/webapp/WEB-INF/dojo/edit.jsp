<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


    
<!DOCTYPE html>
<html lang="en">
<head>
<title>java39dojosandninjastakefour</title>
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
	<h1>java39dojosandninjastakefour Dojo List+</h1>

	<a href= "/">Home</a>
	
	<h2>Dojo List</h2>

	<table class="table table-striped">
	  <thead>
	    <tr>
			<th scope="col">id</th>
	      	<th scope="col">dojoName</th>
	      	<!-- <th scope="col">lastName</th>
	      	<th scope="col">license State - Num!</th> -->
	      	
			<th scope="col">Actions</th> 
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach var="record" items="${dojoList}">
	        <tr>
		      <td >
		      	<a href= "/dojo/${record.id}">${record.id}</a>
		      </td>
		      <td>${record.dojoName}</td>
		      <%-- <td>${record.lastName}</td>
		      <td>${record.licenseMdl.issuingState} - ${record.licenseMdl.licenseNumber}</td> --%>
		      
				<td>
		      		<a href= "/dojo/${record.id}/edit">Edit</a>
		      	
			      	<form action="/dojo/${record.id}" method="post">
					    <input type="hidden" name="_method" value="delete">
					    <input type="submit" value="Delete">
					</form>
		      </td>
		    </tr>
    	</c:forEach>  
	  </tbody>
	</table>
    
    <h2> Edit Dojo Record</h2>
    
    <form:form action='/dojo/${dojo.id}/edit' method='post' modelAttribute='dojo'>
	
	<form:hidden value="${dojo.id}" path="id"/>
	
	  <div class="form-group">
	    <form:label path="dojoName" for="dojoName" >dojoName</form:label>
	     <form:input type="text" class="form-control"  path="dojoName" />
	     <p class="errorText"><form:errors path="dojoName"/></p>
	  </div>

	  <button type="submit" class="btn btn-primary">Update</button>
	</form:form> 
	
	
	
</body>
</html>