<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

table {
    width: 80%;
    margin: 50px auto;
    border-collapse: collapse;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #4caf50;
    color: #fff;
}

tr:hover {
    background-color: #f5f5f5;
}

a {
    text-decoration: none;
    color: #3498db;
}

a:hover {
    color: #2980b9;
}


</style>
</head>
<body>

<table border="2">
  
    <tr>
    <th>Student ID</th>
    <th>Student Name</th>
    <th>Student City</th>
    <th>Edit</th>
    <th>Delete</th>
    </tr>
    <c:forEach var="std" items="${e_data}">
    
      <tr>
      <td>${std.id}</td>
      <td>${std.name}</td>
      <td>${std.city}</td>
      <td><a href="<c:url value='/edit/${std.id }'/>">Update</a> </td>
      <td><a href="<c:url value='/${std.id }'/>">Delete</a> </td>
     
      </tr>
     
    </c:forEach>
 
  </table>
</body>
</html>