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
        <font size="4">SQL INJECTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="CustomerHome.jsp" ><font face="Arial" size="2">&lt;BACK&gt;</font></a><font face="Arial" size="2">&nbsp;</font> &nbsp;&nbsp; &nbsp; </font><a href="Logout.jsp">[LOGOUT]</a></td>
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
      <meta http-equiv="Content-Language" content="en-us">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></p>
<form method="POST" action="CustomerTransaction.do">
<!--webbot bot="SaveResults" u-file="fpweb:///_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><%@ page import="java.sql.*" %>
<%
String accountnumber=(String)session.getAttribute("accountnumber");

int s=0;
if(accountnumber.contains("o"))
{
  System.out.println("in o");

   s=accountnumber.indexOf("o");
    accountnumber=accountnumber.substring(0,s).trim();
   }
   else if(accountnumber.contains("--"))
   {
   System.out.println("in --");

   s=accountnumber.indexOf("--");
    accountnumber=accountnumber.substring(0,s).trim();
   }
   else if(accountnumber.contains(";"))
   {
   System.out.println("in ;");

   s=accountnumber.indexOf(";");
    accountnumber=accountnumber.substring(0,s).trim();
   }


  else
  {
  accountnumber=accountnumber.trim();
  System.out.println(accountnumber);
  }

 System.out.println(accountnumber);
int accnum=Integer.parseInt(accountnumber);
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:injection","sa","sa");
Statement st=con.createStatement();
String query="select * from customerdetails where accountnumber='"+accnum+"'";
ResultSet rs=st.executeQuery(query);
 if(rs.next())
 {
 if((request.getParameter("error"))!=null)
 {

 out.println("fgfff"+request.getAttribute("typeofinje"));
 }
 %> <p>&nbsp;</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
  <table border="0" cellspacing="0" style="border-collapse: collapse;" bordercolor="#111111" width="366" id="AutoNumber1" cellpadding="2" height="182">
    <tr>
      <td width="51%">&nbsp;&nbsp;&nbsp;&nbsp; Your Name</td>
      <td width="49%"><input type="text" name="name" value=<%=rs.getString(1)%> size="20"></td>
    </tr>
    <tr>
      <td width="51%">&nbsp;&nbsp;&nbsp; Account Number</td>
      <td width="49%"><input type="text" name="accnumber" value=<%=rs.getString(9)%>  size="20"></td>
    </tr>
    <tr>
      <td width="51%">&nbsp;&nbsp;&nbsp; Transaction Number</td>
      <td width="49%"><input type="text" name="trannumber"   size="20"></td>
    </tr>
    <tr>
      <td width="51%">&nbsp;&nbsp;&nbsp; Amount Having in Account </td>
      <td width="49%"><input type="text" name="amounthaving"  value=<%=rs.getString(10)%> size="20"></td>
    </tr>
    <tr>
      <td width="51%">&nbsp;&nbsp;&nbsp; Amount Send</td>
      <td width="49%"><input type="text" name="amount"   size="20"></td>
    </tr>
    <%
    }%>
  </table>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="SEND" name="Send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="CANCEL" name="Cancel"></p>
  <p>&nbsp;</p>
</form>
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

    <td height="38" align="center" background="images/basebg.gif">&copy; Copyright 2003-2004 YourCompany. All Rights Reserved. <a href="http://www.interspire.com/templates" class="searchlink">Website Template by Interspire</a></td>
  </tr>
</table>
</body>
</html>
