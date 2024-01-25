<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

form {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333;
}

label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: block;
    width: 100%;
}

button:hover {
    background-color: #45a049;
}

</style>
</head>
<body>

<form action="addstudent" method="post"> 
	<h1>Welcome to my project</h1>
	
	<lable for="id">ID</lable>
	<input type="text" id="id" name="id">
	
	<lable for="name">Name</lable>
	<input type="text" id="name" name="name">
	
	<lable for="city">City</lable>
	<input type="text" id="city" name="city">
	
	<button type="submit">Registration</button>
	
	</form>

</body>
</html>