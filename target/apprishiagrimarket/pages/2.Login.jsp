<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="../assets/CSS/2-login.css" />
</head>
<body class="body">
	<h1>Hi! Seller...</h1>
	
	<%
	String e = (String) request.getAttribute("ErrorMessage");
	if (e != null) {
	%>
	<span style="color: red;"><%=e%></span>
	<%
	}
	%>

	<div class="form">
		<form action="<%= request.getContextPath()%>/LoginServlet" method="post" class="center" id="form">
			<nav>
				<img src="../assets/image/login.png" alt="profile" width="350px" />
			</nav>
			<label>User Mail id:</label><br /> <input type="text" id="Email" name="email"
				required value="ajai@gmail.com" /><br /> <label>Password:</label><br />
			<input value="Ajai@123" type="password" id="Password" required name="password" />
			<br />
			<button class="btn" type="submit" onclick="logIn()">Sign in</button>
		</form>
	</div>

	<p>
		If you don't have an account! <a href="#" onclick="sign()">Signup</a>
	</p>
	<footer class="footer">Toll-Free no:1800 123 100</footer>

	<!--  <script>
	function logIn() {
		window.location.href = "../pages/10.upload.html";
	}
		function sign() {
			window.location.href = "../pages/1.signin.html";
		}
	</script>  -->

</body>
</html>
