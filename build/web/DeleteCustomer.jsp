<%@ page import="java.sql.*"%>
<%
String acc=request.getParameter("acc");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:injection","sa","sa");
Statement st=con.createStatement();
st.executeUpdate("delete from customerdetails where accountnumber='"+acc+"'");
response.sendRedirect("CustomerDetails.jsp");
%>
