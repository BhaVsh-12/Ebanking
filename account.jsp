
<html>
<head>
	<title>Create Account</title>
<style >
	div{
	color: white;
	 background-image: url("2.jpg");
		background-repeat: no-repeat;
			background-size: cover;
			 background-position: 100% 100%;
			 background-attachment: fixed;
		height: 545px;
		width: 480px;
		border: 10px solid steelblue;
		margin-left: 340px;
		margin-top: -660px;
		opacity: 0.8;
	transition: all 0.4s;
		}

		div:hover{
			box-shadow: 0 40px 40px black;
		}
	h3{
		
		text-align: center;
		-webkit-text-stroke: 1px red;
			text-shadow: 5px red;
		 color: hotpink;
           margin-bottom: -25px;
	}
	#submit{
		margin-top: 10px;
		margin-left: 105px;
		color: white;
		background-color: black;
		height: 35px;
		width: 85px;
	}
	 form input {
      margin-left: 15px;
    }
</style>
<script>
	 function validatePassword() {
	 	   var account =document.getElementById("account").value;
 		   var password = document.getElementById("pin").value;
 		   var fname=document.getElementById("fname").value;
 		   var lname =document.getElementById("lname").value;
 		   var balance =document.getElementById("balance").value;
 		   var mobile =document.getElementById("mobile").value;
 		   var city=document.getElementById("city").value;

  		  if (password.length < 4 ) {
     		 alert("Password should be at least 4 Number");
     		 event.preventDefault();
     		 return false;
    		}
    		if(isNaN(password)){
				alert("Pin Number Must Be A Number");
				 event.preventDefault();
     		 return false;
			}
    		if(isNaN(account)){
				alert("Account Number Must Be A Number");
				 event.preventDefault();
     		 return false;
			}
			if(isNaN(balance)){
				alert("Deposite Number Must Be A Number");
				 event.preventDefault();
     		 return false;
			}
			if(!isNaN(fname)){
				alert("fName Must Be A String");
				 event.preventDefault();
     		 return false;
			}
			if(!isNaN(lname)){
				alert("lName Must Be A String");
				 event.preventDefault();
     		 return false;
			}

    		if(isNaN(mobile)){
				alert("Mobile Number Must Be A Number");
				 event.preventDefault();
     		 return false;
			}
			if(!isNaN(city)){
				alert("city Must Be A String");
				 event.preventDefault();
     		 return false;
			}
   			 return true;
 			 }
</script>

</head>
<body>
<jsp:include page="homeb.jsp"></jsp:include>
<form action="adata.jsp" method="post" onsubmit="return validatePassword(event)">
	<div>
	<caption><br><h3>Open Account</h3><br></caption><br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     :<input type="text" name="fname" placeholder="Fname" required id="fname">
	      <input type="text" name="lname" placeholder="Lname" required id="lname">
	      <br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Account No  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<input type="text" name="account" placeholder="Enter Account No" required id="account">
		<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="password" name="pin" placeholder="Create Pin" required id="pin">
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Account Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<select name="type">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                <option >----Select----</option>
						 <option value="Saving">Saving Account</option>
						<option value="Current">Current Account</option>
				 </select>
				 	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FDeposite  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :<input type="text" name="balance" placeholder="Enter First Deposite" required id="balance">
   <br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input title="" type="email" name="email" placeholder="Enter Email" required >
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="mobile" placeholder="Enter Mobile" required id="mobile">
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="city" placeholder="Enter City" required id="city">
	<br><br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   :
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Male  <input type="radio" name="gender" value="male">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Female<input type="radio" name="gender" value="female" >
            <br><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Date Of Birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="date" name="date">
    	<br><br>
    <input id="submit" type="submit" value="Submit"><input id="submit" type="reset" value="Reset">
    </div>
</form>
</body>
</html>





















