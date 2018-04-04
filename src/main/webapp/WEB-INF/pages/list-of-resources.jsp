<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of teams</title>
</head>
<body>
<h1>List of teams</h1>
<p>Here you can see the list of the Users, edit them, remove or update.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">id</th>
<th width="15%">Resource Full Name</th>
<th width="10%">Resource Short Name</th>
<th width="10%">Resource description</th>
<th width="10%">Resource Sort order</th>
<th width="10%">Resource Status</th>
</tr>
</thead>
<tbody>
<c:forEach var="resource" items="${resource}">
<tr>
	<td>${resource.id}</td>
	<td>${resource.fullName}</td>
	<td>${resource.shortName}</td>
	<td>${resource.description}</td>
	<td>${resource.sortOrder}</td>
	<td>${resource.active}</td>
	<td>
	<a href="${pageContext.request.contextPath}/RS/edit/${resource.id}.html">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/RS/delete/${resource.id}.html">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>

</body>
</html>