
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<style>
.backdrop {
	background-size: contain;
	background-position: center;
	margin: auto;
	margin-top: 20px;
	width: 75vw;
}

.backdrop.shibuya {
	background-image:
		url("https://oneclassblog.com/wp-content/uploads/2018/01/geo-sports-banner-cropped-size21.png");
}

.text {
	color: white;
	border: 4px white solid;
	mix-blend-mode: multiply;
	font: bolder 10vw monospace;
	text-align: center;
	margin: 0;
	cursor: pointer;
	transition: text-indent 0.5s;
}

.text:hover {
	text-indent: 5px;
	transition: text-indent 0.5s;
}

.text:hover::before {
	display: inline-block;
	content: "";
}

.text.shibuya {
	font-family: "Bungee Shade", cursive;
	background-color: rgba(2, 22, 48, 1);
	outline: 4px rgba(2, 22, 48, 1) solid;
	font-size: 6vw;
}
</style>
<body>
	<nav class="navbar">
		<div class="backdrop shibuya">
			<p class="text shibuya">FLORIC</p>
		</div>
	</nav>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<c:choose>
				<c:when test="${sessionScope.userlogin==true}">
					<ul class="nav navbar-nav">
						<li><a href="${contextRoot}/home">Home</a></li>
						<li><a href="${contextRoot}/aboutus">About Us</a></li>
						<li><a href="${contextRoot}/contactus">Contact Us</a></li>
						<li><a href="${contextRoot}/user/viewCart">Cart</a></li>
						<li><a href="${contextRoot}/viewallproduct">View all
								Product</a></li>
						<li><a href="${contextRoot}/logout">Logout</a></li>
					</ul>

				</c:when>
				<c:when test="${sessionScope.userlogin==false}">
					<ul class="nav navbar-nav">
						<li><a href="${contextRoot}/home">Home</a></li>
						<li><a href="${contextRoot}/aboutus">About Us</a></li>
						<li><a href="${contextRoot}/contactus">Contact Us</a></li>
						<li><a href="${contextRoot}/admin/category">Category</a></li>
						<li><a href="${contextRoot}/admin/product">Product</a></li>
						<li><a href="${contextRoot}/logout">Logout</a></li>
					</ul>

				</c:when>
				<c:otherwise>
					<ul class="nav navbar-nav">
						<li><a href="${contextRoot}/home">Home</a></li>
						<li><a href="${contextRoot}/aboutus">About Us</a></li>
						<li><a href="${contextRoot}/contactus">Contact Us</a></li>
						<li><a href="${contextRoot}/viewallproduct">View all
								Product</a></li>
						<li><a href="${contextRoot}/Login">Login</a></li>
						<li><a href="${contextRoot}/register">Register</a></li>
					</ul>
				</c:otherwise>
			</c:choose>




		</div>

	</nav>