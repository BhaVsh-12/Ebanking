<%@ page import="java.sql.*"%>
<% 
  int accounti=Integer.parseInt(request.getParameter("account"));
  int pini=Integer.parseInt(request.getParameter("pin"));
  String fnamei=request.getParameter("fname");
  String lnamei=request.getParameter("lname");
  String emaili=request.getParameter("email");
  long mobilei=Long.parseLong(request.getParameter("mobile"));
  String cityi=request.getParameter("city");
   String genderi=request.getParameter("gender");
    String datei=request.getParameter("date");
  int balancei=Integer.parseInt(request.getParameter("balance"));
   String typei=request.getParameter("type");
  
  
  try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");
		String sql="insert into bank values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setInt(1,accounti);
		pst.setInt(2,pini);
		pst.setString(3,fnamei);
		pst.setString(4,lnamei);
		pst.setString(5,emaili);
		pst.setLong(6,mobilei);
		pst.setString(7,cityi);
		pst.setString(8,genderi);
		pst.setString(9,datei);
		pst.setInt(10,balancei);
		pst.setString(11,typei);
		int i=pst.executeUpdate();
		if(i==1)
			response.sendRedirect("csuccess.jsp");
		else
			System.out.println("Record does not save");

	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>