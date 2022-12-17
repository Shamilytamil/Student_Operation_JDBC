<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Info</title>
<style>
.center {
  display: flex;
  justify-content:center;
  align-items:center;
  height: 50px;
  width:350px
}
</style>
</head>
<body>
<h1 style="background-color:#80ced6;height:50px;width:300px;text-align:justify">Student Database</h1>
<br>

<form action="InsertRedirect" method="get">
<div class="center">
<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>INSERT</b></button>
</div>
</form>
<form action="UpdateRedirect" method="get">
<div class="center">
<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>UPDATE</b></button>
</div>
</form>
<form action="DeleteRedirect" method="get">
<div class="center">
<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>DELETE</b></button>
</div>
</form>
<form action="ViewRedirect" method="get">
<div class="center">
<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>VIEW</b></button>
</div>
</form>
</body>
</html>