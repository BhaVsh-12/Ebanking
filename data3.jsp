<%@ page import="java.sql.*" %>
<%

String use = request.getParameter("user");
String pas = request.getParameter("pass");
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    System.out.println("Driver is Loaded");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false", "root", "bhavesh");
    System.out.println("Connection is created");
    String sql = "UPDATE sign SET password = '" + pas + "' WHERE user = '" + use + "'";
    PreparedStatement pst = con.prepareStatement(sql);

    int i = pst.executeUpdate();
    if (i == 1)
        response.sendRedirect("fsuccess.jsp");
    else
        System.out.println("Incorrect User");
    response.sendRedirect("ferror.jsp");

    con.close();
} catch (Exception e) {
    System.out.println("Error: " + e);
}
%>
