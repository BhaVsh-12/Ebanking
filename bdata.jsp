<%@ page import="java.sql.*"%>
<%
    int accounti=Integer.parseInt(request.getParameter("account"));
  int pini=Integer.parseInt(request.getParameter("pin"));
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
    }
         else if (!userExists) {
           System.out.println("Incorrect user");
            response.sendRedirect("berror.jsp");
        } else if (!passwordCorrect) {
             System.out.println("Incorrect password");
            response.sendRedirect("berror.jsp");
        } else {
             System.out.println("Both user and password are incorrect");
            response.sendRedirect("berror.jsp");
        }

        con.close();
    } catch (Exception e) {
       System.out.println("Error ="+e);
    }
%>


<html>
<head>
    <title>Balance Check</title>
<style >
    div{
    color: white;
     background-image: url("2.jpg");
        background-repeat: no-repeat;
            background-size: cover;
             background-position: 100% 100%;
             background-attachment: fixed;
        height: 300px;
        width: 250px;
        border: 10px solid steelblue;
        margin-left: 500px;
        margin-top: -500px;
        opacity: 0.8;
        

    }
    h3{
        
        text-align: center;
        -webkit-text-stroke: 1px red;
            text-shadow: 5px red;
         color: hotpink;
           margin-bottom: -35px;
    }
    #submit{
        margin-top: 20px;
        margin-left: 35px;
        color: white;
        background-color: black;
        height: 30px;
        width: 75px;
    }
    #abc{color: white;
        height: 30px;
        width: 150px;
        margin-left: 50px;
        border-left: none;
            border-right: none;
            border-top: none;
            background: none;
            border-bottom: 3px solid black;}
    
     h4{margin-left: 25px;
        margin-top: 10px;
     }
     #q{
        height: 20px;
        width: 70px;
        margin-left: 150px;
        margin-top: -40;
     }

</style>
</head>
<body>
<jsp:include page="homeb.jsp"></jsp:include>
<form action="homeb.jsp" method="post">
    <div>
    <caption><br><h3>Check Balance</h3><br></caption><br><br>
    <input type="text" id="abc" name="account" placeholder="Enter Account No" required value="<%=accounti%>">
        <br><br>
    <input type="password" id="abc" name="pin" placeholder="Enter Pin" required id="abc" value="<%=pini%>">
    <br><br>
    <input id="submit" type="submit" value="Submit"><input id="submit" type="reset" value="Reset">
    <br><br>
  
   <h4 > Your Balance :-</h4><input id ="q" type="text" value="<%=balance%>" name="balance">
<br>
    </div>
</form>
</body>
</html>