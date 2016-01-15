/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import java.io.*;

import java.sql.SQLException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.yourcompany.struts.form.UserLoginForm;

/**
 * MyEclipse Struts
 * Creation date: 07-29-2008
 *
 * XDoclet definition:
 * @struts.action path="/userLogin" name="userLoginForm" attribute="UserLoginForm" input="/UserLogin.jsp" scope="request" validate="true"
 * @struts.action-forward name="failure" path="/UserLogin.jsp"
 * @struts.action-forward name="sucess" path="/CustomerHome.jsp"
 */
public class UserLoginAction extends Action {
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
	 * @throws FileNotFoundException
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws SQLException,Exception {
		    UserLoginForm UserLoginForm = (UserLoginForm) form;// TODO Auto-generated method stub
		String process=request.getParameter("process");
		System.out.println("now your in " +process);
		HttpSession session=request.getSession();
	   session.setAttribute("process",process);

	   String accNumber=UserLoginForm.getAccnumber();
	   String password=UserLoginForm.getPassword();
	   Vector vector=new Vector();
	   vector.add(accNumber);
	   vector.add(password);
	   Process compile;
	   String type;

	   String result="failure";
	   String status="failure";
	    if(process==null)
	    {
	    	session.setAttribute("process","normal");
            DataBase.database data=new DataBase.database();

			System.out.println("normal   "  +(String)session.getAttribute("process"));
			data.setTableName("customerdetails");
			result=data.usercheck(accNumber, password);
			session.setAttribute("accountnumber",accNumber);
			System.out.println(session.getAttribute("accountnumber"));
    		System.out.println("result befor to redirect  "  +result);
	    }

	    else if(process.equals("character"))
	    {
	    	session.setAttribute("process","character");
	    	System.out.println("dassaasdjsd8asduiasdhasohsdhddhasoashd");
	    	WASP.CharacterLevel character=new WASP.CharacterLevel();
	    	System.out.println("if blockkkk");
			character.calculate(vector);
			status=character.injection;
		    System.out.println("result value "   +status);
		    type=character.typeofinjection;
		    //session.setAttribute("typeofinje", type);
		    request.setAttribute("typeofinje", type);
			 if(status.equals("sucess"))
		    {
		    	DataBase.database data=new DataBase.database();
		    	// data.check();
		    	data.setTableName("customerdetails");

		    	System.out.println("22222222222222222222");
		    	 result=data.usercheck(accNumber, password);
		    	 session.setAttribute("accountnumber",accNumber);
		    		System.out.println("result befor to redirect  "  +result);
		    }

	    }
	    else if(process.equals("syntax"))
	    {
	    	session.setAttribute("process","syntax");
	    	 session.setAttribute("accountnumber",accNumber);
	    	 DataBase.databasesyntax datasyn=new DataBase.databasesyntax();
			  datasyn.setCheckquery("customerdetails", accNumber, password);
			  String query=datasyn.getCheckquery();
			  System.out.println("  sdsasfsdfsdfdfdf " +query);
			 WASP.SyntaxAware syntax=new WASP.SyntaxAware();
			 syntax.setsyntaxselect(query);
	         String tablename=syntax.getTablename();
	         type=syntax.typeofinjection;
	         request.setAttribute("typeofinje", type);
	        String accountnumber=syntax.getAccountnumber();
	        System.out.println("accountnumber   " +accountnumber);
	        int flength=accountnumber.length();
	        int hlength=accountnumber.indexOf("=");
	        accountnumber=accountnumber.substring(hlength+1, flength);
	        System.out.println("accountnumber   " +accountnumber);
	        String pass=syntax.getPassword();
	         flength=pass.length();
	        hlength=pass.indexOf("=");
	        pass=pass.substring(hlength+1, flength);
	        System.out.println("password   " +pass);
	        query="select * from "+tablename+ " where accountnumber='"+accountnumber+"' AND password='"+pass+"'";
	       System.out.println(query);
	       datasyn.setCheck(query);
	        result=datasyn.getCheck();
	    }
	    else if(process.equals("positive"))
	    {
	    	session.setAttribute("process","positive");
	    	System.out.println("dsdsdssdsdsdsdsdssdssd");
	    	String file="C:\\WASP\\";


	   FileReader fr=new FileReader(file+"Metastring.java");
	    System.out.println("file reader");
	    BufferedReader br=new BufferedReader(fr);
	    System.out.println("buffer reader");

	    String data="";
	    String s;
	    while((s=br.readLine())!=null)
	    {
	    	s=s.replace("xxx",accNumber);
	    	s=s.replace("zzz", password);
	    	data=data+"\n"+s;
	    	//System.out.println("correct classs   " +s);
	    }
	     System.out.println("classs "+data);
	     br.close();
	     FileWriter fw=new FileWriter(file+"Metastring.java");
	     fw.write(data);
	     fw.flush();
	     fw.close();

	   String JAVA_HOME = System.getProperty("java.home");
	 	String java_dir	= JAVA_HOME.substring(0,JAVA_HOME.lastIndexOf(File.separator));
	 	String compileCommand = java_dir+File.separator+"bin"+File.separator+"javac.exe ";
	 	String path="-d "+" "+file;

	 	//String fullpath="C:/Program Files/Apache Software Foundation/Tomcat 5.0/bin/Metastring.java";
	 	//System.out.println(fullpath);
	 	String fullpath=file+"Metastring.java";
	 	System.out.println(compileCommand +" "+path+"\\"+" "+fullpath);

	 	compile = Runtime.getRuntime().exec(compileCommand +" "+path+"\\"+" "+fullpath);
	    System.out.println("comple class created");
	    Thread.sleep(5000);
	    WASP.PositiveTaint positive=new WASP.PositiveTaint();
	      positive.classcode();
	      positive.changeclass("sample.txt","Metastring");
	      String Accountnumber=positive.accnumber;
	      String pass=positive.password;
	      //---
	      WASP.CharacterLevel character=new WASP.CharacterLevel();
	    	System.out.println("if blockkkk");
			character.calculate(vector);
			status=character.injection;
		    System.out.println("result value "   +status);
		    type=character.typeofinjection;
		    //session.setAttribute("typeofinje", type);
		    request.setAttribute("typeofinje", type);
			 if(status.equals("sucess"))
		    {
		    	DataBase.database data1=new DataBase.database();
		    	// data.check();
		    	data1.setTableName("customerdetails");

		    	System.out.println("22222222222222222222");
		    	 result=data1.usercheck(accNumber, password);
		    	 session.setAttribute("accountnumber",accNumber);
		    		System.out.println("result befor to redirect  "  +result);
		    }
	      //--
	      /*if(positive.result.equals("notinjected"))
	      {
	      DataBase.database database=new DataBase.database();
	      database.setTableName("customerdetails");
	      result=database.usercheck(Accountnumber, pass);
	      session.setAttribute("accountnumber",accNumber);
	      }
	      else if(positive.result.equals("injected"))
	      {
	    	result="failure" ;
	      }*/

	    }

		return mapping.findForward(result);
	}
}