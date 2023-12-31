<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.rishi.model.ProductDetails"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./assets/CSS/history.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
.dropdown {
	position: relative;
	display: inline-block;
	margin-right: 30px;
}

.dropdown-content {
	display: none;
	position: absolute;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

#noProductMessage {
	margin-left: 80%;
	text-align: center;
}

h4 {
	width: 500px;
}

.buy-now {
	color: white;
	background-color: green;
	font-size: 10px;
	border-radius: 3px;
}

.cart-btn {
	color: black;
	background-color: yellow;
	padding: 15px 25px;
	font-size: 10px;
	border-radius: 3px;
}

.buttons {
	display: flex;
	justify-content: space-evenly;
	text-align: center;
	width: 100%;
}

.view-more {
	color: black;
	background-color: light-grey;
	font-size: 10px;
	border-radius: 3px;
	width: 100%;
	margin-top: 10px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="contact">
		<p>+91 9876543210</p>
		<p>Rishi-market@agri.com</p>
	</div>
	<header class="head">
		<img onclick="back()" src="./assets/image/arrowback.png" alt="back"
			width="40px" />
		<div class="logo">
			<img onclick="home()" src="./assets/image/logo.png" alt="logo"
				width="90px" />
		</div>

		<a href="ProfileServlet?id=${userId}"> <img
			src="./assets/image/profile.png" alt="logo" width="40px" />
		</a>

		<!-- <div class="profile">
			<div>
				<a href="LogoutServlet"> <img 
					src="./assets/image/logout.png" alt="logo" width="30px" />
				</a>
			</div>
			<div class="name">
				<a href="ProfileServlet?id=${userId}"> <img
					src="./assets/image/profile.png" alt="logo" width="50px" />
				</a>
			</div>
			<div>
				<a href="CartServlet?id=${userId}"> <img
					src="./assets/image/cart.png" alt="logo" width="50px" />
				</a>
			</div>
			<div>
				<a href="BuyerHistoryServlet?id=${userId}"> <img
					src="./assets/image/orders.png" alt="logo" width="50px" />
				</a>
			</div>
		</div> -->
	</header>
	<h1>All Products List</h1>
	<div class="search-bar">
		<input class="search-bar" type="text" id="searchInput"
			placeholder="Search products...">
	</div>
	<div class="w3-sidebar w3-bar-block w3-card w3-animate-left"
		style="display: none" id="leftMenu">
		<button onclick="closeLeftMenu()"
			class="w3-bar-item w3-button w3-large">Close &times;</button>
		<a class="w3-bar-item w3-button" href="CartServlet?id=${userId}">
			<img src="./assets/image/cart.png" alt="logo" width="30px" /> Go to
			Cart
		</a> <br> <a class="w3-bar-item w3-button"
			href="BuyerHistoryServlet?id=${userId}&statusFilter=0"><img
			src="./assets/image/orders.png" alt="logo" width="30px" /> History</a>
	</div>
	<div class="w3-teal">
		<button class="w3-button w3-teal w3-xlarge w3-left"
			onclick="openLeftMenu()">&#9776;</button>
	</div>


	<%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<h4 style='color: red;'>" + errorMessage + "</h4>");
	}
	%>

	<div class="product-cards" id="productContainer">
		<c:forEach var="product" items="${products}">
			<div class="product-card">
				<img alt="img" src="${product.url}">
				<p>${product.name}</p>
				<p>Rs. ${product.price} / kg</p>
				<p>Available : ${product.quantity} Kg</p>
				<p>${product.description}</p>
				<div class="buttons">
					<a href="#" onclick="BuyNow('${product.id}');"><button
							class="buy-now">Buy Now</button></a> <a href="#"
						onclick="Cart('${product.id}');"><button class="cart-btn">Add
							to Cart</button></a>
				</div>
				<div class="buttons">
					<a
						href="productDetailServlet?id=${product.id}&userId=${product.userId}">
						<button class="view-more">View More...</button>
					</a>
				</div>

			</div>
		</c:forEach>

		<div id="noProductMessage" style="display: none;">
			<img alt="failure" src="./assets/image/failure.png" width="500px">
			<h4>There is no product related to your search</h4>
		</div>
	</div>

	<script>
		// Get the input element
		const searchInput = document.getElementById("searchInput");
		const productCards = document.querySelectorAll(".product-card");
		const noProductMessage = document.getElementById("noProductMessage");

		searchInput.addEventListener("input", function() {
			const query = searchInput.value.trim().toLowerCase();
			let found = false;

			productCards.forEach(function(card) {
				const productText = card.textContent.toLowerCase();
				if (productText.includes(query)) {
					card.style.display = "block";
					found = true;
				} else {
					card.style.display = "none";
				}
			});

			if (!found) {
				noProductMessage.style.display = "block";
			} else {
				noProductMessage.style.display = "none";
			}
		});

		
		
		
		function BuyNow(id) {
			var confirmation = confirm("Are you sure you want to buy this product imediately ?");

			if (confirmation) {
				// If the user confirms, redirect to the DeleteUserServlet
				window.location.href = "BuyNowServlet?id=" + id;
			}
		}
		
		function Cart(id) {
			var confirmation = confirm("Are you sure you want to add this product to your cart ?");

			if (confirmation) {
				// If the user confirms, redirect to the DeleteUserServlet
				window.location.href = "AddToCartServlet?id=" + id;
			}
		}
		function back() {
			window.history.back();
		}

		function openLeftMenu() {
			document.getElementById("leftMenu").style.display = "block";
		}

		function closeLeftMenu() {
			document.getElementById("leftMenu").style.display = "none";
		}
	</script>
	<!--       <script src="../assets/JavaScript/seller_place_order.js"></script>  -->
</body>
</html>