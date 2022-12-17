<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.student.DatabaseStudent"%>
    <%@ page import="com.studentdatabase.StudentInfo"%>
	<%@ page import="java.util.List" %>
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
height:30px;
 width:150px;
 font-size:20px;
}

</style>
</head>
<body>
<h1 style="background-color:#80ced6;height:60px;width:500px;text-align:justify">Student Detail by Year of Study</h1>

<table border="1">
<tr style="background-color:#80ced6;color:black;size:11">
<th>S.No</th>
<th>Student ID</th>
<th>Student Name</th>
<th>Year of Study</th>
<th>CGP</th>
</tr>

<% 
List<StudentInfo> stInfo =(List<StudentInfo>)request.getAttribute("student");
Integer i=0;
for(StudentInfo st : stInfo)
{
i+=1;
%>
<tr style="background-color:#ccfff2;">
<td><% out.println(i);%></td>
<td><% out.println(st.getStId());%></td>
<td><% out.println(st.getStName());%></td>
<td><% out.println(st.getStYear()); %></td>
<td><% out.println(st.getStCgp()); %></td>
</tr>
<%} %>
</table>
<form action="BackController" method="get">
<div class="center">
		<button type="submit" style="height:30px;width:100px;background-color:#ffe6cc;font-family:verdana;font-size:100%"><b>BACK</b></button>
</div>
</form>
</body>
</html>