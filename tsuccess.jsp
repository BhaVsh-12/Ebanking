<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Transfer Amount Successfully</title>
	<style >
		div{
			margin-left: 450px;
			margin-top: -550px;
			height: 200px;
			width: 390px;
			background-color: white;
			border: 10px solid black;
			
		}
		#h2{
			position: absolute;
			margin-top: 30px;
			color: black;
			margin-left: 10px;
		}
		#img{margin-top: 90px;
			margin-left: 140px;
			height: 100px;
			width: 100px;
		}
	</style>
	<script type="text/javascript">
        function redirect() {
            window.location.href = "balance.jsp";  
        }
        
        setTimeout(redirect, 2000); 
    </script>
</head>
<body>
<jsp:include page="homeb.jsp"></jsp:include>
<div>
	<h2 id="h2" >Transfer Amount Successfully !.....</h2>
	<img src="true.jpg" id="img">
</div>
</body>
</html>