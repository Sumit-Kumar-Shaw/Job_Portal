<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>JOB APPLY</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function validateForm()
    {
        var uname = document.forms["jobForm"]["uname"].value;
        var jid = document.forms["jobForm"]["jid"].value;
        var date = document.forms["jobForm"]["date"].value;
        if (uname == "")
        {
            alert("Username must be filled out");
            return false;
        }
        if (jid == "")
        {
            alert("Job ID must be filled out");
            return false;
        }
        if (date == "")
        {
            alert("Apply Date must be selected");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div>
        <form name="jobForm" action="ApplicationServe" method="post" onsubmit="return validateForm()" style="width: 30%; margin: 100px auto; background-color: pink; padding: 10px 10px; border: 2px solid red; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">JOB APPLY</h2>
            <% 
                HttpSession sn = request.getSession();
                String sessionUname = (String) sn.getAttribute("loginUname");
            %>
            USERNAME <input type="text" class="form-control" value="<%= sessionUname %>" name="uname" readonly>
            JOB ID <input type="text" class="form-control" placeholder="ENTER THE JOB ID" name="jid">
            APPLY DATE <input type="date" class="form-control" placeholder="DATE" name="date">
            <br>
            <input type="submit" class="btn btn-outline-dark" value="APPLY" style="margin-left: 190px">
        </form>
    </div>
</body>
</html>
