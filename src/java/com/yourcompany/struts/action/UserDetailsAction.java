/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.yourcompany.struts.form.UserDetailsForm;

/**
 * MyEclipse Struts
 * Creation date: 07-29-2008
 *
 * XDoclet definition:
 * @struts.action path="/UserDetails" name="userDetailsForm" attribute="UserDetailsForm" input="/UserDetails.jsp" scope="request" validate="true"
 */
public class UserDetailsAction extends Action {
	/*
	 * Generated Methods
	 */

	/**
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 * @throws IOException
	 * @throws InterruptedException
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException, InterruptedException {
		    UserDetailsForm UserDetailsForm = (UserDetailsForm) form;// TODO Auto-generated method stub
		    String password=UserDetailsForm.getPassword();
		    String cpassword=UserDetailsForm.getCpassword();
		    HttpSession session=request.getSession();
		    String tablename="";
		    String type;
		    Process compile;
		    String process=(String)session.getAttribute("process");
		    String accountnumber=(String)session.getAttribute("accountnumber");
		    DataBase.database data=new DataBase.database();
		    Vector vector=new Vector();
		    vector.add(password);
		    vector.add(cpassword);
		    String status="failure";
		    String result="failure";
		    WASP.CharacterLevel character=new WASP.CharacterLevel();
		    if(process.equals("normal"))
		    {

            data.setTableName("customerdetails");
            data.setUpdate(password,cpassword,accountnumber);

		    result=data.getUpdate();
		    System.out.println(result);
		    }
		    else if(process.equals("character"))
		    {
		    	System.out.println("if blockkkk");
				character.calculate(vector);
				status=character.injection;
			    System.out.println("result value  if" +status);
			    type=character.typeofinjection;
			   // session.setAttribute("typeofinje", type);
			    request.setAttribute("typeofinje", type);
				 if(status.equals("sucess"))
			    {
					    data.setTableName("customerdetails");
			            data.setUpdate(password,cpassword,accountnumber);

					     result=data.getUpdate();
					    System.out.println(result);
			    }
				 else
				 {
					 result="failure";
				 }
		    }
		    else if(process.equals("positive"))
		    {


		    	String file="C:\\WASP\\";


			    FileReader fr=new FileReader(file+"Metastringpass.java");
			    System.out.println("file reader");
			    BufferedReader br=new BufferedReader(fr);
			    System.out.println("buffer reader");

			    String data1="";
			    String s;
			    while((s=br.readLine())!=null)
			    {

			    	s=s.replace("000", password);
			    	s=s.replace("111",cpassword);
			    	data1=data1+"\n"+s;
			    	//System.out.println("correct classs   " +s);
			    }
			     System.out.println("classs "+data1);
			     br.close();
			     FileWriter fw=new FileWriter(file+"Metastringpass.java");
			     fw.write(data1);
			     fw.flush();
			     fw.close();

			    String JAVA_HOME = System.getProperty("java.home");
			 	String java_dir	= JAVA_HOME.substring(0,JAVA_HOME.lastIndexOf(File.separator));
			 	String compileCommand = java_dir+File.separator+"bin"+File.separator+"javac.exe ";
			 	String path="-d "+" "+file;

			 	String fullpath=file+"Metastringpass.java";
			 	System.out.println(compileCommand +" "+path+"\\"+" "+fullpath);

			 	compile = Runtime.getRuntime().exec(compileCommand +" "+path+"\\"+" "+fullpath);
			    System.out.println("comple class created");
			   Thread.sleep(5000);
			    WASP.PositiveTaint positive=new WASP.PositiveTaint();
			      positive.classcodeuserdetail();
			      positive.changeclass("samplepass.txt","Metastringpass");
			      if(positive.result.equals("notinjected"))
			      {
			    	    data.setTableName("customerdetails");
			            data.setUpdate(password,cpassword,accountnumber);

					     result=data.getUpdate();
					    System.out.println(result);
			      }
			      else if(positive.result.equals("injected"))
			      {
			    	result="failure";
			      }

		    }
		    else if(process.equals("syntax"))
		    {

			    DataBase.databasesyntax datasyntax=new DataBase.databasesyntax();
			    datasyntax.setPasswordchange("customerdetails",accountnumber,password,password);
			    String query=datasyntax.getPasswordchange();
			    System.out.println(query);
		    WASP.SyntaxAware syntax=new WASP.SyntaxAware();
		    syntax.setPasswordchage(query);
		    tablename=syntax.getTablename();
		    int flength=tablename.length();
	        int hlength=tablename.indexOf("=");
	        tablename=tablename.substring(hlength+1, flength);
	        System.out.println("finalss  tablename"+tablename );
		    accountnumber=syntax.getAccountnumber();
		     flength=accountnumber.length();
	       hlength=accountnumber.indexOf("=");
	        accountnumber=accountnumber.substring(hlength+1, flength);
	        System.out.println("finalss "+accountnumber );
		     password=syntax.getPassword();
		     flength=password.length();
		         hlength=password.indexOf("=");
		        password=password.substring(hlength+1, flength);
		        System.out.println("final  pass  " +password);
		    cpassword=syntax.getCpassword();
		     flength=cpassword.length();
	         hlength=cpassword.indexOf("=");
	         cpassword=cpassword.substring(hlength+1, flength);
	         System.out.println("final cpass " +cpassword);
	         String dquery="update "+tablename+" set password='"+password+"',cpassword='"+cpassword+"' where accountnumber='"+accountnumber+"'";
		    System.out.println("ggfggf fgfg  "+dquery);
	         datasyntax.setRunquery(dquery);
	         result=datasyntax.getRunquery();
	         System.out.println("hjhjhb  "+result);
		    }


		return mapping.findForward(result);
	}
}