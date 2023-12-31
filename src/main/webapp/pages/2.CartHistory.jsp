<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.rishi.model.ProductDetails"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Details</title>
<style type="text/css">
body {
	font-family: verdana;
	background-color: #f5f5f5;
	color: #2bae66ff;
}

.head {
	display: flex;
	align-items: center;
	justify-content: space-between;
	box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px
		2px, rgba(0, 0, 0, 0.09) 0px 8px 4px;
	color: white;
	height: 80px;
	font-size: 30px;
	position: fixed;
	width: 100%;
	top: 20px;
	background-color: white;
	left: 0px;
	z-index: 1;
}

.name {
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 30px;
	color: white;
	border-radius: 100px;
	width: 50px;
	height: 50px;
	background-color: #2bae66ff;
}

.contact {
	background-color: #2bae66ff;
	height: 20px;
	font-size: 15px;
	color: white;
	display: flex;
	justify-content: space-evenly;
	position: fixed;
	top: 0px;
	width: 100%;
	left: 0px;
}

.contact p {
	margin-top: 2px;
}

.order-history {
	margin-top: 120px;
	text-align: center;
}
/* CSS for order cards */
.order-cards {
	display: flex;
	flex-wrap: wrap;
}

.order-card {
	border: 1px solid #ccc;
	padding: 10px;
	margin: 10px;
	max-width: 280px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	transition: transform 0.2s ease-in-out;
	text-align: start;
	border-radius: 10px;
}

/* Styles for the "Buy Now" button */
.buy-button {
	background-color: #007bff; /* Blue background color */
	color: #fff; /* White text color */
	padding: 5px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
}

/* Styles for the "Delete" button */
.delete-img {
	color: #fff; /* White text color */
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-right: 10px;
}

.save-button {
	background-color: green;
	color: #fff; /* White text color */
	padding: 5px 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
}

.order-button {
	background-color: yellow;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 20px;
	margin-top: 10px;
}

.dropdown {
	position: relative;
	display: inline-block;
	margin-right: 30px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	padding: 12px 16px;
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

#noProductMessage {
	text-align: center;
}

#noProductMessage p {
	width: 100%;
}

.card-head {
	display: flex;
	justify-content: space-between;
}
/* Customize other styles as needed */
</style>
</head>
<body>
	<div class="contact">
		<p>+91 9876543210</p>
		<p>Rishi-market@agri.com</p>
	</div>
	<header class="head">
		<img onclick="back()"
			src="<%=request.getContextPath()%>/assets/image/arrowback.png"
			alt="back" width="40px" />
		<div class="logo">
			<img onclick="home()"
				src="<%=request.getContextPath()%>/assets/image/logo.png" alt="logo"
				width="90px" />
		</div>
		<a href="ProfileServlet?id=${userId}"> <img
			src="<%=request.getContextPath()%>/assets/image/profile.png"
			alt="profile" width="40px" />
		</a>


		<!-- 	<div class="profile">
			<div>
				<a href="LogoutServlet"> <img onclick="home()"
					src="./assets/image/logout.png" alt="logo" width="30px" />
				</a>
			</div>
			<div class="name">
				<a href="ProfileServlet?id=${userId}"> <img onclick="home()"
					src="./assets/image/profile.png" alt="logo" width="50px" />
				</a>
			</div>
		</div> -->
	</header>
	<main>
		<div class="order-history">
			<c:choose>
				<c:when test="${empty products}">
					<div id="noProductMessage">
						<img alt="failure" src="./assets/image/failure.png" width="500px">
						<p>There is no product in your cart.</p>
					</div>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
					var totalAmount = 0;
				</script>
					<h2>Your Cart</h2>
					<div class="order-cards">
						<c:forEach var="order" items="${products}">
							<form action="CartUpdateServlet" method="post" class="order-card">
								<div class="card-head">
									<a href="CartDeleteServlet?id=${order.id}" class="delete-img">
										<img
										src="<%=request.getContextPath()%>/assets/image/wrong.png"
										alt="delet" width="30px" />
									</a> <a href="BuyNowServlet?id=${order.productId}"> <img
										src="<%=request.getContextPath()%>/assets/image/cart.png"
										alt="buy Now" width="30px" />
									</a>
								</div>
								<p>Cart ID: ${order.id}</p>
								<img src="${order.url}" alt="Product Image" width="200px"
									style="border-radius: 5px; height: 130px;" />
								<p>Product Name: ${order.name}</p>
								<p>Price (Rs.): ${order.price}</p>
								<!-- Add a hidden input field to store the product ID -->
								<input type="hidden" name="productId" value="${order.id}">
								<input type="number" id="quantity" name="quantity"
									value="${order.quantity}"> <br>
								<script>
							var order = {
								price : ${order.price},
								quantity : ${order.quantity}
							};

							var amount = order.quantity * order.price;
							totalAmount += amount;

							document.write('<p>Total Amount: Rs. ' + amount
									+ '</p>');
						</script>
								<button type="submit" class="save-button">Save</button>
								<!-- Add more order details as needed -->
							</form>
						</c:forEach>
					</div>

					<script type="text/javascript">
					document.write('<h3>Total Amount: Rs. ' + totalAmount
							+ '</h3>');
					</script>

					<a href="#" onclick="confirmOrder('${userId}');">
						<button class="order-button">Place Orders</button>
					</a>


				</c:otherwise>
			</c:choose>
		</div>
	</main>

	<script>
		function back() {
			window.history.back();
		}
		
		function confirmOrder(id) {
			var confirmation = confirm("Are you sure you want to order all the products ?");

			if (confirmation) {
				// If the user confirms, redirect to the DeleteUserServlet
				window.location.href = "PlaceOrderServlet?id=" + id;
			}
		}
	</script>
</body>
</html>