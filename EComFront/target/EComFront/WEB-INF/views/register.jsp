<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/*-----Background-----*/
body {
	background-image: url( );
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100vh;
	overflow: auto;
}

/*-----for border----*/
.container {
	font-family: Roboto, sans-serif;
	background-image:
		url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg);
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 500px;
	padding-top: 10px;
	height: 363px;
	margin-top: 166px;
}
/*--- for label of first and last name---*/
.lastname {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 10px;
}

.firstname {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 5px;
}

#lname {
	margin-top: 5px;
}

/*---for heading-----*/
.heading {
	text-decoration: bold;
	text-align: center;
	font-size: 30px;
	color: #F96;
	padding-top: 10px;
}
/*-------for email----------*/
/*------label----*/
#email {
	margin-top: 5px;
}
/*-----------for Password--------*/
/*-------label-----*/
.mail {
	margin-left: 44px;
	font-family: sans-serif;
	color: white;
	font-size: 14px;
	margin-top: 13px;
}

.pass {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	margin-left: 6px;
	margin-top: 9px;
}

#password {
	margin-top: 6px;
}
/*------------for phone Number--------*/
/*----------label--------*/
.pno {
	font-size: 18px;
	margin-left: -13px;
	margin-top: 10px;
	color: #ff9;
}

/*--------------for Gender---------------*/
/*--------------label---------*/
.gender {
	color: white;
	font-family: sans-serif;
	font-size: 14px;
	margin-left: 28px;
	margin-top: 8px;
}

/*---------- for Input type--------*/
.col-xs-4.male {
	color: white;
	font-size: 13px;
	margin-top: 9px;
	padding-bottom: 16px;
}

.col-xs-4.female {
	color: white;
	font-size: 13px;
	margin-top: 9px;
	padding-bottom: 16px;
	padding-right: 95px;
}
/*------------For submit button---------*/
.sbutton {
	color: white;
	font-size: 20px;
	border: 1px solid white;
	background-color: #080808;
	width: 32%;
	margin-left: 41%;
	margin-top: 16px;
	box-shadow: 0px 2px 2px 0px white;
}

.btn.btn-warning:hover {
	box-shadow: 2px 1px 2px 3px #99ccff;
	background: #5900a6;
	color: #fff;
	transition: background-color 1.15s ease-in-out, border-color 1.15s
		ease-in-out, box-shadow 1.15s ease-in-out;
}
</style>

<!Doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<c:if test="${haserror}">
			<div class="alert alert-danger alert-dismissable">${error}</div>
		</c:if>
		<!---heading---->
		<header class="heading"> Registration-Form</header>
		<hr></hr>
		<form:form modelAttribute="UserDetails" action="CreateUser"
			method="POST">

			<!---Form starting---->
			<div class="row ">
				<!--- For Name---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="firstname">UserName :</label>
						</div>
						<div class="col-xs-8">
							<form:input type="text" name="fname" id="fname"
								placeholder="Enter your UserName" class="form-control"
								path="userName" />
							<form:errors path="userName" cssstyle="color:red"></form:errors>
						</div>
					</div>
				</div>



				<!-----For email---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="mail">Email :</label>
						</div>
						<div class="col-xs-8">
							<form:input type="email" name="email" id="email" placeholder="Enter your email" class="form-control"
								path="emailId"/>
							<form:errors path="emailId" cssstyle="color:red"></form:errors>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="pno">Phone no :</label>
						</div>
						<div class="col-xs-8">
							<form:input type="text" name="lname" id="lname"
								placeholder="Enter your Phone no" class="form-control last"
								path="mobileNo" />
							<form:errors path="mobileNo" cssstyle="color:red"></form:errors>
						</div>
					</div>
				</div>
				<!-----For Password and confirm password---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="pass">Password :</label>
						</div>
						<div class="col-xs-8">
							<form:input type="password" name="password" id="password"
								placeholder="Enter your Password" class="form-control"
								path="password" />
							<form:errors path="password" cssstyle="color:red"></form:errors>
						</div>
					</div>
				</div>
				<div>
						<input type="submit" class="btn btn-primary value="Add Register">
				</div>


			</div>
			

		</form:form>
	</div>