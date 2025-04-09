
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>
	<style >
		div{margin-left: 800px;
			margin-top: -200px;
			height: 500px;
			width: 600px;
			border: 10px solid steelblue;
			font-style: oblique;
			font-size: 20px;
			background-color:lightskyblue;
			color:black;
		transition: all 0.4s;
		}

		div:hover{
			box-shadow: 0 30px 30px skyblue;
		}
		h6{margin-top: 30px;
			margin-bottom: 30px;
         font-style: oblique;
         font: bold;
         color: red;
         text-align: center;
         font-size: 25px;
		}
		div img{margin-bottom: 40px;
			height: 40px;
			width: 40px;
			margin-left: 20px;
		}
		#img3{
			margin-bottom: 40px;
			height: 40px;
			width: 40px;
			margin-left: 180px;
		}
	</style>
</head>
<body>
<jsp:include page="home.jsp"></jsp:include>
<div >
	<h6>© 2023 Prime Alliance E-Banking. All rights reserved.<br>

    Terms of Service | Privacy Policy | Security Measures<br></h6>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This website is operated by Prime Alliance E-Banking, a trusted and regulated financial institution. All banking services are subject to the terms and conditions outlined in our Terms of Service. We are committed to protecting your privacy and have implemented robust security measures to safeguard your personal and financial information. Please review our Privacy Policy for more details on how we collect, use, and protect your data.
<br>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For inquiries or assistance, please contact our customer support at [<span style="color: blue;">1008-456-8907</span>] or email on <span style="color:blue;"> primeallience0402@gmail.com</span>.
<br>
<h6>You Can Also Follow Us On Following Platform</h6>
<br><img id="img3" src="insta.png"><img src="teligram.png"><img src="twiter.png"><img src="facebook.png">
</div>
</body>
</html>