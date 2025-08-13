<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>UPDATE COMPANY</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function validateUpdateCompanyForm()
    {
        var cid = document.forms["updateCompanyForm"]["cid"].value;
        var cphno = document.forms["updateCompanyForm"]["cphno"].value;
        var cadd = document.forms["updateCompanyForm"]["cadd"].value;
        var cemail = document.forms["updateCompanyForm"]["cemail"].value;
        
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        var phonePattern = /^[0-9]{10}$/;

        if (cid == "")
        {
            alert("Please enter the Company ID.");
            return false;
        }
        if (cphno == "" || !phonePattern.test(cphno))
        {
            alert("Please enter a valid 10-digit Phone Number.");
            return false;
        }
        if (cadd == "")
        {
            alert("Please enter the Company Address.");
            return false;
        }
        if (cemail == "" || !emailPattern.test(cemail))
        {
            alert("Please enter a valid Email ID.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div>
        <form name="updateCompanyForm" action="CompanyUpdServe" method="post" onsubmit="return validateUpdateCompanyForm()" style="width: 30%; margin: 100px auto; background-color: aqua; padding: 10px 10px; border: 2px solid blue; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">UPDATE COMPANY</h2>
            <br>
            COMPANY ID <input type="text" class="form-control" placeholder="ENTER THE COMPANY ID" name="cid">
            PHONE NUMBER <input type="text" class="form-control" placeholder="ENTER PHONE NUMBER" name="cphno">
            ADDRESS <input type="text" class="form-control" placeholder="ENTER THE ADDRESS" name="cadd">
            EMAIL-ID <input type="text" class="form-control" placeholder="ENTER EMAIL-ID" name="cemail">
            <br>
            <input type="submit" class="btn btn-outline-dark" value="UPDATE" style="margin-left: 175px">
        </form>
    </div>
</body>
</html>
