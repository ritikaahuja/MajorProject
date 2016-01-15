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
        <font size="4"> SQL INJECTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><a href="AdminHome.jsp"><font size="4">&lt;BACK&gt; </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font><a href="Logout.jsp">[LOGOUT]</a></td>
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
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'"><p>&nbsp;
                <a href="AdminLogin.jsp">Admin</a></p>                  </td>
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
                <td height="25" class="menuLink" style="padding:0 10 0 23;" onMouseOver="this.className='navbar'" onMouseOut="this.className='menuLink'">&nbsp;<a href="Creditcard.jsp">Credit
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
        <!--------><html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>NewRegistration</title>
<script language="javascript">
function validate()
{
var name=document.Newregister.name.value;
var dob=document.Newregister.dob.value;
var age=document.Newregister.age.value;

var addres=document.Newregister.address.value;
var occ=document.Newregister.occupation.value;
var acc=document.Newregister.acctype.value;
var con=document.Newregister.contact.value;
var accnum=document.Newregister.accnumber.value;
var amount=document.Newregister.amount.value;
var pass=document.Newregister.password.value;
var cpass=document.Newregister.cpassword.value;
if(name==""||name==null)
{
alert("Enter the NAME....");
document.Newregister.name.focus();
return false;
}
if(dob.length<1)
{
alert("Enter the dob....");
document.Newregister.dob.focus();
return false;
}
if(age.length<1)
{
alert("Enter the age....");
document.Newregister.age.focus();
return false;
}
if(address.length<1)
{
alert("Enter the address....");
document.Newregister.address.focus();
return false;
}
if(occ.length<1)
{
alert("Enter the occupation....");
document.Newregister.occ.focus();
return false;
}
if(acc.length<1)
{
alert("Enter the Account type....");
document.Newregister.acc.focus();
return false;
}
if(con.length<1)
{
alert("Enter the contactnumber....");
document.Newregister.con.focus();
return false;
}
if(accnum.length<1)
{
alert("Enter the accountnumber....");
document.Newregister.accnum.focus();
return false;
}
if(amount.length<1)
{
alert("Enter the amount....");
document.Newregister.amount.focus();
return false;
}
if(pass.length<1)
{
alert("Enter the password....");
document.Newregister.pass.focus();
return false;
}
if(cpass.length<1)
{
alert("Enter the conformpassword....");
document.Newregister.cpass.focus();
return false;
}
return true;

}

</script>
</head>

<body>


<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="Logout.jsp"><br></a>
</p>

<%
String error=(String)request.getAttribute("typeofinje");
System.out.println("type of injection   "+error);

 if(error!=null)
{
out.println("<b>INJECTION FOUND....TYPE OF INJECTION IS -->> </b>"+error);
}
%>
<form method="POST" action="NewRegistration.do" name="Newregister">
  <!--webbot bot="SaveResults" u-file="fpweb:///_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>&nbsp;</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
  New Customer</strong></p>
  <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="65%" id="AutoNumber1">
    <tr>
      <td width="50%" bordercolor="#FFFF00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NAME</td>
      <td width="50%"><input type="text" name="name" size="20"></td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; DATA OF&nbsp;&nbsp; BIRTHDAY</td>
      <td width="50%"><input type="text" name="dob" size="20"></td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AGE</td>
      <td width="50%"><input type="text" name="age" size="20"></td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GENDER</td>
      <td width="50%"><input type="radio" value="male"  name="gender">MALE&nbsp;&nbsp;&nbsp;
      <input type="radio" name="gender" value="female">FEMALE</td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADDRESS</td>
      <td width="50%"><textarea rows="2" name="address" cols="20"></textarea></td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OCCUPATION</td>
      <td width="50%"><input type="text" name="occupation" size="20"></td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACCOUNT TYPE</td>
      <td width="50%"><input type="radio" name="acctype" value="current">current&nbsp;&nbsp;&nbsp;
      <input type="radio" name="acctype" value="saving">saving</td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTACT NUMBER</td>
      <td width="50%"><input type="text" name="contact" size="20"></td>
    </tr>
    <tr>
      <td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td>
      <td width="50%">&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Account Details&nbsp;</strong>&nbsp;&nbsp;&nbsp; </p>
  <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="98%" id="AutoNumber2" bordercolorlight="#000000">
    <tr>
      <td width="33%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Account
      number</td>
      <td width="67%"><input type="text" name="accnumber" size="20">&nbsp;<% if((request.getParameter("err"))!=null)
      {%>
      Account number is already Exist
      <%
      } %>
       </td>
    </tr>
    <tr>
      <td width="33%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount</td>
      <td width="67%"><input type="text" name="amount" size="20"></td>
    </tr>
    <tr>
      <td width="33%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; password</td>
      <td width="67%"><input type="password" name="password" size="20"></td>
    </tr>
    <tr>
      <td width="33%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; conform&nbsp;
      password</td>
      <td width="67%"><input type="password" name="cpassword" size="20"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="Submit" onclick="return validate(this);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset" name="Reset"></p>
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