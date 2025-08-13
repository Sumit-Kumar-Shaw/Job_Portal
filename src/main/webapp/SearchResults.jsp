<%@ page import="master.dto.JobDto" %>
<%@ page import="master.dao.JobDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="ClientNav.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
    <title>SEARCH JOB</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div>
    <h2 style="color: red; text-align: center; font-weight: bold; text-decoration: underline; margin-top: 10px">JOBS</h2>
    <br>
    <table class="table table-hover table-striped">
        <thead class="table-dark">
            <tr style="text-align: center">
                <td>JOB ID</td>
                <td>JOB NAME</td>
                <td>JOB TYPE</td>
                <td>DOMAIN</td>
                <td>VALID UPTO</td>
                <td>YEARS OF EXPERIENCE</td>
                <td>COMPANY ID</td>
            </tr>
        </thead>
        <tbody>
        <%
            HttpSession sn = request.getSession();
            String jdomain = (String) sn.getAttribute("jdomain");
            if (jdomain != null && !jdomain.isEmpty()) {
                JobDao jdao = new JobDao();
                ResultSet rs = jdao.getSearchData(jdomain);
                try
                {
                    while (rs.next())
                    {
        %>
                        <tr style="text-align: center">
                            <td><%= rs.getString("jid") %></td>
                            <td><%= rs.getString("jnm") %></td>
                            <td><%= rs.getString("jtype") %></td>
                            <td><%= rs.getString("jdomain") %></td>
                            <td><%= rs.getString("jdate") %></td>
                            <td><%= rs.getString("jyesexp") %></td>
                            <td><%= rs.getString("cid") %></td>
                        </tr>
        <%
                    }
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
                finally
                {
                    try
                    {
                        if (rs != null) rs.close();
                    }
                    catch (SQLException se)
                    {
                        se.printStackTrace();
                    }
                }
            }
            else
            {
        %>
            <tr><td colspan="7" style="text-align: center; color: red;">No jobs found for the specified domain.</td></tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
