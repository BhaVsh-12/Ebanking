
<html>
<head>
	<title>Withdraw Amount</title>
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
  var balance = document.getElementById("balance").value;

  if (password.length < 4 ) {
    alert("Password should be at least 4 numbers");
    event.preventDefault();
    return false;
  }

  if (isNaN(password)) {
    alert(" Pin Must Be A Number");
    event.preventDefault();
    return false;
  }
   if (isNaN(balance)) {
    alert("Amount Must Be A Number");
    event.preventDefault();
    return false;
  }

  if (isNaN(account)) {
    alert("Account Number Must Be A Number");
    event.preventDefault();
    return false;
  }

if (password<0) {
    alert("Amount Must Be Positive");
    event.preventDefault();
    return false;
  }
  return true;
}
</script>

</head>
<body>
<jsp:include page="homeb.jsp"></jsp:include>
<form action="wdata.jsp" method="get" onsubmit="return validatePassword(event)">
	<div>
	<caption><br><h3>Withdraw Amount</h3><br></caption><br><br>
	<input type="text" id="account" name="account" placeholder="Enter Account No" required>
		<br><br>
	<input type="text" id="balance" name="withdraw" placeholder="Enter Withdraw Amount" required>
	<br><br>
	<input type="password" id="pin" name="pin" placeholder="Enter Pin" required id="abc">
	<br><br>
    <input id="submit" type="submit" value="Submit"><input id="submit" type="reset" value="Reset">
    </div>
</form>
</body>
</html>