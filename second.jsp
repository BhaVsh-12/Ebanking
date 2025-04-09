<%@ page import="java.sql.*"%>

<%

	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String city=request.getParameter("city");

	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");
		String sql="insert into student values(?,?,?)";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setInt(1,Integer.parseInt(id));
		pst.setString(2,name);
		pst.setString(3,city);
		int i=pst.executeUpdate();
		if(i==1)
			response.sendRedirect("first.jsp");
		else
			out.println("Record does not save");

	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>