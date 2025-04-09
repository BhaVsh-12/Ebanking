
<html>
<head>
	
	<title>
		LOGIN PAGE
	</title>
	
	<style >
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
			height: 10%;
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
		#img1{
			height: 30%;
			width: 40%;
			margin-top: 130px;
			margin-left: 50px;
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
	<img src="b5.png" id="img1">
	
</body>

</html>