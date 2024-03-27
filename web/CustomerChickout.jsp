<%-- 
    Document   : CustomerChickout
    Created on : Mar 27, 2015, 10:26:19 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
    </head>
    <body>
        <%
        HttpSession st=request.getSession();
        st.removeAttribute("cus_id");
        String user=(String)st.getAttribute("user1");
        String pass=(String)st.getAttribute("pass1");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/66.jpg');">
            </div>
            <h3><p align="left"> <a href="HotelHome.jsp">Back</a></p></h3>
            <h2 style="color:darkmagenta;">Customer Check_Out</h2>
            <form method="get" action="CustomerChickoutData.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter customer Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Submit"></td></tr>
                
                
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
