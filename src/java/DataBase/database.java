package DataBase;


import java.sql.*;
import java.util.*;
public class database {
	private Statement st=null;
	private ResultSet rs=null;
	private Connection con=null;
	private String billupdate;
	private String amountcredit;
	private String tarninsert;
	private String customertarns;
	private String insert;
	private String tableName;
	private String update;
	private String modify;
	public String query;
	private String  newReg;


	public database()
	{
		try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:injection","sa","sa");
		st=con.createStatement();

		}

		catch(SQLException e)
		{
			e.printStackTrace();
		}


		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		}


	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		System.out.println("table name  " +tableName);
		this.tableName = tableName;
	}
	public String check(String accNumber,String password) throws SQLException
	 {
		try {
		String result="";

         int flag=0;
         query="select * from "+ tableName + " where accountnumber="+accNumber+" AND password='"+password+"'";
		 System.out.println("dsdsdsdsd  "+query);
		 rs=st.executeQuery(query);

		 while(rs.next())
		 {
			flag=1;
			System.out.println("wwwwwhile loop");

		 }
		if(flag==1)
		{

	    System.out.println("in if block");
	     result="sucess";

		}
		else
		{

		System.out.println("wwewewe");
		result="failure";
		}
		System.out.println( "data class  "  +result);


		return result;
		}
		catch(Exception e)
		{
			return "failure";
		}



	 }
	//usercheck
	public String usercheck(String accNumber,String password) throws SQLException
	 {
		try {
		String result="";

        int flag=0;
        query="select * from "+ tableName + " where accountnumber='"+accNumber+"' AND password='"+password+"'";
		 System.out.println("dsdsdsdsd  "+query);
		 rs=st.executeQuery(query);

		 while(rs.next())
		 {
			flag=1;
			System.out.println("wwwwwhile loop");

		 }
		if(flag==1)
		{

	    System.out.println("in if block");
	     result="sucess";

		}
		else
		{

		System.out.println("wwewewe");
		result="failure";
		}
		System.out.println( "data class  "  +result);


		return result;
		}
		catch(Exception e)
		{
			return "failure";
		}



	 }
	public String getInsert() {

		return insert;
	}
	public void setInsert(Vector v) throws SQLException {

		String values="";

		System.out.println(v.size()-1);
		 int i;
		for( i=0;i<v.size()-1;i++)
		{


		 values=values +  "'" + v.get(i)+ "',";
		 }

  if(i<=v.size()-1)
  {
	  values=values +  "'" + v.get(i)+ "'";
  }
		try{
		System.out.println(values);
		String query="insert into "+tableName+" values ("+values+")";
		System.out.println(query);
		st.executeUpdate(query);
		System.out.println("after exceuted");
		insert="sucess";
		this.insert = insert;
		}
		catch(Exception e)
		{
			insert="failure";
		}

	}


	 public String getUpdate() {



		return update;
	}


	public void setUpdate(String password,String cpassword,String accountnumber) throws SQLException {
		try{
		String query="update "+tableName+" set password="+password+",cpassword='"+cpassword+"' where accountnumber='"+accountnumber+"'" ;
		System.out.println(query);

		st.executeUpdate(query) ;
		System.out.println("after executed");
		update="sucess";
		this.update =update;
		}
		catch(Exception e)
		{
			update="failure";
		}

	}


	public String getBillupdate() {
		return billupdate;
	}


	public void setBillupdate(String accountnumber,String amount) throws SQLException {
		try{
		String query="update creditcard set amount="+amount+" where accountnumber="+accountnumber;
		System.out.println(query);
		st.executeUpdate(query);


		System.out.println("executed sucessfully the billupdate");

		this.billupdate ="sucess";
		}
		catch(Exception e)
		{
			billupdate="failure";
		}
	}


	public String getModify() {
		return modify;
	}


	public void setModify(Vector v) throws SQLException {
		try{
		String query="update customerdetails set name='"+v.get(0)+"',dob='"+v.get(1)+"',age='"+v.get(2)+"',gender='"+v.get(3)+"',address='"+v.get(4)+"',occupation='"+v.get(5)+"',acctype='"+v.get(6)+"',contactnumber='"+v.get(7)+"',accountnumber='"+v.get(8)+"',amount='"+v.get(9)+"',password='"+v.get(10)+"',cpassword='"+v.get(11)+"' where accountnumber='"+v.get(8)+"'";
		System.out.println("modify  query  " + query);
		st.executeUpdate(query);
		System.out.println("executed sucessfully");
		this.modify = "sucess";
		}
		catch(Exception e)
		{
			modify="failure";
		}
	}


	public String getAmountcredit() {
		return amountcredit;
	}


	public void setAmountcredit(String accountnumber,String amountcredit) throws SQLException {
		try{
		String query="update customerdetails set amount="+amountcredit+" where accountnumber='"+accountnumber+"' ";
		System.out.println("amountcredit  query  " + query);
		st.executeUpdate(query);
		System.out.println("amountcredit  query  iiiii" );
		this.amountcredit ="sucess";
		}
		catch(Exception e)
		{
			amountcredit="failure";
		}
	}


	public String getTarninsert() {
		return tarninsert;
	}


	public void setTarninsert(String tarninsert) throws SQLException {
		try{
		st.executeUpdate(tarninsert);

		this.tarninsert ="sucess";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}


	public String getCustomertarns() {
		return customertarns;
	}


	public void setCustomertarns(String customertarns) {
		this.customertarns = customertarns;
	}


	public String getNewReg() {
		return newReg;
	}


	public void setNewReg(Vector v,String acc) throws SQLException {

		rs=st.executeQuery("select * from customerdetails where accountnumber='"+acc+"'");
		if(rs.next())
		{
			newReg="exist";
		}

		else
		{
		String values="";

		System.out.println(v.size()-1);
		 int i;
		for( i=0;i<v.size()-1;i++)
		{


		 values=values +  "'" + v.get(i)+ "',";
		 }

  if(i<=v.size()-1)
  {
	  values=values +  "'" + v.get(i)+ "'";
  }

		System.out.println(values);
		String query="insert into "+tableName+" values ("+values+")";
		System.out.println(query);
		st.executeUpdate(query);
		System.out.println("after exceuted");
		newReg="sucess";
		this.newReg = newReg;






	}



	}
}
