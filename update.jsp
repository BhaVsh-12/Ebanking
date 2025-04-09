<html>
<head>
	<title>My Web Page</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String city=request.getParameter("city");
%>
<form action="edit.jsp" method="post">
	<table align="center" width="100px" border="1px">
		<caption>Student Details</caption>
		<tr>
		<td>Roll No</td>
		<td><input type="text" name="id" value="<%=id%>" required></td>
</tr>
	<tr>
		<td>Name</td>
		<td><input type="text" name="name" value="<%=name%>" required></td>
	</tr>
	
	<tr>
		<td>City</td>
		<td><input type="text" name="city" value="<%=city%>" required></td>
	</tr>
	<tr>
		<td><input type="submit" name="submit" value="Submit"></td>
		<td><input type="reset" name="reset" value="Reset"></td>
</tr>
	</table>
</form>
</body>
</html>