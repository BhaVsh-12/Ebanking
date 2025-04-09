<%@ page import="java.sql.*"%>
<html>
<head>
    <title>LOGIN PAGE</title>
    <style>
        div {
            height: 400px;
            width: 300px;
            background-image: url("1.jpg");
            border: 10px solid lightsteelblue;
            margin-left: 1000px;
            margin-top: -510px;
        transition: all 0.4s;
        }

        div:hover{
            box-shadow: 0 30px 30px skyblue;
        }

        #ab {
            margin-top: 20px;
            margin-bottom: 45px;
            text-align: center;
            color: lightpink;
            -webkit-text-stroke: 1px white;
            text-shadow: 2px lightblue;
        }

        #c {
            margin-top: 30px;
            margin-left: 50px;
            margin-bottom: 20px;
            width: 90px;
            height: 35px;
            background-color: black;
            color: white;
        }

        #d {
            margin-top: 30px;
            margin-left: 30px;
            margin-bottom: 20px;
            width: 90px;
            height: 35px;
            background-color: black;
            color: white;
        }

        #user {
            height: 30px;
            width: 200px;
            margin-left: 55px;
            border-bottom: 3px pink solid;
            margin-top: -20px;
            border-left: none;
            border-right: none;
            border-top: none;
            background: lightskyblue;
        }

        #pass {
            color: red;
            margin-top: 30px;
            height: 30px;
            width: 200px;
            margin-left: 55px;
            border-bottom: 3px pink solid;
            border-left: none;
            border-right: none;
            border-top: none;
            background: none;
            background: lightskyblue;
        }
         #pass2 {
            color: red;
            margin-top: 30px;
            height: 30px;
            width: 200px;
            margin-left: 55px;
            border-bottom: 3px pink solid;
            border-left: none;
            border-right: none;
            border-top: none;
            background: none;
            background: lightskyblue;
        }

        #myCheckbox {
            margin-top: 25px;
            margin-left: 100px;
        }

        a {
            margin-left: 100px;
            color: dodgerblue;
            text-decoration: none;
        }
        #img{
            height: 90px;
            width: 90px;
            margin-left: 105px;
            margin-top: -50px;
     
        }
    </style>
    <script>
        function validatePassword() {
             var password = document.getElementById("pass").value;
             var password1 = document.getElementById("pass2").value;

              if (password.length < 8 && password1.length < 8) {
                  alert("Password should be at least 8 characters long.");
                 event.preventDefault();
                   return false;
              }
                if (password !== password1) {
                  alert("Confirmed Password Wrong");
                   event.preventDefault();
                  return false;
              }
          return true;
        }
        function showpass() {
            var pass = document.getElementById("pass");
            var confirm = document.getElementById("pass2");
            if (pass.type === "password" && confirm.type === "password") {
                pass.type = "text";
                confirm.type = "text";
            } else {
                pass.type = "password";
                confirm.type = "password";
            }
        }
    </script>
</head>
<body>
<jsp:include page="home.jsp"></jsp:include>
<form action="data3.jsp" onsubmit="return validatePassword(event) ">
    <div>
        <form>
            <img src="pa.png" id="img">
            <h2 id="ab">Reset Password</h2>
            <input id="user" type="TEXT" name="user" required placeholder="Enter User">
            <input id="pass" type="PASSWORD" name="pass" placeholder="Reset Password" required>
            <input id="pass2" type="PASSWORD" name="pass2" placeholder="Confirm Password" required>
            <input type="checkbox" id="myCheckbox" onclick="showpass()">
            <label for="myCheckbox">Show Password</label>
            <input id="c" type="SUBMIT" value="Submit">
            <input id="d" type="RESET" value="Reset">

        </form>
    </div>
</form>
</body>
</html>
