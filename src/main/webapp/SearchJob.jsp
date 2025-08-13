<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>SEARCH JOB</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function validateSearchJobForm()
    {
        var domain = document.forms["searchJobForm"]["jdomain"].value;
        
        if (domain == "")
        {
            alert("Please select a job domain.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div>
        <form name="searchJobForm" action="SearchServe" method="post" onsubmit="return validateSearchJobForm()" style="width: 30%; margin: 130px auto; background-color: pink; padding: 10px 10px; border: 2px solid red; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">SEARCH JOB</h2>
            DOMAIN 
            <select name="jdomain" class="custom-select">
                <option value="">-- Select Job Domain --</option>
                <option value="JUNIOR ENGINEER">JUNIOR ENGINEER</option>
                <option value="SENIOR ENGINEER">SENIOR ENGINEER</option>
                <option value="SENIOR DEVELOPER">SENIOR DEVELOPER</option>
                <option value="FULL STACK DEVELOPER">FULL STACK DEVELOPER</option>
                <option value="DATA ENTRY OPERATOR">DATA ENTRY OPERATOR</option>
                <option value="ANALYST">ANALYST</option>
                <option value="PROJECT MANAGER">PROJECT MANAGER</option>
                <option value="CUSTOMER SUPPORT">CUSTOMER SUPPORT</option>
            </select>
            <br><br>
            <input type="submit" class="btn btn-outline-secondary" value="SEARCH" style="margin-left: 175px">
        </form>
    </div>
</body>
</html>
