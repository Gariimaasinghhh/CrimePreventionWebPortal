<%-- 
    Document   : CitizenHome
    Created on : Mar 26, 2015, 12:54:11 PM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citizen_Home</title>
       
       
        <meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/Humanst521_BT_400.font.js"></script>
<script type="text/javascript" src="js/Humanst521_Lt_BT_400.font.js"></script>
<script type="text/javascript" src="js/roundabout.js"></script>
<script type="text/javascript" src="js/roundabout_shapes.js"></script>
<script type="text/javascript" src="js/gallery_init.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>

    </head>
    <body>
        <!-- START PAGE SOURCE -->
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user3");
        String pass=(String)st.getAttribute("pass3");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
<header>
  <div class="container">
    <h1>Crime Prevention Citizen Member</h1>
    <nav>
      <ul>
        <li><a href="CitizenHome.jsp" class="current">Home</a></li>
        <li><a href="">Profile</a></li>
        
        
        <li><a href="CitizenSingout">Sing_Out</a></li>
        
      </ul>
    </nav>
  </div>
</header>

    <center>					
    <div style="width: 1000px;height:250px;background-image:url('images/b1.jpg');">
    
      	</div>	
        
    </center>

<div class="main-box">
  <div class="container">
    <div class="inside">
      <div class="wrapper">
          
        <aside>
          
          <h2>Citizen <span>Tasks</span></h2>
          <ol type="A">
            <li>
               
                 <p><a href="gustInformation.jsp">Upload paying gust data</a></p>
              </li>
            <li>
              
                <p><a href="citizensendinfo.jsp">Send Information</a></p>
               </li>
            <li>
              
                <p> <a href="CitizenViewInfo.jsp">View Information</a></p>
              </li>
              <p> <a href="CitizenChangePass.jsp">Change Password</a></p>
              </li>
             
          </ol>
           <br></br>
          <img src="images/aa.jpg">
       
       
          
        </aside>
        <section id="content">
          <article>
            <%
        
       out.println("<h2>Welcome to <span>"+user+"</span></h2>");
        %>
            <figure><img src="images/ch.jpg" alt=""></figure>
            <h2>About Citizen Member</h2>
            <marquee direction="up">
                <p> Web Based Application for a Police department is automation of the complete work of chartered e-cops. Along with automation of the work of chartered police it also provides various services to the cops, local police and citizen. They can find at any criminal person and can get their arrest done easily. 
To deliver next generation police and law enforcement reporting tools, and setting up intelligence platforms that agencies use to take incoming incident reports, lessen live employee resources and allow these enforcement agencies to reallocate resources to much needed community areas.
An online solution is very useful as the solution is inherently distributive. This distributive characteristic of the online solution helps in getting the different police stations to share information and get in contact with one another. The administrative work required to maintain records reduces greatly as the paperwork is almost minimal and the data is stored in an organized. Its primary task includes securing continuous needs of the public in an efficient manner. 
                    </p>
       </marquee>
            </article>
           
 </section>
      </div>
    </div>
  </div>
</div>
<footer>
  <div class="container">
    <div class="footerlink">
      <p class="lf">Copyright &copy; 2015 <a href="#">Domain Name</a> - All Rights Reserved</p>
      <p class="rf"><a href=""></a> By Ajay Yadav MCA 3rd Year </a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</footer>

<!-- END PAGE SOURCE -->
<div align=center><a href='http://analyzeinfotech.in/'>Analyze Info-Tech </a></div></body>

    </body>
      
   
</html>
