<%-- 
    Document   : FindData
    Created on : Apr 1, 2015, 4:28:29 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user5");
        String pass=(String)st.getAttribute("pass5");
        if(user==null||pass==null)
          response.sendRedirect("AdminLogin.jsp?msg=Please login first!!!!");  
        %>
        <center>
        <div style="width:1000px;height: 170px;background-image: url('images/CR.jpg');">
        </div>
        <p align="left"><a href="AdminHome.jsp">Back</a></p>
        <h2 style="color: #484095;">Find Data in Hotels</h2>
        <form method="get" action="FindData1.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Submit"></td></tr>
                
                
            </table>
            <%
            String m=request.getParameter("msg");
            if(m!=null)
                out.println("<p style='color:red'>"+m+"</p>");
            %>
            </form>
            
        </center>
    </body>
</html>
