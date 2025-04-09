<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Reset Password Successfully</title>
	<style >
		div{margin-left: 950px;
			margin-top: -450px;
			height: 200px;
			width: 370px;
			background-color: white;
			border: 10px solid black;
		}
		#h2{
			position: absolute;
			margin-top: 50px;
			color: black;
			margin-left: 20px;
		}
		#img{margin-top: 100px;
			margin-left: 140px;
		}
	</style>
	<script type="text/javascript">
        function redirect() {
            window.location.href = "home1.jsp";  
        }
        
        setTimeout(redirect, 2000); 
    </script>
</head>
<body>
<jsp:include page="home.jsp"></jsp:include>
<div>
	<h2 id="h2" >Reset Password Successfully !.....</h2>
	<img src="true.jpg" id="img">
</div>
</body>
</html>