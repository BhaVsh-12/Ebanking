<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*" %>


<%
    int accounti = Integer.parseInt(request.getParameter("account"));
    int account2i = Integer.parseInt(request.getParameter("account2"));
    int pini = Integer.parseInt(request.getParameter("pin"));
    int transferi = Integer.parseInt(request.getParameter("transfer"));
    int balance = 0, balance2 = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Driver is Loaded");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false", "root", "bhavesh");
        System.out.println("Connection is created");

        String sql = "SELECT account FROM bank WHERE account = ?";
        String sql2 = "SELECT pin FROM bank WHERE pin = ?";
        String sql3 = "SELECT balance FROM bank WHERE account = ?";
        String sql4 = "UPDATE bank SET balance = ? WHERE account = ?";
        String sql5 = "SELECT account FROM bank WHERE account = ?";
        String sql6 = "SELECT balance FROM bank WHERE account = ?";
        String sql7 = "UPDATE bank SET balance = ? WHERE account = ?";

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, accounti);
        ResultSet resultSet = statement.executeQuery();
        boolean userExists = resultSet.next();

        statement = con.prepareStatement(sql2);
        statement.setInt(1, pini);
        resultSet = statement.executeQuery();
        boolean passwordCorrect = resultSet.next();

        PreparedStatement statement2 = con.prepareStatement(sql5);
        statement2.setInt(1, account2i);
        ResultSet resultSet2 = statement2.executeQuery();
        boolean userExists2 = resultSet2.next();

        if (userExists && passwordCorrect && userExists2) {
            statement = con.prepareStatement(sql3);
            statement.setInt(1, accounti);
            resultSet = statement.executeQuery();

            statement2 = con.prepareStatement(sql6);
            statement2.setInt(1, accounti); // Update this line
            resultSet2 = statement2.executeQuery();

            if (resultSet.next() && resultSet2.next()) {
                balance = resultSet.getInt("balance");
                balance2 = resultSet2.getInt("balance");
            }

            if (balance > transferi) {
                balance = balance - transferi;
                balance2 = balance2 + transferi;

                statement = con.prepareStatement(sql4);
                statement.setInt(1, balance);
                statement.setInt(2, accounti);
                int i = statement.executeUpdate();

                statement2 = con.prepareStatement(sql7);
                statement2.setInt(1, balance2);
                statement2.setInt(2, account2i);
                int j = statement2.executeUpdate();

                if (i == 1 && j == 1) {
                    response.sendRedirect("tsuccess.jsp");
                } else {
                    System.out.println("Error in updating balances.");
                    response.sendRedirect("terror.jsp");
                }
            } else {
                System.out.println("Insufficient balance.");
                response.sendRedirect("terror.jsp");
            }
        } else if (!passwordCorrect && !userExists) {
            System.out.println("Both user and password are incorrect.");
            response.sendRedirect("terror.jsp");
        } else if (!passwordCorrect) {
            System.out.println("Incorrect password.");
            response.sendRedirect("terror.jsp");
        } else {
            System.out.println("Incorrect user.");
            response.sendRedirect("terror.jsp");
        }

        con.close();
    } catch (Exception e) {
       System.out.println("Error: " + e.getMessage());
       response.sendRedirect("werror.jsp");
    }
%>
