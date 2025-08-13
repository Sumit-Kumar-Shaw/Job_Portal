<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>REGISTER</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div>
		<form action="RegisterServe" method="post" style="width: 30%; margin: 160px auto; background-color: #34a7e5; padding: 10px 10px; border: 2px solid green; border-radius: 7px">
			<h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">SIGN UP</h2>
			USERNAME <input type="text" class="form-control" placeholder="ENTER THE USERNAME" name="uname">
			PASSWORD <input type="password" class="form-control" placeholder="ENTER THE PASSWORD" name="pass">
			NAME <input type="text" class="form-control" placeholder="ENTER YOUR NAME" name="nm">
			<br>
			<input type="submit" class="btn btn-outline-dark" value="REGISTER" style="margin-left: 170px">
		</form>
	</div>
</body>
</html>