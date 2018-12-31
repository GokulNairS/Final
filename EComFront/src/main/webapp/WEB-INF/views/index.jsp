 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<c:import url="Navbar.jsp"></c:import>
	<div style="min-height: 600px;">
		<c:if test="${sliderpage}">
			<c:import url="Slider.jsp"></c:import>
		</c:if>
		<c:if test="${aboutpage}">
			<c:import url="aboutus.jsp"></c:import>
		</c:if>
		<c:if test="${contactpage}">
			<c:import url="contact.jsp"></c:import>
		</c:if>
		<c:if test="${cartpage}">
			<c:import url="cart.jsp"></c:import>
		</c:if>
		<c:if test="${addresspage}">
			<c:import url="address.jsp"></c:import>
		</c:if>
	<c:if test="${orderpage}">
			<c:import url="order.jsp"></c:import>
		</c:if>
	<c:if test="${billpage}">
			<c:import url="Invoice.jsp"></c:import>
		</c:if>
	
		<c:if test="${categorypage}">
			<c:import url="category.jsp"></c:import>
		</c:if>
		<c:if test="${productPage}">
			<c:import url="product.jsp"></c:import>
		</c:if>
		<c:if test="${viewallproductpage}">
			<c:import url="viewallproduct.jsp"></c:import>
		</c:if>
		<c:if test="${registerpage}">
			<c:import url="register.jsp"></c:import>
		</c:if>
		<c:if test="${Loginpage}">
			<c:import url="login.jsp"></c:import>
		</c:if>
		<c:if test="${fLoginpage}">
			<c:import url="login.jsp"></c:import>
		</c:if>
		<c:if test="${viewoneproductpage}">
			<c:import url="viewoneproduct.jsp"></c:import>
		</c:if>
	</div>
	<c:import url="footer.jsp"></c:import>
	
</body>
</html>