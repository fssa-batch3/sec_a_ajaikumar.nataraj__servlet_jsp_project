<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="../assets/CSS/2-login.css" />
</head>
<body class="body">
	<h1>Hi! User...</h1>

	<%
	String e = (String) request.getAttribute("ErrorMessage");
	if (e != null) {
	%>
	<span style="color: red;"><%=e%></span>
	<%
	}
	%>

	<div class="form">
		<form action="<%=request.getContextPath()%>/LoginServlet"
			method="post" class="center" id="form">
			<nav>
				<img src="../assets/image/login.png" alt="profile" width="350px" />
			</nav>
			<label>User Mail id:</label><br /> <input type="text" id="Email"
				name="email" required="true" value="ajai@gmail.com" /><br /> <label>Password:</label><br />
			<input value="Ajai@123" name="password" type="password" id="Password"
				required="true" /> <br />
			<button class="btn" type="submit">Sign in</button>
		</form>
	</div>
	<p>
		If you don't have an account! <a
			href="<%=request.getContextPath()%>/pages/1.buy-signin.jsp"
			onclick="sign()">Signup</a>
	</p>
	<footer class="footer">Toll-Free no:1800 123 100</footer>



	<!-- 	<script src="../assets/JavaScript/buy_login.js"></script>  -->
	<!-- <script>
      // to get id of form
      let buyer_logIn = document.getElementById("form");
      console.log(buyer_logIn);

      let arr = [];

      // function for get value from form
      buyer_logIn.addEventListener("submit", (event) => {
        event.preventDefault();
        try {
          // get details from local storage
          let user_data = JSON.parse(localStorage.getItem("newBuyerInfo"));
          console.log(user_data);

          // get value from form
          let Email = document
            .getElementById("Email")
            .value.toLowerCase()
            .trim();
          let Password = document.getElementById("Password").value;

          let match = false;

          // compare the values
          for (let find of user_data) {
            if (Email == find["Email"] && Password == find["Password"]) {
              match = true;
              arr.push(find);
              window.localStorage.setItem(
                "buyer_logIn",
                JSON.stringify(arr[0]["Email"])
              );
              break;
            } else {
              match = false;
            }
          }

          // details are same move to next page
          if (match == true) {
            alert("Successfully You login to your Account");

            window.location.href = "/pages/new_buyer.html";
          } else {
            alert("Login credentials not correct");
          }
        } catch (error) {
          console.error(error);
        }
      });

      function sign() {
        window.location.href = "/pages/1.buy-signin.html";
      }
    </script> -->
</body>
</html>
