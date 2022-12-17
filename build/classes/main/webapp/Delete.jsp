<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.center {
  display: flex;
  justify-content:center;
  align-items:center;
  height: 50px;
  width:250px
}
.container{
display: flex;
justify-content:left;
align-items:center;
height:30px;
 width:200px;
 font-size:20px;
}

</style>
</head>
<body>
<h1 style="background-color:#80ced6;height:50px;width:400px;text-align:justify">Delete Student Record by ID</h1>
<br>
<form action="DeleteController" method="post">
<div class="container">
Student Id </div> <input type="text" name="id" id="id">
<div class ="center">
<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>DELETE</b></button>
</div>
</form>
</body>
</html>