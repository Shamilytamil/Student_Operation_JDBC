<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.center{
  display: flex;
  justify-content:center;
  align-items:center;
  height: 50px;
  width:350px
}
.container{
display: flex;
justify-content:left;
align-items:center;
height:50px;
 width:150px;
 font-size:20px;
}
</style>
</head>
<body>
<h1 style="background-color:#80ced6;height:50px;width:400px;text-align:justify">Update Student by Year of Study</h1>
<br>
	<form action="UpdateController" method="post">
	<table>
	<tr><td><div class="container">
		Student ID to Update
		</div></td>
		<td>
		 <input type="text" name="id" id = "id">
		</td> </tr>
		<tr><td><div class="container">
		Update Year of Study
		</div></td>
		<td>
		 <input type="number" name="year" id = "year">
		</td></tr>
		</table>
		<div class ="center">
		<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>UPDATE</b></button>
			</div>
		</form>
</body>
</html>