<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Database Table Display</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;

        }
        th {
            background-color: #f2f2f2;
            color: black;
            text-align: center;
        }
        body{
            background-image: url("2.jpg");
             color:white;
             background-repeat: no-repeat;
            background-size: cover;
             background-position: 100% 100%;
             background-attachment: fixed;

        }
        img{
            margin-top: -10px;
            height: 80px;
            width: 80px;
        }
        nav{position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: white;
            height: 60px;
            margin-top: 40px;
            border: 10px black double;
        }
        nav ul{margin-top: -60px;
            list-style: none;
            height: 50%;
            align-items: center;
            display: flex;
            margin-left: 90px;
        }
        nav ul li{
            display: inline;
            margin-left: 20px;
        }
        nav ul li a{
            color: blue;
            text-decoration-line: none;
            margin-left: 30px;
          
        } 
        nav ul li a:hover{
            color:white;
            background-color: darkblue;
            border :10px darkblue solid ;
            border-radius: 25px;
        }
    h1{
        margin-left: 600px;
        margin-top: 200px;
        margin-bottom: 50px;
        color: red;
    }

    </style>
    <script >
    function abc()
    {
        alert("Login First");
    }
   </script>
</head>
<body >
    <nav>
        <img src="b1.png">
        <ul>
            <li> <a href="home1.jsp">HOME</a> </li>
            <li><a href="login.jsp">LOGIN</a></li>
            <li><a href="signup.jsp">SIGNUP</a></li>
            <li onclick="abc()"><a href="#">EBanking</a></li>
            <li ><a  href="about.jsp">ABOUT</a></li>
            <li><a href="help.jsp">HELP</a></li>
        </ul>
    </nav>

   
    <h1>Account Holders Info</h1>
    <table border="2" cellpadding="10" cellspacing="10">
        <tr>
            <th>Account</th>
            <th>Pin</th>
            <th>Fname</th>
            <th>Lname</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>City</th>
            <th>Gender</th>
            <th>Dob</th>
            <th>Balance</th>
            <th>Type</th>
        </tr>
        <% 
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            
            if (user != null && pass != null && user.equals("Bhavesh") && pass.equals("12345678")) {
               
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Driver is Loaded");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bhavesh?useSSL=false", "root", "bhavesh");
                    System.out.println("Connection is created");

                    String sql = "SELECT * FROM bank";
                    PreparedStatement statement = con.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();

                    while (resultSet.next()) {
                        long account = resultSet.getLong("account");
                        long pin = resultSet.getLong("pin");
                        String fname = resultSet.getString("fname");
                        String lname = resultSet.getString("lname");
                        String email = resultSet.getString("email");
                        long mobile = resultSet.getLong("mobile");
                        String city = resultSet.getString("city");
                        String gender = resultSet.getString("gender");
                          java.sql.Date dob = resultSet.getDate("dob");
                        long balance = resultSet.getLong("balance");
                        String type = resultSet.getString("type");
        %>
        <tr bgcolor="black">
            <td><%= account %></td>
            <td><%= pin %></td>
            <td><%= fname %></td>
            <td><%= lname %></td>
            <td><%= email %></td>
            <td><%= mobile %></td>
            <td><%= city %></td>
            <td><%= gender %></td>
            <td><%= dob %></td>
            <td><%= balance %></td>
            <td><%= type %></td>
        </tr>
        <% 
                    }
                    // Close the database connection
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                System.out.println("Incorrect User OR Password");
            }
        %>
    </table>
</body>
</html>
