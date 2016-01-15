package WASP;
import java.io.*;
import java.util.Vector;
public class PositiveTaint {
   public String Accountnumber="";
   public String Password="";
   public String accnumber="";
   public String password="";
   public String result="";

   public String typeofinjection;

	public void classcode()
	{
		try{
		     String filename="C:\\WASP\\";
			   FileInputStream fout=new FileInputStream(filename+"Metastring.class");

			   FileWriter fw=new FileWriter(filename+"foo.txt");
	           int s=0;
			   char a=122;

			   System.out.println(a);
			   //String data;
			   while((s=fout.read())!=-1)
				{
				  if((s>=27)&&(s<=122))
					{

	               fw.write(s);

					}
					else
					{
					fw.write(32);
					}

				}
				fw.flush();
				fw.close();


				FileReader fr=new FileReader(filename+"foo.txt");


				BufferedReader br=new BufferedReader(fr);
				String injection="";
				String data="";

				 while((injection=br.readLine())!=null)
				{
	                data=injection;
				}
			         System.out.println(data);
				    String ssplit[]=data.split(" ");
					 for(int i=0;i<=ssplit.length-1;i++)
				      {
						//System.out.println(ssplit[i]);
						 if(ssplit[i].contains("SourceFile"))
						  {
							 //System.out.println("IF LOOP  "+ssplit[i]);
							Accountnumber=ssplit[i+11];
							Password=ssplit[i+19];
						 System.out.println("Accountnumber   " +Accountnumber);
						 System.out.println("Password   " +Password);
					  }



				      }
					 if(Accountnumber.contains("--")||Password.contains("--"))
					 {
						 result="injected";
						 typeofinjection="Comment line";
						 System.out.println("sql injection found as in check--"+typeofinjection);
					 }
					 else if(Accountnumber.contains(";s")||Password.contains(";s")||Accountnumber.contains(";S")||Password.contains(";S"))
					 {
						 result="injected";
						 typeofinjection="Storedprocedure";
						 System.out.println("sql injection found as ;s" +typeofinjection);
					 }
					 else if(Accountnumber.contains(";d")||Password.contains(";d")||Accountnumber.contains(";D")||Password.contains(";D"))
					 {
						 result="injected";
						 typeofinjection="piggybacked";
						 System.out.println("sql injection found as ;d" +typeofinjection);
					 }
					 else if(Accountnumber.contains("'")||Password.contains("'"))
					 {
						 result="injected";
						 typeofinjection="Tautologies";
						 System.out.println("sql injection found as '" +typeofinjection);
					 }

					 else if(Accountnumber.contains(";UNION")||Password.contains("UNION"))

					 {
						 result="injected";
						 typeofinjection="union";
				        System.out.println("sql injection found as union"+typeofinjection);
					 }
					 else if(Accountnumber.contains("OR")||Password.contains("OR"))

				     {
						 result="injected";
						 typeofinjection="Tautologies";
						 System.out.println("sql injection found as OO"+typeofinjection);

					 }
					 else if(Accountnumber.contains("or")||Password.contains("or"))

					 {
						 result="injected";
						 typeofinjection="Tautologies";
				        System.out.println("sql injection found as oo"+typeofinjection);
					 }

					 else if( password.contains(";D")||password.contains(";d"))
		        	 {
		        	 result="injected";
					 typeofinjection="Piggybacked queries";
					 System.out.println("injection:d");
		        	 }
					 else if( Accountnumber.contains("(")||password.contains("("))
		        	 {
		        	 result="injected";
					 typeofinjection="Malformedqueries";
		        	 }
					 else
					 {
						 System.out.println("else part ooooooooo");
						 accnumber=Accountnumber;
						 password=Password;
						 result="notinjected";
						 typeofinjection="Tautologies";
						 System.out.println("else loop acc == " +accnumber);
						 System.out.println(" else loop pass == "+password);
					 }
				fr.close();

			}
			catch(Exception e)
			{
				System.out.println("Exception in  " +e);

				e.printStackTrace();
			}



		}


	public void classcodeuserdetail()
	{
		String password="";
		try{
		     String filename="C:\\WASP\\";
			   FileInputStream fout=new FileInputStream(filename+"Metastringpass.class");
			   FileWriter fw=new FileWriter(filename+"foo.txt");
	           int s=0;
			   char a=122;

			   System.out.println(a);

			   while((s=fout.read())!=-1)
				{
				  if((s>=27)&&(s<=122))
					{

	               fw.write(s);

					}
					else
					{
					fw.write(32);
					}

				}
				fw.flush();
				fw.close();


				FileReader fr=new FileReader(filename+"foo.txt");


				BufferedReader br=new BufferedReader(fr);
				String injection="";
				String data="";
				 while((injection=br.readLine())!=null)
					{
		                data=injection;
					}
				         System.out.println("hhdfhdsdfhj   "+data);
				         String split[]=data.split(" ");
				         for(int i=0;i<=split.length-1;i++)
				         {

				        	 System.out.println(split[i]);
				        	 if(split[i].contains("Metastringpass.java"))
				        	 {
				        		 password=split[i+8];
				        		System.out.println("passworddd   "+password);
				        	 }
				         }
				         if(password.contains("--"))
				        		 {
				        	 result="injected";
							 typeofinjection="Comment line";
							 System.out.println("--- in ");
				        		 }
				         else if( password.contains(";s")||password.contains(";S"))
				        	 {
				        	 result="injected";
							 typeofinjection="Tautologies";
				        	 }
				         else if( password.contains(";D")||password.contains(";d"))
			        	 {
			        	 result="injected";
						 typeofinjection="Piggybacked";
			        	 }
				         else if( password.contains(";t")||password.contains(";T"))
			        	 {
			        	 result="injected";
						 typeofinjection="Piggybacked";
			        	 }
				         else if( password.contains("(")||password.contains(")"))
			        	 {
			        	 result="injected";
						 typeofinjection="Malformed";
			        	 }
				         else if( password.contains("UNION")||password.contains("union"))
			        	 {
				        	 result="injected";
							 typeofinjection="Union";;
			        	 }
				         else if(password.contains("O"))
				        	 {
				        	 result="injected";
							 typeofinjection="Tautologies";
				        	 }
				         else if(password.contains("o"))
				         {
				        	 result="injected";
							 typeofinjection="Tautologies";
				         }

				         else
				         {
				        	 result="notinjected";

				         }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}


	public void classcodetrans()
	{
		String transamount="";
		String amount="";
		try{
		     String filename="C:\\WASP\\";
			   FileInputStream fout=new FileInputStream(filename+"Metastringtrans.class");
			   FileWriter fw=new FileWriter(filename+"foo.txt");
	           int s=0;
			   char a=122;

			   System.out.println(a);

			   while((s=fout.read())!=-1)
				{
				  if((s>=27)&&(s<=122))
					{

	               fw.write(s);

					}
					else
					{
					fw.write(32);
					}

				}
				fw.flush();
				fw.close();


				FileReader fr=new FileReader(filename+"foo.txt");


				BufferedReader br=new BufferedReader(fr);
				String injection="";
				String data="";
				 while((injection=br.readLine())!=null)
					{
		                data=injection;
					}
				         System.out.println("hhdfhdsdfhj   "+data);
				         String split[]=data.split(" ");
				         for(int i=0;i<=split.length-1;i++)
				         {


		                System.out.println(split[i]);
		                 if(split[i].contains("Metastringtrans.java"))
		                 {
		                	 transamount=split[i+8];
		                	 amount=split[i+16];
		                	 System.out.println(transamount);
		                	 System.out.println(amount);
		                 }

		               if(transamount.contains("--"))
		               {
		                result="injected";
		                typeofinjection="Comment line";
		               }
		               else if(transamount.contains(";"))
		               {
		            	   result="injected";
			                typeofinjection="Piggybacked queries";

		               }
		               else if(transamount.contains("o"))
		               {
		            	   result="injected";
			                typeofinjection="Tautologies";
		               }
		               else if(transamount.contains("O"))
		               {
		            	    result="injected";
			                typeofinjection="Tautologies";
		               }
		               else if(transamount.contains(";s")||transamount.contains(";S"))
		               {
		            	    result="injected";
			                typeofinjection="StoredProcedure";
		               }
		               else if(transamount.contains(";d")||transamount.contains(";d"))
		               {
		            	    result="injected";
			                typeofinjection="Piggybacked queries";
		               }
		               else if(transamount.contains(";t")||transamount.contains(";T"))
		               {
		            	    result="injected";
			                typeofinjection="Piggybacked queries";
		               }
		               else if(transamount.contains("union")||transamount.contains("UNION"))
		               {
		            	    result="injected";
			                typeofinjection="Union";
		               }
		               else if(transamount.contains("(")||transamount.contains(";("))
		               {
		            	    result="injected";
			                typeofinjection="Malformed Queries";
		               }
		               else if(amount.contains("--"))
		               {
		            	   result="injected";
		            	   typeofinjection="Comment line";
		               }
		               else if(amount.contains(";"))
		               {
		            	   result="injected";
		            	   typeofinjection="Piggybacked queries";
		               }
		               else if(amount.contains("o"))
		               {
		            	   result="injected";
		            	   typeofinjection="Tautologies";
		               }
		               else if(amount.contains("O"))
		               {
		            	   result="injected";
		            	   typeofinjection="Tautologies";
		               }
		               else if(amount.contains(";s")||amount.contains(";S"))
		               {
		            	   result="injected";
		            	   typeofinjection="Piggybacked queries";
		               }
		               else if(amount.contains(";d")||amount.contains(";D"))
		               {
		            	   result="injected";
		            	   typeofinjection="Piggybacked queries";
		               }
		               else if(amount.contains("union")||amount.contains("UNION"))
		               {
		            	   result="injected";
		            	   typeofinjection="Unionqueries";
		               }
		               else if(amount.contains("(")||amount.contains(")"))
		               {
		            	   result="injected";
		            	   typeofinjection="Malformed Queries";
		               }
		               else
		               {
		            	   result="notinjected";

		               }
				         }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void Regcheck()
	{
		Vector v=new Vector();
		try{
		     String filename="C:\\WASP\\";
			   FileInputStream fout=new FileInputStream(filename+"Metastringreg.class");
			   FileWriter fw=new FileWriter(filename+"foo.txt");
	           int s=0;
			   char a=122;

			   System.out.println(a);

			   while((s=fout.read())!=-1)
				{
				  if((s>=27)&&(s<=122))
					{

	               fw.write(s);

					}
					else
					{
					fw.write(32);
					}

				}
				fw.flush();
				fw.close();


				FileReader fr=new FileReader(filename+"foo.txt");


				BufferedReader br=new BufferedReader(fr);
				String injection="";
				String data="";
				 while((injection=br.readLine())!=null)
					{
		                data=injection;
					}
				         System.out.println("hhdfhdsdfhj   "+data);
				         String split[]=data.split(" ");
				         for(int i=0;split.length-1>=i;i++)
				         {
				        	if(split[i].contains("Metastringreg.java"))
				        	{
				        	String	name=split[i+6];
				        	String dob=split[i+12];
				        	String age=split[i+18];
				        	String gender=split[i+24];
				        	String address=split[i+31];
				        	String  occ=split[i+37];
				            String acctype=split[i+43];
				        	String contact=split[i+49];
				        	String accnumber=split[i+55];
				        	String amount=split[i+61];
				        	String pass=split[i+67];

				        	v.add(name);
				        	v.add(dob);
				        	v.add(age);
				        	v.add(gender);
				        	v.add(address);
				        	v.add(occ);
				        	v.add(acctype);
				        	v.add(contact);
				        	v.add(accnumber);
				        	v.add(amount);
				        	v.add(pass);

				        		System.out.println(v);


				        	}
				        	for(int j=0;j<=v.size()-1;j++)
				        	{
				        		 String values=(String)v.get(j);
				        		if(values.contains("O")||values.contains("o")||values.contains(";")||values.contains("--"))
				        		{
				        			result="injected";
				        			typeofinjection="";
				        			System.out.println("injecteddddd"+v.get(j));
				        		break;
				        		}
				        		else
				        		{
				        			System.out.println("not injectedd");
				        			result="notinjected";
				        			typeofinjection="";
				        		}

				        	}
				         }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}


	public void classcodebill()
	{
		 String payamount="";
		 try{
		     String filename="C:\\WASP\\";
			   FileInputStream fout=new FileInputStream(filename+"Metastringbill.class");
			   FileWriter fw=new FileWriter(filename+"foo.txt");
	           int s=0;
			   char a=122;

			   System.out.println(a);

			   while((s=fout.read())!=-1)
				{
				  if((s>=27)&&(s<=122))
					{

	               fw.write(s);

					}
					else
					{
					fw.write(32);
					}

				}
				fw.flush();
				fw.close();


				FileReader fr=new FileReader(filename+"foo.txt");


				BufferedReader br=new BufferedReader(fr);
				String injection="";
				String data="";

				 while((injection=br.readLine())!=null)
				{
	                data=injection;
				}
			         System.out.println(data);
			         String split[]=data.split(" ");
			         for(int i=0;i<=split.length-1;i++)
			         {
			        	 System.out.println(split[i]);
			        	 if(split[i].contains("Metastringbill.java"))
			        	 {
			        		 payamount=split[i+8];
			        		 System.out.println("amoubnt  " +payamount);

			        	 }

			         }

               if(payamount.contains("--")||payamount.contains(";")||payamount.contains("O")||payamount.contains("o"))
               {
            	   result="injected";
            	   typeofinjection="Comment line";
               }
               else
               {
            	   result="notinjected";

               }


		 }

		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
  public void changeclass(String orignal,String modify) throws IOException
  {




	  String file="C:\\WASP\\";


	   FileReader fr=new FileReader(file+orignal);
	    System.out.println("file reader");
	    BufferedReader br=new BufferedReader(fr);
	    System.out.println("buffer reader");

	    String data="";
	    String s;
	    while((s=br.readLine())!=null)
	    {

	    	data=data+"\n"+s;

	    }
	     System.out.println("classs "+data);
	     br.close();



	     FileWriter fw=new FileWriter(file+modify+".java");
	     fw.write(data);
	     fw.flush();
	     fw.close();
	    File f=new File(file+modify+".class");
	   if( f.isFile())
	   {
	    	//f.delete();

	    }
	   File f1=new File("foo.txt");

	   if(f1.isFile())
	   {
		   f1.delete();
	   }


  }

	}


