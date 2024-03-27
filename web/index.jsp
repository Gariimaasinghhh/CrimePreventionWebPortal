<%-- 
    Document   : index
    Created on : Mar 26, 2015, 8:01:04 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crime Prevention Home</title>
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
        session.removeAttribute("user");
        session.removeAttribute("pass");
        %>
<header>
  <div class="container">
    <h1>Crime Prevention</h1>
    <nav>
      <ul>
        <li><a href="index.jsp" class="current">Home</a></li>
        <li><a href="About.jsp">About</a></li>
        
        
        <li><a href="Contect.jsp">Contact</a></li>
        <li><a href="AdminLogin.jsp">Admin LogIn</a></li>
      </ul>
    </nav>
  </div>
</header>
<section id="gallery">
    					
  <div class="container">
    <ul id="myRoundabout">
      <li>
       <img src="images/c.jpg" alt=""></li>
      <li><img src="images/c1.jpg" alt=""></li>
      <li><img src="images/c2.jpg" alt=""></li>
      <li><img src="images/c3.jpg" alt=""></li>
      <li><img src="images/c4.jpg" alt=""></li>
      
    </ul>
      	</div>	
  
    
</section>
<div class="main-box">
  <div class="container">
    <div class="inside">
      <div class="wrapper">
        <aside>
          <h2>Recent <span>News</span></h2>
          <ul class="news">
            <li>
              <figure><strong>22</strong>June</figure>
              <h3><a href="#">Sed ut perspiciatis unde</a></h3>
              Domnis iste natus error sit voluptam accusa doloremque <a href="#">...</a> </li>
            <li>
              <figure><strong>09</strong>June</figure>
              <h3><a href="#">Totam rem aperiam</a></h3>
              Eaqueipsa quae abillo inventoretis et quasi architecto beatae <a href="#">...</a> </li>
            <li>
              <figure><strong>31</strong>May</figure>
              <h3><a href="#">Inventore veritatis et quasi</a></h3>
              Architecto beatae vitae dicta sunt explicabo <a href="#">...</a> </li>
            <li>
              <figure><strong>25</strong>May</figure>
              <h3><a href="#">Nemo enim ipsam</a></h3>
              Voluptatem quia voluptas sit asper natur aut odit aut fugit <a href="#">...</a> </li>
          </ul>
        </aside>
        <section id="content">
          <article>
            <h2>Welcome to <span>Crime Prevention Web Portal</span></h2>
            <figure><img src="images/banner1.jpg" alt=""></figure>
            </article>
            <center>
          <div style="width:100px;height:90px;">
          <form method =get action="login">
               <fieldset width="100px" height="70px">
               
             <table width=100px>
              <tr width="30px" height="30px"><td width="10px"></td><td width="10px" align="center"><select name="t1" style="width: 140px;height: 70;background-color: #A0EDE5;"><option>Select user type..</option><option value="Hotel">Hotel Member</option><option value="Hostel">Hostel Member</option><option value="Citizen">Citizen</option></select></td><td width="10px"></td></tr> 
            
              <tr><td width="30px" align=center>User_Id-<td><input type=text name=t2></td></tr><tr height="10px"></tr>
              <tr><td width="30px" align=left>Password-</td><td><input type=password name=t3></td></tr><tr height="5px"></tr>
      <tr width="30px"><td width="10px"></td><td width="10px" align="center"><input type="submit" value="LogIn" style="width:70px;height: 25px;background-color: #ACF7D1;"></td><td width="10px"></td></tr>
      <tr height="10px"></tr>  <tr width="30px" height="20px"><td width="10px"></td><td width="10px" align="center"><a href="UserRegistration.jsp"><h3>New Registration..</h3></a></td><td width="10px"></td></tr> 
         <%
             String m=request.getParameter("msg");
             if(m!=null)
                 out.println("<p style='color:red'>"+m+"</p>");
             %>         
</table>
               
            
</fieldset>
          </form>
</div>

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
