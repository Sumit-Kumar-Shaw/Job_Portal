<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>INDEX</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script>
	function register()
	{
		window.open("Register.jsp");
	}
	function login()
	{
		window.open("Login.jsp");
	}
</script>
</head>
<body>
	<div style="text-align: center; margin: 80px auto">
		<h2 style="text-align: center; color: red; font-weight: bold; text-decoration: underline; margin-top: 20px">WELCOME TO JOB PORTAL</h2>
		<img src="https://5.imimg.com/data5/SELLER/Default/2023/5/306487283/DZ/AB/PK/53384778/job-portal-website-development-service.jpg"
		height="300px" width="350px" alt="NO IMAGE" style="margin-top: 40px">
		<br>
		<br>
		<button class="btn btn-outline-secondary" onclick="register()">REGISTER</button> &nbsp;&nbsp;
		<button class="btn btn-outline-primary" onclick="login()">LOGIN</button>
	</div>
</body>
</html>