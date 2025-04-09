<%@ page import="java.sql.*" %>
<%
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String city=request.getParameter("city");

		String sql="update student set name='"+name+"',city='"+city+"' where roll="+id;
		PreparedStatement pst=con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i==1)
		{
			response.sendRedirect("first.jsp");
		}
		else
		{
			out.println("Record does not Update");
		}
		con.close();

	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>