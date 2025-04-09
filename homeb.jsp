
<html>
<head>
		<title>my page</title>
	<style >
		body{
			background-image: url("bankb3.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			 background-position: 100% 100%;
			 background-attachment: fixed;
		}
		#bankl{
			height: 50px;
			width: 50px;
			margin-left: 1140px;
			margin-top: 75px;
		}
		#nav{
			background-color: lightblue;
			margin-top: 50px;
			height: 50px;
			text-align: center;
			width: 1000px;
			margin-left: 250px;
            border: 5px navy double;
		}
		#marquee{
			height: 100%;
			align-items: center;
			display: flex;
			color: red;
		}
		nav{margin-left: 50px;
			background-color: white;
			border: 10px navy solid;
			width: 200px;
			height: 500px;
			margin-top: 100px;
		}
		nav ul{
			list-style: none;
		}
		nav ul li{
			margin-top: 30px;
			margin-left: 20px;
			text-decoration: none;
		}
		nav ul li a{
			color: blue;
			text-decoration: none;
		}
		nav ul li a:hover{
			color:white;
			background-color: darkblue;
			border :10px darkblue solid ;
			border-radius: 25px;
			text-align: center;
			margin-left: -10px;
		}
		 #img1{
			margin-left: 50px;
			margin-top: -50px;
			height: 100px;
			width: 100px;
		}
		#img2{
			height: 100px;
			width: 150px;
			margin-left: 25px;
			margin-top: 7px;
		}
	</style>
</head>
<body >

<nav>
	<img id="img1" src="banklo.png">
	<ul>
		<li><a href="account.jsp">Create Account</a></li>
		<li><a href="pin.jsp">Change Pin </a></li>
		<li><a href="withdraw.jsp">Withdraw</a></li>
		<li><a href="deposite.jsp">Deposite</a></li>
		<li><a href="transfer.jsp">Transfer</a></li>
		<li><a href="balance.jsp">Balence</a></li>
		<li><a href="login.jsp">Logout</a></li>
		
	</ul>
	<img src="bank4.png" id="img2">
</nav>
<nav id="nav" >
	<marquee id="marquee"><h1> © 2023 Prime Alliance E-Banking. All rights reserved Terms of Service | Privacy Policy | Security Measures </h1></marquee>
</nav>

</body>
</html>