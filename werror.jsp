<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Withdraw Amount Error</title>
	<style >
		div{
			margin-left: 450px;
			margin-top: -550px;
			height: 200px;
			width: 400px;
			background-color: white;
			border: 10px solid black;
			
		}
		#h2{
			position: absolute;
			margin-top: 40px;
			color: black;
			margin-left: 10px;
		}
		#img{margin-top: 100px;
			margin-left: 165px;
			height: 70px;
			width: 70px;
		}
	</style>
	<script type="text/javascript">
        function redirect() {
            window.location.href = "withdraw.jsp";  
        }
        
        setTimeout(redirect, 2000); 
    </script>
</head>
<body>
<jsp:include page="homeb.jsp"></jsp:include>
<div>
	<h2 id="h2" >Withdraw Amount Unsuccessful !.....</h2>
	<img src="error1.png" id="img">
</div>
</body>
</html>