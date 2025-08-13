<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>DELETE COMPANY</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function validateDeleteCompanyForm()
    {
        var cid = document.forms["deleteCompanyForm"]["cid"].value;
        
        if (cid == "")
        {
            alert("Please enter the Company ID.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div>
        <form name="deleteCompanyForm" action="CompanyDelServe" method="post" onsubmit="return validateDeleteCompanyForm()" style="width: 30%; margin: 180px auto; background-color: aqua; padding: 10px 10px; border: 2px solid blue; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">DELETE COMPANY</h2>
            <br>
            COMPANY ID <input type="text" class="form-control" placeholder="ENTER THE COMPANY ID" name="cid">
            <br>
            <input type="submit" class="btn btn-outline-dark" value="DELETE" style="margin-left: 175px">
        </form>
    </div>
</body>
</html>
