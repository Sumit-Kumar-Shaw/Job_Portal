<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>JOB</title>
<script type="text/javascript">
    function validateJobForm()
    {
        var jid = document.forms["jobForm"]["jid"].value;
        var jnm = document.forms["jobForm"]["jnm"].value;
        var jtype = document.forms["jobForm"]["jtype"].value;
        var jdomain = document.forms["jobForm"]["jdomain"].value;
        var jdate = document.forms["jobForm"]["jdate"].value;
        var jyesexp = document.forms["jobForm"]["jyesexp"].value;
        var cid = document.forms["jobForm"]["cid"].value;

        if (jid == "")
        {
            alert("Please enter the Job ID.");
            return false;
        }
        else if (jnm == "")
        {
            alert("Please enter the Job Name.");
            return false;
        }
        else if (jtype == "")
        {
            alert("Please select the Job Type.");
            return false;
        }
        else if (jdomain == "")
        {
            alert("Please select the Domain.");
            return false;
        }
        else if (jdate == "")
        {
            alert("Please select the Valid Upto date.");
            return false;
        }
        else if (jyesexp == "")
        {
            alert("Please select the Years of Experience.");
            return false;
        }
        else if (cid == "")
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
        <form name="jobForm" action="JobServe" method="post" onsubmit="return validateJobForm()" style="width: 30%; margin: 45px auto; background-color: aqua; padding: 10px 10px; border: 2px solid blue; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">JOB</h2>
            JOB ID <input type="text" class="form-control" placeholder="ENTER THE JOB ID" name="jid">
            JOB NAME <input type="text" class="form-control" placeholder="ENTER THE JOB NAME" name="jnm">
            JOB TYPE <select name="jtype" class="custom-select">
                <option value="">Select Job Type</option>
                <option value="EXECUTIVE">EXECUTIVE</option>
                <option value="ANALYST">ANALYST</option>
                <option value="MANAGER">MANAGER</option>
                <option value="CLERK">CLERK</option> 
            </select>
            DOMAIN <select name="jdomain" class="custom-select">
                <option value="">Select Domain</option>
                <option value="JUNIOR ENGINEER">JUNIOR ENGINEER</option>
                <option value="SENIOR ENGINEER">SENIOR ENGINEER</option>
                <option value="SENIOR DEVELOPER">SENIOR DEVELOPER</option>
                <option value="FULL STACK DEVELOPER">FULL STACK DEVELOPER</option>
                <option value="DATA ENTRY OPERATOR">DATA ENTRY OPERATOR</option>
                <option value="ANALYST">ANALYST</option>
                <option value="PROJECT MANAGER">PROJECT MANAGER</option>
                <option value="CUSTOMER SUPPORT">CUSTOMER SUPPORT</option>
            </select>
            VALID UPTO <input type="date" class="form-control" placeholder="SELECT DATE" name="jdate">
            YEARS EXPERIENCE <select name="jyesexp" class="custom-select">
                <option value="">Select Experience</option>
                <option value="FRESHER">FRESHER</option>
                <option value="UPTO 2 YEARS">UPTO 2 YEARS</option>
                <option value="UPTO 5 YEARS">UPTO 5 YEARS</option>
                <option value="UPTO 10 YEARS">UPTO 10 YEARS</option>
                <option value="MORE THAN 10 YEARS">MORE THAN 10 YEARS</option>
            </select>
            COMPANY ID <input type="text" class="form-control" placeholder="ENTER COMPANY ID" name="cid">
            <br>
            <input type="submit" class="btn btn-outline-secondary" value="SAVE" style="margin-left: 193px">
        </form>
    </div>
</body>
</html>
