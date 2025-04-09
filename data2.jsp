<%@ page import="java.sql.*"%>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");

        String sql = "SELECT user FROM sign WHERE user = ?";
        String sql2 = "SELECT password FROM sign WHERE password = ?";

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, user);
        ResultSet resultSet = statement.executeQuery();
        boolean userExists = resultSet.next();

        statement = con.prepareStatement(sql2);
        statement.setString(1, pass);
        resultSet = statement.executeQuery();
        boolean passwordCorrect = resultSet.next();

        if (userExists && passwordCorrect) {
            response.sendRedirect("lsuccess.jsp");
        }else if (!userExists) {

            System.out.println("Incorrect user");
            response.sendRedirect("lerror.jsp");

        }
        else if (!passwordCorrect) {
           System.out.println("Incorrect password");
             response.sendRedirect("lerror.jsp");
        }   else {
           System.out.println("Both user and password are incorrect");
             response.sendRedirect("lerror.jsp");
        }

        con.close();
    } catch (Exception e) {
       System.out.println("Error ="+e);
    }
%>

