<%-- 
    Document   : gustInformation
    Created on : Apr 19, 2015, 2:59:13 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Check_in</title>
        <style type="text/css">
.seqslidestyle{
margin-right: 15px;
}

#sddm
{	margin: 0;
	padding: 0;
	z-index: 30}

#sddm li
{	margin: 0;
	padding: 0;
	list-style: none;
	float: left;
	font: bold 11px arial}

#sddm li a
{	display: block;
	margin: 0 1px 0 0;
	padding: 4px 10px;
	width: 80px;
	background: #5970B2;
	color: #FFF;
	text-align: center;
	text-decoration: none}

#sddm div
{	position: absolute;
	visibility: hidden;
	margin: 0;
	padding: 0;
	background: #EAEBD8;
	border: 1px solid #5970B2}

	#sddm div a
	{	position: relative;
		display: block;
		margin: 0;
		padding: 5px 10px;
		width: auto;
		white-space: nowrap;
		text-align: left;
		text-decoration: none;
		background: #EAEBD8;
		color: #2875DE;
		font: 11px arial}

	</style>
        <script type="text/javascript">
            function abc()
            {
            if(document.frm.t1.value=="")  
                {
                    alert("Pleass fill First Name!!!");
                    return false;
                }
                if(document.frm.t2.value=="")
                    {
                        alert("Pleass fill last name");
                        return false;
                    }
                    if(document.frm.t3.value=="")
                        {
                            alert("Pleass fill Identity Number");
                            return false;
                        }
                        if(document.frm.t4.value=="")
                            {
                          alert("Pleass select Gender");
                          return false;
                            }
                            if(document.frm.t5.value=="")
                                {
                                    alert("Pleass fill Contect No");
                                    return false;
                                }
                                if(document.frm.t7.value=="")
                                    {
                                        alert("Pleass fill Room Number");
                                    }
                                    else
                                        {
                                            return true;
                                        }
            }
        </script>
    </head>
    <body>
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user3");
        String pass=(String)st.getAttribute("pass3");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/66.jpg');">
            </div>
            <h3><p align="left"> <a href="CitizenHome.jsp">Back</a></p></h3> <%
                 String m=request.getParameter("msg");
                 if(m!=null)
                     out.println("<p style='color:red;'>"+m+"</p>");
                 %>  
            <h2 style="color:darkmagenta;"> Details</h2>
            <form method="post" action="gustinfo" enctype="multipart/form-data" name="frm" onsubmit="return abc();">
                <fieldset style="width:880px;height:730px;">
                    <legend><p style="color:darkcyan;">Guest Details</p></legend>
                 <table style="text-align:left;" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" height="650px" width="780px">
		<tr>
			<td width="20px">&nbsp;</td>
			<td width="25px">&nbsp;</td>
			<td width="250px"></td>
			<td width="20px">&nbsp;</td>			
			<td width="25px">&nbsp;</td>
			<td width="250px"></td>
			<td width="20px">&nbsp;</td>			
		</tr>
		<tr>
		  <td width="20px">&nbsp;</td>
		  <td width="25px">&nbsp;</td>
		  <td width="250px">First name :<span class="required"> *</span></td>
		  <td width="20px">&nbsp;</td>
		  <td width="25px">&nbsp;</td>
		  <td width="250px">Last name :<span class="required"> *</span></td>
		  <td width="20px">&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t1" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t2" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td> Identity card :<span class="required"> *</span> (<samp>Eg : Addhar Card, Voter Card,Pen cord</samp>)</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Gender :<span class="required"> *</span></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t3" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
                  <td><select name="t4" style="width:180px;height: 25px;background-color:#C2E8E7; "><option>--Select Gender--</option><option value="Male">Male</option><option value="Female">Female</option></select></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Contact No :<span class="required"> *</span></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t5" maxlength="11" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="number" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		
		
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>City : </td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Pin No:<span class="required"> *</span></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t6" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t7" maxlength="11" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="number" /></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Address :<span class="required"> *</span></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><textarea name="t8" cols="20" rows="3" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; width: 350px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);"></textarea></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>State:<span class="required"> *</span></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t9" maxlength="25" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
	  		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Email : </td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Photo:<span class="required"> *</span></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t10" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="email" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t11" maxlength="11" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="file" /></td>
		  <td>&nbsp;</td>
	  </tr>       
	  	  		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
                  <td>&nbsp;</td></tr>
                  <tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
                  <td>&nbsp;</td>
		  
		
		  <td><input name="submit" type="submit" style="text-transform:uppercase; color:buttontext; padding:6px 0px; width:90px; border:solid 1px #9f9f9f; background-color:#B8C7C2; cursor:pointer; margin-top:0px; font-size:11px; font-family:Arial;" value="SUBMIT" /></td>
		  <td></td>
                  <td><input  type="reset" style="text-transform:uppercase; color:buttontext; padding:6px 0px; width:90px; border:solid 1px #9f9f9f; background-color:#B8C7C2; cursor:pointer; margin-top:0px; font-size:11px; font-family:Arial;" value="CLEAR" /></td>
		  
                  
		  
		  
		  
	  </tr>
		  		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
           
	</table>
             
                    
                    
                </fieldset>
                
             </form>
        </center>
        <div style="widht:1250px;height: 80px;background-color:steelblue;"></div>
    </body>
</html>
