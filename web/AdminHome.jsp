<%-- 
    Document   : AdminHome
    Created on : Mar 31, 2015, 12:20:35 PM
    Author     : AJAY YADAV
--%>


<%@page import="java.util.Calendar"%>
<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin_Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
    <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user5");
        String pass=(String)st.getAttribute("pass5");
        if(user==null||pass==null)
        response.sendRedirect("AdminLogin.jsp?msg=Please login first!!!!");  
       
 
  %>
<div class="wrapper col1">
  <div id="head">
    <h1>Crime Prevention</h1>
     <img src="logo1.jpg">
    <div id="topnav">
      <ul>
        <li><a class="active" href="AdminHome.jsp">Home</a></li>
        <li><a href="addpolice.jsp">Police Officer</a></li>
           <li><a href="#">Information</a>
          <ul>
            <li><a href="AllMemberData.jsp">View Member Data</li>
            <li><a href="AdminViewInfo.jsp">View Information</li>
            <li><a href="AdminSendInformattion.jsp">Send Information</a></li>
             <li><a href="ViewFeedback.jsp">View Feedback</a></li>
            <li><a href="findMember.jsp">Find Member </a></li>
          </ul>
        </li>
        <li><a href="#">Operation</a>
          <ul>
            <li><a href="FindData.jsp">Find Data in Hotel</li>
            <li><a href="FindData3.jsp">Find Data in Hostel</a></li>
            <li><a href="#">Find Data in City</a></li>
            <li><a href="FindAllData.jsp">Find all data</a></li>
          </ul>
        </li>
        <li class="last"><a href="AdminLogout">Sing_Out</a></li>
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
        <fieldset>
          <legend>Site Search</legend>
          <input type="submit" name="go" id="go" value="GO" />
          <input type="text" value="Search the site&hellip;"  onfocus="this.value=(this.value=='Search the site&hellip;')? '' : this.value ;" />
        </fieldset>
      </form>
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