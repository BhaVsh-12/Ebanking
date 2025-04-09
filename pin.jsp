
<html>
<head>
	<title>Reset Pin</title>
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
		margin-top: -550px;
		opacity: 0.8;
	transition: all 0.4s;
		}

		div:hover{
			box-shadow: 0 30px 30px gold;
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
	input{color: white;
		height: 30px;
		width: 150px;
		margin-left: 50px;
		border-left: none;
			border-right: none;
			border-top: none;
			background: none;
			border-bottom: 3px solid black;

	}
	 
</style>
<script>
function validatePassword() {
  var account = document.getElementById("account").value;
  var password = document.getElementById("pin").value;
  var password2 = document.getElementById("pin2").value;

  if (password.length < 4 && password2.length < 4) {
    alert("Password should be at least 4 numbers");
    event.preventDefault();
    return false;
  }
if(password != password2)
{
	alert("Confirmed Password Wrong");
    event.preventDefault();
    return false;
}
  if (isNaN(password)) {
    alert("Reset Pin Must Be A Number");
    event.preventDefault();
    return false;
  }

  if (isNaN(account)) {
    alert("Account Number Must Be A Number");
    event.preventDefault();
    return false;
  }


  return true;
}
</script>

</head>
<body>
<jsp:include page="homeb.jsp"></jsp:include>
<form action="pdata.jsp" method="post" onsubmit="return validatePassword(event)">
	<div>
	<caption><br><h3>Reset Pin</h3><br></caption><br><br>
	<input type="text"  name="account" placeholder="Enter Account No" id="account" required >
		<br><br>
	<input type="password" name="pin" placeholder="Reset Pin" required id="pin">
	<br><br>
	<input type="password" name="pin2" placeholder="Confirmed Pin" required  id="pin2">
	<br><br>
    <input id="submit" type="submit" value="Submit"><input id="submit" type="reset" value="Reset">
    </div>
</form>
</body>
</html>