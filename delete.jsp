<%@ page import="java.sql.*" %>
<%
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");
		String id=request.getParameter("id");
		String sql="delete from student where roll="+id;
		Statement st=con.createStatement();
		int i=st.executeUpdate(sql);
		out.println(i);
		if(i==1)
		{
			response.sendRedirect("first.jsp");
		}
		else
		{
			out.println("Record does not deleted");
		}
		con.close();

	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>