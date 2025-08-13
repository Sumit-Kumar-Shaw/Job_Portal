<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>SEARCH APPLICATION</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript">
    function validateSearchForm()
    {
        var uname = document.forms["searchForm"]["uname"].value;
        
        if (uname == "")
        {
            alert("Please enter your username.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div>
        <form name="searchForm" action="ApplicationSearchServe" method="post" onsubmit="return validateSearchForm()" style="width: 30%; margin: 150px auto; background-color: pink; padding: 10px 10px; border: 2px solid red; border-radius: 7px">
            <h2 style="text-align: center; color: red; text-decoration: underline; font-weight: bold">SEARCH APPLICATION</h2>
            <br>
            <% 
                HttpSession sn = request.getSession();
                String sessionUname = (String) sn.getAttribute("loginUname");
            %>
            USERNAME <input type="text" class="form-control" value="<%= sessionUname %>" name="uname" readonly>
            <br>
            <input type="submit" class="btn btn-outline-primary" value="SEARCH" style="margin-left: 190px">
        </form>
    </div>
</body>
</html>
