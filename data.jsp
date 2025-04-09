<%@ page import="java.sql.*"%>
<%
   String use=request.getParameter("user");
   String mail =request.getParameter("email");
   String pas =request.getParameter("pass");
   System.out.println(use);
  try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");
		String sql="insert into sign values(?,?,?)";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1,use);
		pst.setString(2,pas);
		pst.setString(3,mail);
		int i=pst.executeUpdate();
		if(i==1)
			response.sendRedirect("ssuccess.jsp");
		else
			System.out.println("Record does not save");
		response.sendRedirect("serror.jsp");

	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>