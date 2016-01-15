package WASP;
import java.sql.*;
import java.util.*;
public class SyntaxAware {


	private Connection con=null;
	private Statement st=null;
	private ResultSet rs=null;
	private String  syntaxselect;
	private String name;
	private String dob;
	private String age;
	private String gender;
	private String address;
	private String occupation;
	private String acctype;
	private String contact;
	private String  amount;
	private String  accountnumber;
	private String  password;
	private String cpassword;
	private String amountcredit;
	private String  tablename;
	private String modifydetails;
	private String transaction;
	private String billprocess;
	private String passwordchage;
	private String insertdetails;
	public String typeofinjection;
	public String userQuery="select accountdetails  select from login  name='sugu' AND password='123' select";
	 Vector vector=new Vector();
	public SyntaxAware() throws ClassNotFoundException, SQLException
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:injection","sa","sa");
		st=con.createStatement();


	}
	public String getsyntaxselect() {
		return syntaxselect;
	}
    public void function(String givequery,String queryname) throws SQLException
    {

    	String select=queryname;
		System.out.println("set syntax  ") ;
		String query="select * from query where queryname='"+select+"'";
		//System.out.println(query);
		rs=st.executeQuery(query);
		while(rs.next())
		{
			System.out.println("qwddasdasasdas");
			String Dbquery=rs.getString(2);
			System.out.println("databae " +Dbquery);
			String Dbquerysplit[]=Dbquery.split(" ");
			String userquery="";
			String ss="";

			for(int i=0;i<=Dbquerysplit.length-1;i++)
			{
				if(givequery.contains(Dbquerysplit[i]))
				{
					givequery=givequery.replace(Dbquerysplit[i],"").trim();

				}

			}
			System.out.println("final quer---->  "   +givequery);

			if(givequery.contains("+"))
			{
				givequery=givequery.replace("+","");
				System.out.println("after --- "+givequery );
			}

			 if(givequery.contains("--"))
			{

				 givequery=givequery.replace("--","");

				 typeofinjection="Comment Line";
				 System.out.println("dfsdfsfsdsdsdf"+typeofinjection);
			}
			 if(givequery.contains(";"))
				{
				 typeofinjection="Piggybacked";
					 givequery=givequery.replace(";","");
				}
			 if(givequery.contains(","))
				{

					 givequery=givequery.replace(",","");
					 typeofinjection="Totoloies";
				}
			 if(givequery.contains("shutdown"))
			 {
				 givequery=givequery.replace("shutdown","");
				 typeofinjection="StoredProcedure";
			 }
			 if(givequery.contains("SHUTDOWN"))
			 {
				 givequery=givequery.replace("SHUTDOWN","");
				 typeofinjection="StoredProcedure";
			 }
			 if(givequery.contains("'"))
				{

					 givequery=givequery.replace("'","");
					 typeofinjection="totologies";
				}
			 if(givequery.contains("admin"))
				{

					 givequery=givequery.replace("'","");
					 typeofinjection="PiggyBacked";
				}
		     System.out.println("query  " +givequery);
			String userquerysplit[]=givequery.split(" ");
			for(int j=0;j<=userquerysplit.length-1;j++)
			{
				 if(userquerysplit[j].trim().equals(""))
				 {
					 System.out.println("if loop "+userquerysplit[j]);
				 }
				 else
				 {
                 vector.add(userquerysplit[j]);

				 }
			}
		}

    }
	public void setsyntaxselect(String syntaxselect) throws SQLException {
		String select="select";
		System.out.println("set syntax  ") ;
		String query="select * from query where queryname='"+select+"'";
		//System.out.println(query);
		rs=st.executeQuery(query);
		while(rs.next())
		{
			System.out.println("qwddasdasasdas");
			String Dbquery=rs.getString(2);
			System.out.println("databae " +Dbquery);
			String Dbquerysplit[]=Dbquery.split(" ");
			String userquery="";
			String ss="";

			for(int i=0;i<=Dbquerysplit.length-1;i++)
			{
				if(syntaxselect.contains(Dbquerysplit[i]))
				{
					syntaxselect=syntaxselect.replace(Dbquerysplit[i],"").trim();

				}

			}
			System.out.println("final query----> "   +syntaxselect);

			if(syntaxselect.contains("+"))
			{
				syntaxselect=syntaxselect.replace("+","");
				System.out.println("after --- "+syntaxselect );
			}

			if(syntaxselect.contains(";s")||syntaxselect.contains(";S"))
			{
				 typeofinjection="StoredProcedure";
				syntaxselect=syntaxselect.replace(";shutdown","");
				syntaxselect=syntaxselect.replace(";SHUTDOWN","");
				System.out.println("syntax ;s");

			}
			 if(syntaxselect.contains(";D")||syntaxselect.contains(";d"))
				{
					 typeofinjection="PiggyBackedQueries";
					syntaxselect=syntaxselect.replace(";","");
					System.out.println("syntax ;D");
				}
			 if(syntaxselect.contains("O")||syntaxselect.contains("o"))
			{
				 typeofinjection="Tutologies";
				syntaxselect=syntaxselect.replace(";","");
				System.out.println("syntax ;oo");

			}


			 if(syntaxselect.contains("--"))
				{
				 typeofinjection="Comment Line";
					syntaxselect=syntaxselect.replace("--","");
					System.out.println("syntax -----");
				}
			 if(syntaxselect.contains(","))
				{
				 typeofinjection="Comment Line";
					syntaxselect=syntaxselect.replace(","," ");
					System.out.println("syntax ----12");
				}
			 if(syntaxselect.contains("UNION")||syntaxselect.contains("union"))
				{
					 typeofinjection="Union";
					syntaxselect=syntaxselect.replace(";","");
					System.out.println("syntax unin");

				}
			 if(syntaxselect.contains("(")||syntaxselect.contains(")"))
				{
					 typeofinjection="Malformed";
					syntaxselect=syntaxselect.replace(";","");
					System.out.println("syntax ;()()");

				}
			 if(syntaxselect.contains("'"))
				{
				 typeofinjection="Tutologies";
				 syntaxselect=syntaxselect.replace("'"," ");
				}

		     System.out.println("query  " +syntaxselect);
			String userquerysplit[]=syntaxselect.split(" ");
			for(int j=0;j<=userquerysplit.length-1;j++)
			{
				 if(userquerysplit[j].trim().equals(""))
				 {
					 System.out.println("if loop "+userquerysplit[j]);
				 }
				 else
				 {
                 vector.add(userquerysplit[j]);

				 }


			}

			 tablename=(String)vector.elementAt(0);
			 accountnumber=(String)vector.elementAt(1);

			password=(String)vector.elementAt(2);
		    System.out.println("tablename  " +tablename);
			System.out.println("accountnumber  " +accountnumber);
			System.out.println("password  " +password);

			syntaxselect="sucess";
		this.syntaxselect = syntaxselect;
	}


	}
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	public String getAccountnumber() {
		return accountnumber;
	}
	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordchage() {
		return passwordchage;
	}
	public void setPasswordchage(String passwordchage) throws SQLException {


		String select="update";
		System.out.println("set syntax  ") ;
		String query="select * from query where queryname='"+select+"'";
		//System.out.println(query);
		rs=st.executeQuery(query);
		while(rs.next())
		{
			System.out.println("qwddasdasasdas");
			String Dbquery=rs.getString(2);
			System.out.println("databae " +Dbquery);
			String Dbquerysplit[]=Dbquery.split(" ");
			String userquery="";
			String ss="";

			for(int i=0;i<=Dbquerysplit.length-1;i++)
			{
				if(passwordchage.contains(Dbquerysplit[i]))
				{
					passwordchage=passwordchage.replace(Dbquerysplit[i],"").trim();

				}

			}
			System.out.println("final query===  "   +passwordchage);

			if(passwordchage.contains("+"))
			{
				passwordchage=passwordchage.replace("+","");
				System.out.println("after --- "+passwordchage );
			}

			 if(passwordchage.contains("--"))
			{

				 passwordchage=passwordchage.replace("--","");
			}
			 if(passwordchage.contains(";"))
				{

					 passwordchage=passwordchage.replace(";","");
				}
			 if(passwordchage.contains(","))
				{

					 passwordchage=passwordchage.replace(","," ");
				}

		     System.out.println("query  " +passwordchage);
			String userquerysplit[]=passwordchage.split(" ");
			for(int j=0;j<=userquerysplit.length-1;j++)
			{
				 if(userquerysplit[j].trim().equals(""))
				 {
					 System.out.println("if loop "+userquerysplit[j]);
				 }
				 else
				 {
                 vector.add(userquerysplit[j]);

				 }


			}
		}
		tablename=(String)vector.elementAt(0);
		password=(String)vector.elementAt(1);
		cpassword=(String)vector.elementAt(2);
		accountnumber=(String)vector.elementAt(3);
		System.out.println("tablename " +tablename);
		System.out.println("password  "+password);
		System.out.println("cpassword  "+cpassword);
		System.out.println("accoutnumber "+accountnumber);
		passwordchage="sucess";
		this.passwordchage = passwordchage;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getTransaction() {
		return transaction;
	}
	public void setTransaction() {

		tablename=(String)vector.elementAt(0);
		amount=(String)vector.elementAt(1);
		accountnumber=(String)vector.elementAt(2);
		System.out.println("talename  " +tablename);
		transaction="sucess";
		this.transaction = transaction;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getBillprocess() {
		return billprocess;
	}
	public void setBillprocess() {
		tablename=(String)vector.elementAt(0);
		amount=(String)vector.elementAt(1);
		System.out.println("tablename " +tablename + " amount  " +amount);
		billprocess="sucess";
		this.billprocess = billprocess;
	}
	public String getAmountcredit() {
		return amountcredit;
	}
	public void setAmountcredit( ) {
		tablename=(String)vector.elementAt(0);
		amount=(String)vector.elementAt(1);
		accountnumber=(String)vector.elementAt(2);
		amountcredit="sucess";
		this.amountcredit = amountcredit;
	}
	public String getModifydetais() {
		return modifydetails;
	}
	public void setModifydetails() {
		name=(String)vector.elementAt(1);
		dob=(String)vector.elementAt(2);
		age=(String)vector.elementAt(3);
	    gender=(String)vector.elementAt(4);
		address=(String)vector.elementAt(5);
		occupation=(String)vector.elementAt(6);
		acctype=(String)vector.elementAt(7);
		contact=(String)vector.elementAt(8);
		amount=(String)vector.elementAt(9);
		accountnumber=(String)vector.elementAt(12);
		password=(String)vector.elementAt(10);
	    cpassword=(String)vector.elementAt(11);
		tablename=(String)vector.elementAt(0);
		modifydetails="sucess";
		this.modifydetails = modifydetails;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getInsertdetails() {
		return insertdetails;
	}
	public void setInsertdetails() {
		name=(String)vector.elementAt(1);
		dob=(String)vector.elementAt(2);
		age=(String)vector.elementAt(3);
	    gender=(String)vector.elementAt(4);
		address=(String)vector.elementAt(5);
		occupation=(String)vector.elementAt(6);
		acctype=(String)vector.elementAt(7);
		contact=(String)vector.elementAt(8);
		amount=(String)vector.elementAt(9);
		accountnumber=(String)vector.elementAt(10);
		password=(String)vector.elementAt(11);
	    cpassword=(String)vector.elementAt(12);
		tablename=(String)vector.elementAt(0);
		insertdetails="sucess";
		this.insertdetails = insertdetails;
	}
	}









