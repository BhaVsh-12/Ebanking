<html>
<head>
    <title>Sign Page</title>
    <style>
        div {
            height: 500px;
            width: 330px;
            background-image: url("1.jpg");
            border: 10px solid lightsteelblue;
            margin-left: 900px;
            margin-top: -150px;
       transition: all 0.4s;
        }

        div:hover{
            box-shadow: 0 30px 30px skyblue;
        }
        #sign {
            margin-top: 5;
            text-align: center;
            color: pink;
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
            margin-left: 40px;
            margin-bottom: 20px;
            width: 90px;
            height: 35px;
            background-color: black;
            color: white;
        }

        #e {
            height: 100px;
            width: 100px;
            margin-left: 110px;
            margin-top: -60px;
            border-left: 5px solid blue;
            border-radius: 55px;
            border-right: 5px solid yellow;
            border-bottom: 5px solid green;
            border-top: 5px solid red;
        }

        #user {
            height: 30px;
            width: 200px;
            margin-left: 65px;
            border-bottom: 3px pink solid;
            margin-top: -30px;
            border-left: none;
            border-right: none;
            border-top: none;
            background: lightskyblue;
        }

        #pass {
            margin-top: 30px;
            height: 30px;
            width: 200px;
            margin-left: 65px;
            border-bottom: 3px pink solid;
            border-left: none;
            border-right: none;
            border-top: none;
            background: none;
            background: lightskyblue;
        }

        #pass2 {
            margin-top: 30px;
            height: 30px;
            width: 200px;
            margin-left: 65px;
            border-bottom: 3px pink solid;
            border-left: none;
            border-right: none;
            border-top: none;
            background: none;
            background: lightskyblue;
        }
         #email {
            margin-top: 30px;
            height: 30px;
            width: 200px;
            margin-left: 65px;
            border-bottom: 3px pink solid;
            border-left: none;
            border-right: none;
            border-top: none;
            background: none;
            background: lightskyblue;
        }

        #f {
            margin-top: 2px;
        }

        #myCheckbox {
            margin-top: 25px;
            margin-left: 100px;
        }

        a {
            margin-left: 80px;
            color: dodgerblue;
            text-decoration: none;
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
            var passField = document.getElementById("pass");
            var confirmField = document.getElementById("pass2");
            if (passField.type === "password" && confirmField.type === "password") {
                passField.type = "text";
                confirmField.type = "text";
            } else {
                passField.type = "password";
                confirmField.type = "password";
            }
        }
    </script>
</head>
<body>
    <jsp:include page="home.jsp"></jsp:include>
    <div>
        <img id="e" src="l2.png">
        <form action="data.jsp" onsubmit="return validatePassword(event)" >
            <br>
            <h2 id="sign">Signup</h2>
            <br><br>
            <input id="user" type="text" name="user" required placeholder="Create Username">
            <input type="email" id="email" name="email" required placeholder="Enter Email">
            <input id="pass" type="password" name="pass" placeholder="Create Password" required>
            <input id="pass2" type="password" name="pass1" placeholder="Confirmed Password" required>
            <input type="checkbox" id="myCheckbox" name="show" onclick="showpass()">
            <label for="myCheckbox">Show Password</label>
            <input id="c" type="submit" value="Submit"  >
            <input id="d" type="reset" value="Reset">
            <a href="login.jsp">Already Have An Account?</a>
        </form>
    </div>
</body>
</html>
