<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>Company</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function validateCompanyForm()
    {
        var cid = document.forms["companyForm"]["cid"].value;
        var cname = document.forms["companyForm"]["cname"].value;
        var cphno = document.forms["companyForm"]["cphno"].value;
        var cemail = document.forms["companyForm"]["cemail"].value;
        var cadd = document.forms["companyForm"]["cadd"].value;
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        var phonePattern = /^[0-9]{10}$/;

        if (cid == "")
        {
            alert("Please enter the Company ID.");
            return false;
        }
        if (cname == "")
        {
            alert("Please enter the Company Name.");
            return false;
        }
        if (cphno == "" || !phonePattern.test(cphno))
        {
            alert("Please enter a valid 10-digit Phone Number.");
            return false;
        }
        if (cemail == "" || !emailPattern.test(cemail))
        {
            alert("Please enter a valid Email ID.");
            return false;
        }
        if (cadd == "")
        {
            alert("Please enter the Company Address.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div>
        <form name="companyForm" action="CompanyServe" method="post" onsubmit="return validateCompanyForm()" style="width: 30%; margin: 90px auto; background-color: aqua; padding: 10px 10px; border: 2px solid blue; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">COMPANY</h2>
            COMPANY ID <input type="text" class="form-control" placeholder="ENTER THE COMPANY ID" name="cid">
            COMPANY NAME <input type="text" class="form-control" placeholder="ENTER THE COMPANY NAME" name="cname">
            PHONE NUMBER <input type="text" class="form-control" placeholder="ENTER PHONE NUMBER" name="cphno">
            EMAIL-ID <input type="text" class="form-control" placeholder="ENTER EMAIL-ID" name="cemail">
            ADDRESS <input type="text" class="form-control" placeholder="ENTER THE ADDRESS" name="cadd">
            <br>
            <input type="submit" class="btn btn-outline-dark" value="SAVE" style="margin-left: 200px">
        </form>
    </div>
</body>
</html>
