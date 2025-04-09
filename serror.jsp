<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Signup Unsuccessful</title>
	<style >
		div{margin-left: 950px;
			margin-top: -450px;
			height: 200px;
			width: 300px;
			background-color: white;
			border: 10px solid black;
		}
		#h2{
			position: absolute;
			margin-top: 40px;
			color: black;
			margin-left: 25px;
		}
		#img{margin-top: 100px;
			margin-left: 120px;
			height: 50px;
			width: 50px;
		}
	</style>
	<script type="text/javascript">
        function redirect() {
            window.location.href = "signup.jsp";  
        }
        
        setTimeout(redirect, 2000); 
    </script>
</head>
<body>
<jsp:include page="home.jsp"></jsp:include>
<div>
	<h2 id="h2" >Signup Unsuccessful !.....</h2>
	<img src="error1.png" id="img">
</div>
</body>
</html>