<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>LOGIN</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div>
		<form action="LoginServe" method="post" style="width: 30%; margin: 180px auto; background-color: #34e5a7; padding: 10px 10px; border: 2px solid green; border-radius: 7px">
			<h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">LOGIN</h2>
			USERNAME <input type="text" class="form-control" placeholder="ENTER THE USERNAME" name="uname">
			PASSWORD <input type="password" class="form-control" placeholder="ENTER THE PASSWORD" name="pass">
			<br>
			<input type="submit" class="btn btn-outline-dark" value="LOGIN" style="margin-left: 180px">
		</form>
	</div>
</body>
</html>