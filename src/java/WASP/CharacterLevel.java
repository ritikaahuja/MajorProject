package WASP;
import java.util.*;

public class CharacterLevel {
public String injection="sucess";
public String typeofinjection;


	public void calculate(Vector vector)
	{
		try{

		for(int i=0;i<=vector.size()-1;i++)
		{
			//System.out.println(vector.get(i));
		Object values[]=vector.toArray();
		//System.out.println("vlaues in vector " +values[i]);
		for(int j=0;j<=values.length-1;j++)
		{
			String s1=new String((String) values[j]);
			//System.out.println("values in j for loop "+s1);
			 for(int k=0;k<=s1.length()-1;k++)
			 {
				// System.out.println("length of string " +s1.length());
			   char c[]=s1.toCharArray();
			   // System.out.println("vlaues in character array"+c[k]);
			      if(c[k]=='-')
       			  {
			    	  char nextK=c[k+1];
					 System.out.println("if loop of -");
					 if(nextK=='-')
					 {
						 typeofinjection="comment line";
						 System.out.println("this is injection  of -- " +c[k+1]);
						 injection="failure";
						 System.out.println("injection founf in -- " + injection);

					 break;
					 }

       			}
			      else if(c[k]=='O'||c[k]=='o')
			      {

			    	System.out.println("else iff loop fo or");
			      if(c[k+1]=='R'||c[k+1]=='r')
			      {
			    	  System.out.println("this injection of OR " +c[k]);
			    	  injection="failure";
			    	  System.out.println("injection found in OR block "+injection);
			    	  typeofinjection="tautologies";
			      break;
			      }
			      }

			      else if(c[k]==';')
			      {
			    	  System.out.println("in thee :::;;;");
			    	  if(c[k+1]=='s'||c[k+1]=='S')
			    	  {
			    	  System.out.println("else if loop for ;");
			    	  System.out.println("this is injection or ; " +c[k]);
			    	  injection="failure";
			    	  typeofinjection="StoredProcedure";
			    	  System.out.println("in Stroed");

			          }
			      else if(c[k+1]=='d'||c[k+1]=='D')
			      {
			    	  System.out.println("inside in the piggy");
			    	  injection="failure";
			    	  typeofinjection="Piggybacked queries";

			    	  break;
			     }
			      else if(c[k+1]=='t'||c[k+1]=='T')
			      {
			    	  System.out.println("inside in the piggy");
			    	  injection="failure";
			    	  typeofinjection="Piggybacked queries";

			    	  break;
			     }


			     }

			      else if(c[k]=='u'||c[k]=='U')
			      {
			    	  if(c[k+1]=='n'||c[k]=='N')
			    	  {
			    		  injection="failure";
			    		  typeofinjection="union queries";
			    		  	System.out.println("union queries");
			    		  break;
			    	  }
			      }
			      else if(c[k]=='(')
			      {
			    	  injection="failure";
		    		  typeofinjection="malformed queries";
		    		  break;
			      }

			 }
		}

		}


}

catch(Exception e)
{
injection ="failure";
}
}
}



