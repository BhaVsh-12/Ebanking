<%@ page import="java.sql.*"%>
<%
    int accounti=Integer.parseInt(request.getParameter("account"));
  int pini=Integer.parseInt(request.getParameter("pin"));
  int depositei =Integer.parseInt(request.getParameter("deposite"));
  int balance=0;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver is Loaded");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false","root","bhavesh");
		System.out.println("Connection is created");

        String sql = "SELECT account FROM bank WHERE account = ?";
        String sql2 = "SELECT pin FROM bank WHERE pin = ?";

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, accounti);
        ResultSet resultSet = statement.executeQuery();
        boolean userExists = resultSet.next();

        statement = con.prepareStatement(sql2);
        statement.setInt(1, pini);
        resultSet = statement.executeQuery();
        boolean passwordCorrect = resultSet.next();

        if (userExists && passwordCorrect) {
           String sql3 = "SELECT balance FROM bank WHERE account = ?";
        statement = con.prepareStatement(sql3);
        statement.setInt(1, accounti);
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            balance= resultSet.getInt("balance"); 
        }
        if(depositei>0)
        {
           balance=balance+depositei;
           String sql4 = "UPDATE bank SET balance = '" + balance + "' WHERE account = '" + accounti + "'";
          PreparedStatement pst = con.prepareStatement(sql4);

         int i = pst.executeUpdate();
        if (i == 1)
            response.sendRedirect("dsuccess.jsp");
        else
           System.out.println("Error In deposite Amount");
           response.sendRedirect("derror.jsp");
        }
        else{
            System.out.println("Insufficient Balance");
            response.sendRedirect("derror.jsp");
        }
        }
         else if (!passwordCorrect) {
            System.out.println("Incorrect password");
            response.sendRedirect("derror.jsp");
        } else if (!userExists && !passwordCorrect){
            System.out.println("Both user and password are incorrect");
            response.sendRedirect("derror.jsp");
        }else  {
            System.out.println("Incorrect user");
          response.sendRedirect("derror.jsp");
        } 

        con.close();
    } catch (Exception e) {
       System.out.println("Error ="+e);
    }
%>
