<%@page import="master.dto.JobDto"%>
<%@page import="master.dao.JobDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.ApplicationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>SEARCH JOB</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div>
<h2 style="color: red; text-align: center; font-weight: bold; text-decoration: underline; margin-top: 10px">JOBS</h2>
<br>
<table class="table table-hover table-striped">
<thead class="table-dark">
<tr style="text-align: center">
<td>JOB ID</td>
<td>JOB NAME</td>
<td>JOB TYPE</td>
<td>DOMAIN</td>
<td>VALID UPTO</td>
<td>YEARS OF EXPERIENCE</td>
<td>COMPANY ID</td>
</tr>
</thead>
<%
JobDao jdao=new JobDao();
ResultSet rs=jdao.getData();
while(rs.next())
{
%>
<tbody>
<tr style="text-align: center">
<td><%=rs.getString(1) %>
<td><%=rs.getString(2) %>
<td><%=rs.getString(3) %>
<td><%=rs.getString(4) %>
<td><%=rs.getString(5) %>
<td><%=rs.getString(6) %>
<td><%=rs.getString(7) %>
</tr>
</tbody>
<%
}
%>
</table>
</div>
</body>
</html>