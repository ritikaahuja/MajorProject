<html>
<head>
<title>SQL Injection</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="keywords" content="Keywords here">
<meta name="description" content="Description here">
<meta name="Author" content="Joseph De Araujo">
<meta name="Publisher" content="Interspire.com">
<meta name="robots" content="index, follow"> <!-- (Robot commands: All, None, Index, No Index, Follow, No Follow) -->
<meta name="revisit-after" content="30 days">
<meta name="distribution" content="global">
<meta name="rating" content="general">
<meta name="Content-Language" CONTENT="english">

<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body style="margin:0;">
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="73" background="images/topbg.gif"><table width=100% border=0 align="center" cellpadding=0 cellspacing=0>
      <tr>
        <td width="12"> <img src="images/topleft.gif" width=12 height=73></td>
        <td width="166"> &nbsp;</td>
        <td colspan=2 align="right" valign="bottom">&nbsp;</td>
        <td width="14"> <img src="images/topright.gif" width=14 height=73></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="36" background="images/subnavbg.gif"><table width=100% border=0 align="center" cellpadding=0 cellspacing=0>
      <tr>
        <td width="12"> <img src="images/subnavleft.gif" width=12 height=36></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <font size="4">SQL INJECTION</font></td>
        <td width="14"><img src="images/subnavright.gif" width=14 height=36></td>
      </tr>
    </table></td>
  </tr>
  <tr>

    <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="178" valign="top"><table border=0 align="center" cellpadding=0 cellspacing=0>
          <tr>
            <td background="images/navbg.gif"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'"><p>
                <a href="AdminLogin.jsp">&nbsp; Admin</a></p>                  </td>
              </tr>
              <tr>
                <td><img src="images/navspacer.gif" width="178" height="1"></td>
              </tr>
              <tr>
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'">
                <a href="UserLogin.jsp">&nbsp;Customer</a></td>
              </tr>
              <tr>
                <td><img src="images/navspacer.gif" width="178" height="1"></td>
              </tr>
              <tr>
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'">&nbsp;<a href="CreditCard.jsp">Credit
                Card</a></td>
              </tr>
              <tr>
                <td><img src="images/navspacer.gif" width="178" height="1"></td>
              </tr>
              <tr>
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'">&nbsp;<a href="Loan.jsp">Loan</a></td>
              </tr>
              <tr>
                <td><img src="images/navspacer.gif" width="178" height="1"></td>
              </tr>
              <tr>
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'">&nbsp;<a href="index.jsp">About
                Us</a></td>
              </tr>
              <tr>
                <td><img src="images/navspacer.gif" width="178" height="1"></td>
              </tr>
              <tr>
                <td height="25" class="menuLink" style="padding:0 10 0 23;">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="25" background="images/hdrbg.gif" class="sidenewshdr" style="padding:0 10 0 23; ">&nbsp;</td>
          </tr>
          <tr>
            <td height="25">
            <table width="178"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top" width="12"><img src="images/sidebg2.gif" width="12" height="146"></td>
                <td style="background-image:url('images/sidebg1.gif'); background-repeat:repeat-x; padding:10" width="146">
<br>
&nbsp;</td>
              </tr>
            </table>              </td>
          </tr>
        </table></td>
        <td valign="top" style="padding:15px 25px 15px 25px; ">
        <!-------->
      <html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
<script language="javascript">

function validate()
{
var acc=document.userlogin.accnumber.value;
var pass=document.userlogin.password.value;
if(acc.length<1)
{
alert("Enter the Accountnumber....");
document.userlogin.accnumber.focus();
return false;
}
if(pass.length<1)
{
alert("Enter the Pasword....");
document.userlogin.password.focus();
return false;
}
return true;
}

</script>
</head>

<body>

<form method="POST" action="UserLogin.do" name="userlogin">
  <!--webbot bot="SaveResults" u-file="fpweb:///_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br></p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
  <p>&nbsp;</p>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="89%" id="AutoNumber1" height="39">
    <%
    String error=(String)request.getAttribute("typeofinje");
    String err=request.getParameter("error");
    if(error!=null)
    {

    %>

    <tr>
      <td width="100%" height="22" colspan="2"><%="<b>INJECTION FOUND..TYPE OF INJECTION IS -->> </b>"+error %>

      </td>
    </tr>
    <tr>
      <td width="100%" height="22" colspan="2">INVALID ACCOUNT NUMBER AND PASSWORD</td>
    </tr>
    <%
    }
    else if(err!=null)
    {
    %>
    <tr>
      <td width="100%" height="22" colspan="2">INVALID ACCOUNT NUMBER AND PASSWORD</td>
    </tr>
    <% }%>
    <tr>
      <td width="50%" height="22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Account Number<p>&nbsp;</td>
      <td width="50%" height="22"><input type="text" name="accnumber" size="20"><p>&nbsp;</td>
    </tr>
    <tr>
      <td width="50%" height="16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password<p>
      </td>
      <td width="50%" height="16"><input type="password" name="password" size="20"></td>
    </tr>
  </table>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="submit" onclick="return validate();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Clear" name="B3"></p>
  <p>&nbsp; Character Level&nbsp;
  <input type="radio" value="character" name="process">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Positive Taint <input type="radio" name="process" value="positive"> &nbsp;&nbsp;&nbsp;&nbsp;-->Syntax-Aware&nbsp; <input type="radio" name="process" value="syntax">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
</form>

</body>

</html>
        <!-------->
        </td>

        <td width="206" valign="top"><p>&nbsp;</p>
          <p>&nbsp;</p>
          <p><img src="images/mainpic1.jpg" width=145 height=90></p>
          <p><img src="images/mainpic2.jpg" width="145" height="90"></p>          </td>
          </tr>
    </table></td>
  </tr>

  <tr>
    <td height="19" align="right" background="images/subbasebg.gif">&nbsp;</td>

  </tr>
  <tr>


  </tr>
</table>
</body>
</html>