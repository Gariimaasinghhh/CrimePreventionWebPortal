<%-- 
    Document   : HotelRegistration
    Created on : Mar 26, 2015, 8:06:56 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Registration</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
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
<script type="text/javascript" src="js/validateuserid.js"></script>


<script type="text/javascript">

    function abc()
    {
    if(document.frm.t1.value=="")
        {
             alert("Please fill hotel name");
             return false;
        }
        if(document.frm.t2.value=="")
            {
             alert("please fill city");
             return false;
             
            }
            if(document.frm.t3.value=="")
                {
              alert("Pleass fill Registration number");  
              return false;
                }
                if(document.frm.p.value=="")
                {
              alert("Pleass fill Pin number");  
              return false;
                }
                if(document.frm.t7.value=="")
                {
              alert("Pleass fill Phone number");  
              return false;
                }
          
              else
                  {
                     return true;
                  }
    }
</script>
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
        
      </ul>
    </nav>
  </div>
</header>

    <center>					
    <div style="width: 1000px;height:250px;background-image:url('images/b1.jpg');">
    
      	</div>	
    
           
    
    <div style="width:1000px;height: 750px;background-color: white;">
        <form method="post" action="HotelRegistration" name="frm" onsubmit="return abc();">
       <fieldset width="100px" height=200px">
           <legend> <a href="UserRegistration.jsp">Back</a></legend>
                <table style="width:600px;height:500px; background-color: white;"><br>
                    <h2>Registration Hotel Member</h2>
                    
                    <tr height="30px"><td align="right">Hotel Name* </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr><br>
                    <tr height="30px"><td align="right">Category* </td><td width="20px"></td><td><select name="c"><option>Select hotel category</option><option value="Deluxe">Deluxe</option><option value="Super Deluxe">Super Deluxe</option><option value="Three star">Three Star</option><option value="Five Star">Five star</option></select></td></tr><br>

                    <tr height="30px"><td align="right">City* </td><td width="20px"></td><td><input type="text" name="t2" style="height: 20px"></td></tr>
                       <tr height="30px"><td align="right">Total Room* </td><td width="20px"></td><td><input type="number" name="t3" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Registration number* </td><td width="20px"></td><td><input type="text" name="t4" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right"> State*</td><td width="20px"></td><td><input type="text" name="t5" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Address*</td><td width="20px"></td><td><textarea name="t6" style="height: 70px;width: 220px;"></textarea></td></tr>
                    <tr height="30px"><td align="right">Pin* </td><td width="20px"></td><td><input type="number" name="p" style="height: 20px"></td></tr>
                    
                    <tr height="30px"><td align="right">Phone No* </td><td width="20px"></td><td><input type="number" name="t7" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Fax No* </td><td width="20px"></td><td><input type="number" name="t8" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Email_id* </td><td width="20px"></td><td><input type="email" name="t9" style="height: 20px"></td></tr>
                   <tr height="30px"><td align="right">Web_site* </td><td width="20px"></td><td><input type="text" name="t10" style="height: 20px"></td></tr>
                     <tr height="30px"><td align="right"></td><td width="20px"></td><td> <img src="Cap_Img.jsp">
                             <input type="button" value="Ref" onClick="window.location.href=window.location.href" style="width: 35px;height:30px;"></td></tr>
                    <td align="right"></td><td width="20px"></td><td><input name="code" id="code" type="text" onblur=" checkcode(document.frm.code.value);"><span id="msgAreaCaptcha"></span>
                                            </td></tr>
                
                 </table>
            <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Submit" style="width:90px;height: 25px;"> </td><td width="20px"></td><td></td></tr>
              <br></br>  <% 
                            String m=request.getParameter("msg");
                            if(m!=null)
                                out.println("<p style='color:red';>"+m+"</p>");
                            %>    
            </fieldset>
            </form>
        </div>    
    </div>
    </center>
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
       
    </body>
</html>
