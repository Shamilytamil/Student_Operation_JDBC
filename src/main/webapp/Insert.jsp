<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Database Insert</title>
<style>
.center {
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
height:30px;
 width:150px;
 font-size:20px;
}
</style>
</head>
<body>
<h1 style="background-color:#80ced6;height:50px;width:400px;text-align:justify">Fill the student details</h1>
<br>
	<form action="InsertController" method="post">
	<table>
	
	
	<tr><td><div class="container">
		Student ID
		</div></td>
		<td>
		 <input type="text" name="id" id = "id">
		</td> </tr>
		<tr><td><div class="container">
		Student Name 
		</div></td>
		<td>
		 <input type="text" name="name" id = "name">
		</td></tr>
		<tr><td><div class="container">
		Year of Study
		</div></td>
		<td>
		 <input type="number" name="year" id = "year">
		</td></tr>
		<tr><td><div class="container">
		CGP
		</div></td>
		<td>
		 <input type="number" step=0.01 name="cgp" id = "cgp">
		</td></tr>
	</table>
		<div class ="center">
		<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>INSERT</b></button>
			</div>
			</form>	
</body>
</html>