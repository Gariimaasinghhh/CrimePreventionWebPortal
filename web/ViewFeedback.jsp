<%-- 
    Document   : ViewFeedback
    Created on : Apr 1, 2015, 5:55:28 AM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
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
        <h2 style="color: #484095;">View Feedback</h2>
       <%
        DBconnection db=new DBconnection();
            db.stmt=db.con.createStatement();
           
            db.rst=db.stmt.executeQuery("select user_id,sub,msg from feedback");
           
          
           out.println("<center>");
           

  
out.println("<table width=900");

out.println("<tr height=70 bgcolor=#68D3D4>");
out.println("<td>Member_id</id><td>Subject</td><td>Massage</td>");
out.println("</tr>");
while(db.rst.next())
{
            String id=db.rst.getString(1);
            String sub=db.rst.getString(2);
            String msg=db.rst.getString(3);
            
out.println("<tr height=50px bgcolor=#D0FACE><td width=70px>"+id+"</td><td width=70px>"+sub+"</td><td width=300px>"+msg+"</td></td>");
out.println("</tr>");

}       
    
    out.println("</table>");
    out.println("</center>");
        %>
        </center>

   
    </body>
</html>