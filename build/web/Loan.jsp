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
        <span style="letter-spacing: 1">
        <font color="#336699" face="serif" size="2">There are a variety of home loans available. They are:

HOME PURCHASE LOAN
This is the common loan for purchasing a home.


HOME IMPROVEMENT LOAN
This loan is given for implementing repair works and renovations to your home.


HOME CONSTRUCTION LOAN
This loan is available for the construction of a new home.


HOME EXTENSION LOAN
Home extension loans are given for expanding or extending an existing home. For example, addition of an extra room, etc.


HOME CONVERSION LOAN
Available for those who have financed the present home with a Home Loan and wish to purchase and move to another home for which some additional funds are required. Through a Home Conversion Loan, the existing loan is transferred to the new home, including the additional amount required, eliminating the need for pre-payment of the previous loan.


LAND PURCHASE LOAN
This type of loan is sanctioned for purchase of land, for both home construction or investment purposes.


BRIDGE LOAN
The Bridge Loan is designed for people who wish to sell the existing home and purchase another. The bridge loan helps finance the new home, until a buyer is found for the old home.


BALANCE TRANSFER LOAN
Balance Transfer loans help you pay off an existing home loan with a higher interest rate, and avail of a loan with a lower rate of interest.


REFINANCE LOAN
This loan helps you pay off the debt you have incurred from private sources such as relatives and friends, for the purchase of your present home.


STAMP DUTY LOAN
This loan is sanctioned to pay the stamp duty amount that needs to be paid on the purchase of a property.


LOANS TO NRIs
This loan is tailored for the requirements of NRIs wishing to build or buy a home in India


What is an EMI?

EMI (Equated Monthly Installment) is the amount payable to the lending institution every month, till the loan is paid back in full. It consists of a portion of the interest as well as the principal.</font></span><p>
        <font color="#E6851C">&nbsp;<b>How is an EMI calculated? </b></font></p>
        <p><font color="#336699">EMI Formula:</font></p>
        <p><font color="#336699">&nbsp;l x r [(1+r)n /(1+r)n-1 ] x 1/12
l = loan amount
</font></p>
        <p><font color="#336699">r = rate of interest
</font></p>
        <p><font color="#336699">n = term of the loan

</font></p>
        <p><b><font color="#E6851C">What are the incentives offered by lending
        institutions?</font></b></p>
        <p><font color="#336699">&nbsp;a) Some of the lending institutions sanction the loan without requiring you to identify property as a prerequisite for eligibility
        </font></p>
        <p><font color="#336699">b) Free accident insurance
</font></p>
        <p><font color="#336699">c) Discounts</font></p>
        <p><font color="#336699">&nbsp;d) Waiving of pre payment penalty</font></p>
        <p><font color="#336699">&nbsp;e) Waiving of processing fee</font></p>
        <p><font color="#336699">&nbsp;f) Free property insurance

</font></p>
        <p><font color="#E6851C"><b>What are the eligibility conditions for a home loan?

        </b></font></p>
        <p><font color="#336699">To qualify for a home loan, most of the lending institutions in India require you to be:</font></p>
        <p><font color="#336699">&nbsp;a) An Indian resident or NRI </font></p>
        <p><font color="#336699">b) Above 21 years of age at the commencement of the loan
c) Below 65 when the loan matures
</font></p>
        <p><font color="#336699">d) Either salaried or self employed

</font></p>
        <p><b><font color="#E6851C">What are the interest rates offered for home loans?
        </font></b></p>
        <p><b><font color="#E6851C">What are: Daily Reducing, Monthly Reducing and Yearly Reducing?</font></b></p>
        <p><font color="#336699">&nbsp;Interest rates are different from institution to institution and generally range from about 9.25% to around 12 %.
        </font></p>
        <p><font color="#336699">The interest on home loans in India is usually calculated either on monthly reducing or yearly reducing balance. In some cases, daily reducing basis is also adopted.

Annual reducing:
In this system, the principal, for which you pay interest, reduces at the end of the year. Thus you continue to pay interest on a certain portion of the principal which you have actually paid back to the lender. This means the EMI for the monthly reducing system is effectively less than the annual reducing system.

Monthly reducing:
In this system, the principal, for which you pay interest, reduces every month as you pay your EMI.

Daily Reducing:
In this system, the principal, for which you pay interest, reduces from the day you pay your EMI. EMI in the daily reducing system is less than the monthly reducing system.

What is the best way to select the cheapest home loan?

Keep the loan period constant and calculate the total amount paid for the home through the different loan options available.

What is a fixed rate of interest?

Some institutions have a fixed rate of interest, which means the rate of interest remains unchanged for the entire duration of the loan. This means you do not benefit, even if rates of interest drop in the market.

What is a floating rate?

This is the rate of interest that fluctuates according to the market lending rate. This means you stand the risk of paying more than you budgeted for in case the lending rate goes up.

        </font></p>
        <p><font color="#E6851C"><b>What are the other costs that usually accompany a home loan?

        </b></font></p>
        <p><font color="#336699">Home loans are usually accompanied by the following extra costs:
        </font></p>
        <p><font color="#336699">a) Processing Charge: It's a fee payable to the lender on applying for a loan. It is either a fixed amount not linked to the loan or may also be a percentage of the loan amount. The loan amount required by you cannot be less than the processing fee.

b) Pre-payment Penalties: When a loan is paid back before the end of the agreed duration, a penalty is charged by some banks/companies, which is usually between 1% and 2% of the amount being pre-paid.

        </font></p>
        <p><font color="#336699">c) Commitment Fees: Some institutions levy a commitment fee in case the loan is not availed of within a stipulated period of time after it is processed and sanctioned.

d) Miscellaneous Costs: It is quite possible that some lenders may levy a documentation or consultant charges.</font></p>
        <p><font color="#336699">&nbsp;e) Registration of mortgage deed.<b> </b>
        </font></p>
        <p><b><font color="#E6851C">What are the repayment period options?

        </font></b></p>
        <p><font color="#336699">Repayment period options range generally from 5 to 15 years.

        </font></p>
        <p><font color="#336699">How do HFCs decide on the loan amount?

</font></p>
        <p><font color="#336699">Usually, most companies give up to a maximum of
        85% of the cost of the house. The 15%, sometimes called 'seed money',
        will have to be provided by the loan applicant. The amount, for which
        the applicant is eligible, is determined by the age, income, no. of
        dependents, monthly outgoing and repayment capacity. This varies from
        case to case. </font></p>
        <p><font color="#E6851C"><b>Are securities required for home loans? </b>
        </font></p>
        <p><font color="#336699">In most cases, the property to be purchased
        itself becomes the security and is mortgaged to the lending institution
        till the entire loan is repaid. Some institutions may ask for additional
        security such as life insurance policies, FD receipts and share or
        savings certificates. </font></p>
        <p><font color="#E6851C"><b>Do I require a guarantor to get a home loan?

        </b></font></p>
        <p>S<font color="#336699">ome institutions ask for 1 or 2 guarantors, others require no guarantor at all.
        </font></p>
        <p><font color="#E6851C"><b>What is the time required for loan application approval?

        </b></font></p>
        <p><font color="#336699">About 0-15 days.

</font></p>
        <p><font color="#E6851C"><b>What is the time required for loan disbursement?</b></font></p>
        <p>&nbsp;<font color="#336699">On an average, loans are disbursed within 3-15 days after satisfactory and complete documentation and completion of all relevant procedures, including proof that 15% of the cost has been paid upfront to the seller of the property.

        </font></p>
        <p><font color="#E6851C"><b>Can I make joint applications for home loans?

        </b></font></p>
        <p><font color="#336699">Most institutions are willing to consider the joint incomes of the applicants for deciding the loan amount. Some institutions do not require the co-applicants to be co-owners of the property to be purchased.

What are the tax benefits of home loans?

Both principal as well as interest of home loans attract tax benefits. With effect from 1st April 2005 (i.e. assessment year 2005-07) under section 80C of the Income Tax Act 1965:

Principal amount of repayment of loan along with other savings such as PF, PPF, Life Insurance premium etc up to a maximum of Rs 1,00,000/- will be eligible for deduction from gross income.

Interest paid on loan after completion of construction will be deductible from income from property

For self occupied - Income will be treated as nil and interest payment will be treated as minus income which will be adjusted against other income.
For rental property - It will be adjusted against rental income.



        <!-------->
        </font>
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
