<%-- 
    Document   : police_send_info
    Created on : May 10, 2016, 1:08:17 PM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Information</title>
    </head>
    <body>
       <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user4");
        String pass=(String)st.getAttribute("pass4");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/CR.jpg');">
            </div>
            <h3><p align="left"> <a href="policeHome.jsp">Back</a></p></h3>
           <div style="width: 600px;height: 300px;background-color: white;">
            <form method="post" action="policeSendInfo" enctype="multipart/form-data">
            <fieldset width="100px" height=200px">
                <legend><h1><p style="color:brown;">Information</p></h1></legend>
                <table>
                    <br></br>
                    <tr height="30px"><td>Subject </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr>
                    <tr height="30px"><td> Message </td><td width="20px"></td><td><textarea name="t2"style="width:300px;height: 70px;"> </textarea></td></tr>
                    <tr height="30px"><td> File Up_load </td><td width="20px"></td><td><input type="file" name="t3" style="width:330px;height: 30px;"></td></tr>
          
                    <tr height="30px"></tr><tr height="30px"><td><input type="submit"value="Send"style="width:90px;height: 30px ;background-color:lightskyblue;"> </td><td width="20px"></td><td><input type="reset" value="Clear" style="width: 90px ;height: 30px;background-color: indianred;"></td></tr>
                    <tr height="50px"><td>
                            <%
                            String abc=request.getParameter("msg");
                            if(abc!=null)
                            out.println("<h4 style='color:green;'>"+abc+"</h4>");
                            
                            %>
                </table>
            </fieldset>
            </form>
        </div>
            
        </center>
    </body>
</html>