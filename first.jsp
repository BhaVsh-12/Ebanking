<%@ page import="java.sql.*"%>
<html>
<head>
	<title>My Web Page</title>
</head>
<body>
<form action="second.jsp" method="post">

<table align="center" border="1" width="300" cellpadding="10" cellspacing="10">
	<caption><br><br>Student Details<br><br></caption>
<tr>
	<td>Roll</td>
	<td><input type="text" name="id" required></td>
</tr>
<tr>
	<td>Name</td>
	<td><input type="text" name="name" required></td>
</tr>
<tr>
	<td>City</td>
	<td><input type="text" name="city" required></td>
</tr>
<tr>
	<td><input type="submit" value="Submit"></td>
	<td><input type="reset" value="Reset"></td>
</tr>
</table>
	
</form>
<table align="center" border="1" width="300" cellpadding="10">
	<caption><br><br><br><br><br><br>Student Information <br><br></caption>
<tr align="center">
	<td>Roll</td>
	<td>SName</td>
	<td>City</td>
	<td>Edit</td>
	<td>Delete</td>
</tr>
<%
	int id ;
	String name ;
	String city ;
	try
	
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");
		Statement st=con.createStatement();
		String sql="select * from student";
		ResultSet rs=st.executeQuery(sql);
		while(rs.next())
		{
			id=rs.getInt(1);
			name=rs.getString(2);
			city=rs.getString(3);
%>

<tr align="center">
	<td><% out.println(id);     %></td>
	<td><% out.println(name);  %></td>
	<td><% out.println(city);  %></td>
	<td><% out.println("<a href=update.jsp?id="+id+"&name="+name+"&city="+city+">Edit</a>");  %></td>
	<td> <% out.println("<a href=delete.jsp?id="+id+">Delete</a>");  %></td>
</tr>
<%
		}
		con.close();
	}
	catch(Exception e1)
	{
		System.out.println("Error="+e1);
	}
%>
</table>
</body>
</html>