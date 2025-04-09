<!DOCTYPE html>
<html>
<head>
	<title>ADMIN PAGE</title>
	<style>
		div {
			height: 400px;
			width: 260px;
			background-image: url("1.jpg");
			border: 10px solid lightsteelblue;
			margin-left: 900px;
			margin-top: -500px;
		transition: all 0.4s;
		}

		div:hover{
			box-shadow: 0 20px 20px silver;
		}

		#ab {
			margin-top: 15px;
			margin-bottom: 30px;
			text-align: center;
			color: lightpink;
			-webkit-text-stroke: 1px white;
			text-shadow: 2px lightblue;
		}

		#c {
			margin-top: 10px;
			margin-left: 30px;
			margin-bottom: 20px;
			width: 90px;
			height: 35px;
			background-color: black;
			color: white;
		}

		#d {
			margin-top: 10px;
			margin-left: 20px;
			margin-bottom: 20px;
			width: 90px;
			height: 35px;
			background-color: black;
			color: white;
		}

		#e{height: 90px;
			width: 90px;
			margin-left: 80px;
			margin-top: -55px;
      border-left: 5px solid blue;
     	border-radius: 55px;
     	border-right: 5px solid yellow;
     	border-bottom: 5px solid green;
     	border-top: 5px solid red;
     }
			

		#user {
			height: 30px;
			width: 200px;
			margin-left: 25px;
			border-bottom: 3px lightpink solid;
			margin-top: 10px;
			background-color: lightskyblue;
			
		}

		#pass {
			
			margin-top: 40px;
			height: 30px;
			width: 200px;
			margin-left: 25px;
			border-bottom: 3px lightpink solid;
		background-color: lightskyblue;
		}

		#myCheckbox {
			margin-top: 35px;
			margin-left: 70px;
			margin-bottom: 30px;
		}

	
	</style>
	<script >

 		 function validatePassword() {
 		   var password = document.getElementById("pass").value;

  		  if (password.length < 8) {
     		 alert("Password should be at least 8 characters long.");
     		 event.preventDefault();
     		 return false;
    		}
   			 return true;
 			 }

		function showpassword(){
			var pass =document.getElementById("pass");
			if(pass.type=="password")
			{
				pass.type="text";
			}
			else{
				pass.type="password";
			}
		}
		
	</script>
</head>
<body>
	<jsp:include page="home.jsp"></jsp:include>
	<form action="data4.jsp" onsubmit="return validatePassword(event)" >
		<div>
			<img id="e" src="u.png">
			<form >
				<h2 id="ab">Admin</h2>
				<input id="user" type="TEXT" name="user" required placeholder="Enter Admin" >
				<input id="pass" type="PASSWORD" name="pass" placeholder="Enter Password" required>
				<input type="checkbox" id="myCheckbox" name="show" onclick="showpassword()">
				<label for="myCheckbox">Show Password</label>
				
				<input id="c" type="SUBMIT" value="Submit"  >
				<input id="d" type="RESET" value="Reset">
				
			</form>
		</div>
	</form>
</body>
</html>
