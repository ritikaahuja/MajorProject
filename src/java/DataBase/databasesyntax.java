package DataBase;

import java.sql.*;


public class databasesyntax {
    private Connection con=null;
    private Statement st=null;
    private ResultSet rs=null;
	private String checkquery;
	private String insertquery;
	private String billprocess;
	private String passwordchange;
	private String amountcreditquery;
	private String transaction;
	private String insertdetails;
	private String modifydetails;
	private String runquery;
	private String check;

	public databasesyntax() throws ClassNotFoundException, SQLException
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:injection","sa","sa");
		st=con.createStatement();

	}
	public String getCheckquery() {

		return checkquery;
	}
	public void setCheckquery(String tablename,String accountnumber,String password) {
		checkquery="select * from " +tablename+ " where acountnumber="+accountnumber+ " AND password="+password+" ";
		this.checkquery = checkquery;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) throws SQLException
	{
		System.out.println(" asaaasa   "  + check);

		rs=st.executeQuery(check);

		if(rs.next())
		{
			check="sucess";
		}
		else
		{
			check="failure";
		}

		this.check = check;

		System.out.println("hello");
}

	public String getInsertquery()
	{
		return insertquery;
	}

	public void setInsertquery(String insertquery)
	{
		try{
		insertquery="insert into customerdetails values()";
		this.insertquery = insertquery;
		}
		catch(Exception e)
		{

		}
	}
	public String getAmountcreditquery() {
		return amountcreditquery;
	}
	public void setAmountcreditquery(String tablename,String accountnumber,String amount) {
		amountcreditquery="update "+tablename+" set amount="+amount+" where accountnumber="+accountnumber+"";
		this.amountcreditquery = amountcreditquery;
	}
	public String getPasswordchange() {
		return passwordchange;
	}
	public void setPasswordchange(String tablename,String accountnumber,String password,String cpassword) {
		passwordchange="update "+tablename+" set password="+password+",cpassword="+cpassword+" where accountnumber="+accountnumber+"";
		this.passwordchange = passwordchange;
	}
	public String getRunquery() {
		System.out.println(runquery);
		return runquery;
	}
	public void setRunquery(String update) throws SQLException {
		try{
		st.executeUpdate(update);
		runquery="sucess";
		this.runquery ="sucess";
		}
		catch(Exception e)
		{
			e.printStackTrace();

		}
	}
	public String getTransaction() {
		return transaction;
	}
	public void setTransaction(String accountnumber,String amount,String reaccnumber,String tablename) {
		try{
		transaction="insert into "+tablename+" values("+amount+" , "+reaccnumber+")";

		this.transaction = transaction;
		}
		catch(Exception e)
		{

		}
	}
	public String getBillprocess() {
		return billprocess;
	}
	public void setBillprocess(String amount,String tablename) {
		billprocess="update "+tablename+" set amount="+amount+"" ;
		this.billprocess = billprocess;
	}
	public String getModifydetails() {
		return modifydetails;
	}
	public void setModifydetails(String name,String dob,String age,String gender,String address,String occupation,String actype,String contact,String acnumber,String amount,String password,String cpassword,String tablename) {
		modifydetails="update "+tablename+" set "+name+" , "+dob+" , "+age+" , "+gender+" , "+address+" , "+occupation+" , "+actype+" , "+contact+" , "+amount+" , "+password+" , "+cpassword+" where "+acnumber+"";
		this.modifydetails = modifydetails;
	}
	public String getInsertdetails() {
		return insertdetails;
	}
	public void setInsertdetails(String name,String dob,String age,String gender,String address,String occupation,String actype,String contact,String acnumber,String amount,String password,String cpassword,String tablename) {
		insertdetails="insert into "+tablename+" values("+name+" ,"+dob+" , "+age+" , "+gender+" , "+address+" , "+occupation+" , "+actype+" , "+contact+" , "+acnumber+" , "+amount+" , "+password+" , "+cpassword+" )";
		this.insertdetails = insertdetails;
	}



}
