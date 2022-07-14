<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>

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
<script type="text/javascript" src="javascript/app.js"></script>
<!--  Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<h1>java39dojosandninjastakefour Ninja List+</h1>

	<a href="/">Home</a>

	<h2>Ninja List</h2>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">number</th>
				<!-- <th scope="col">expirationDate</th> -->
				<th scope="col">state</th>
				<th scope="col">dojoSTuff!</th>

				<th scope="col">actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="record" items="${ninjaList}">
				<tr>
					<td><a href="/ninjaplus/${record.id}">${record.id}</a></td>
					<td>${record.ninjaNumber}</td>
					<%-- <td>${record.expirationDate}</td> --%>
					<td>${record.issuingState}</td>
					
					<td>${record.dojoMdl.firstName} ${record.dojoMdl.lastName}</td>



					<td><a href="/ninjaplus/${record.id}/edit">Edit</a>

						<form action="/ninjaplus/${record.id}" method="post">
							<input type="hidden" name="_method" value="delete"> <input
								type="submit" value="Delete">
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<h2>Add new ninja</h2>

	<form:form action='/ninjaplus' method='post' modelAttribute='ninja'>

		<div class="form-group">
			<form:label path="ninjaNumber" for="ninjaNumber">ninjaNumber</form:label>
			<form:input type="text" class="form-control" path="ninjaNumber"
				aria-describedby="ninjaNumberHelp" />
			<p class="errorText">
				<form:errors path="ninjaNumber" />
			</p>
		</div>

		<div class="form-group">
			<form:label path="issuingState" for="issuingState">issuingState</form:label>
			<form:input type="text" class="form-control" path="issuingState" />
			<p class="errorText">
				<form:errors path="issuingState" />
			</p>
		</div>

		<div class="form-group">
			<form:select path="dojoMdl">
				<c:forEach var="record" items="${dojoList}">
					<!--- Each option VALUE is the id of the dojo --->
					<form:option value="${record.id}" path="dojoMdl">
						<!--- This is what shows to the user as the option --->
						<c:out value="${record.firstName}" />

					</form:option>
				</c:forEach>
			</form:select>
		</div>




		<button type="submit" class="btn btn-primary">Submit</button>
	</form:form>



</body>
</html>