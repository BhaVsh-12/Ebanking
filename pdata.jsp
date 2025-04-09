<%@ page import="java.sql.*" %>
<%

int accounti=Integer.parseInt(request.getParameter("account"));
  int pini=Integer.parseInt(request.getParameter("pin"));
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    System.out.println("Driver is Loaded");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false", "root", "bhavesh");
    System.out.println("Connection is created");
    String sql = "UPDATE bank SET pin = '" + pini + "' WHERE account = '" + accounti + "'";
    PreparedStatement pst = con.prepareStatement(sql);

    int i = pst.executeUpdate();
    if (i == 1)
        response.sendRedirect("psuccess.jsp");
    else
        System.out.println("Password was not reset");
        response.sendRedirect("cerror.jsp");

    con.close();
} catch (Exception e) {
    System.out.println("Error: " + e);
}
%>
