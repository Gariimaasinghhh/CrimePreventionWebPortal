<%-- 
    Document   : policeHome
    Created on : May 8, 2016, 5:53:58 PM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Admin_Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
    <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user4");
        String pass=(String)st.getAttribute("pass4");
        if(user==null||pass==null)
          response.sendRedirect("AdminLogin.jsp?msg=Please login first!!!!");  
        %>
<div class="wrapper col1">
  <div id="head">
    <h1>Crime Prevention</h1>
     <img src="logo1.jpg">
    <div id="topnav">
      <ul>
        <li><a class="active" href="policeHome.jsp">Home</a></li>
        <li><a href="#">Operation</a>
          <ul>
            <li><a href="police_view_info.jsp">View Information</li>
            <li><a href="police_send_info.jsp">Send Information</a></li>
            <li><a href="police_find_data.jsp">Find Data</a></li>
            
          </ul>
        </li>
         <li class="last"><a href="police_change_pass.jsp">Change Password</a></li>
        <li class="last"><a href="policeLogout">Sing_Out</a></li>
      </ul>
    </div>
    
  </div>
</div>
<center>
    <div style="width:1000px;height:600px;background-color: white;">
        <div style="width:1000px;height:200px;background-image: url('images/adm.jpg');"></div>  
        <div style="width:250px;height:250px;float: left;">
            <h3 style="color:darkred;">Latest Information</h3>
            
         <table bgcolor="#CED4D2">
              <%
          out.println("<table bgcolor='#CED4D2'height=200px>");
              
              DBconnection db=new DBconnection();
             db.stmt=db.con.createStatement();
             
            db.rst=db.stmt.executeQuery("select user_id,sub from membermsg where sdate=curdate()");
           // db.pstmt.setString(1,);
             while(db.rst.next())
          {
            String id=db.rst.getString(1);
            String sub=db.rst.getString(2);
          
            
             out.println("<tr height=10px><td><marquee direction='up'scrollamount='2'><p style='size:ledger;color: blue;'><p style='color:red;size:12px;'>New</p><a href='AdminViewInfo.jsp'>"+id+"&nbsp;"+sub+"</a></p></marquee></td></tr>");
           } 
            out.println("</table>");   
         
%>
     
         </table>   
        </div><br></br>
        <h1 style="color: darkblue;"></h1>
        <div style="width:500px;height:200px;float: right;">
                
        </div>
        
    </div>
    <div style="width: 1400px;height: 130px;background-color:#2047A9;"></div>
</center>
 </body>
</html>