<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<script>
	$(document).ready(function() {
		$('#myTable').DataTable({
			"pagingType" : "full_numbers",
			"lengthMenu" : [ [ 2, 5, 10, -1 ], [ 2, 5, 10, "All" ] ],
			"ordering" : true,
		});

	});
</script>
<style>
body {
	background-image:
		url(http://whitewaterbanner.com/wp-content/uploads/2018/02/Young-Liang_0429.jpg);
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
	margin-top: 166px;
}/*--- for label of first and last name---*/
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
.table
{
	color:white;
}html * {
        -webkit-font-smoothing: antialiased;
}

 body { 
         background: #fff !important; 
 } 



small {
        font-size: 75% !important;
        color: #777;
}

.btn-group {
        position: relative;
        margin: 10px 1px;
        display: inline-flex;
        vertical-align: middle;
}

.btn-group .btn {
        padding: 6.5px 20px !important;
s}

.btn.btn-round {
        border-radius: 30px !important;
}

.btn-group .btn.btn-round {
        border-radius: 30px !important;
}


 .btn-group>.btn:not(:last-child):not(.dropdown-toggle) {
    border-top-right-radius: 0 !important;
    border-bottom-right-radius: 0 !important;
}

.btn-group>.btn:not(:first-child) {
    border-top-left-radius: 0 !important;
    border-bottom-left-radius: 0 !important;
}
.btn {
        padding: 12px 30px !important;
        margin: 5px 1px;
        font-size: 12px !important;
        box-shadow: 0 2px 2px 0 hsla(0, 0%, 60%, .14), 0 3px 1px -2px
                hsla(0, 0%, 60%, .2), 0 1px 5px 0 hsla(0, 0%, 60%, .12);
}

.btn .material-icons {
        position: relative;
        display: inline-block;
        top: 0;
        margin-top: -1.2em;
        margin-bottom: -1em;
        font-size: 19px;
        vertical-align: middle;
}

.btn.btn-sm {
        border-radius: 3px !important;
}

.btn.btn-just-icon.btn-sm {
        height: 30px;
        min-width: 30px;
        width: 30px;
}

.btn.btn-just-icon {
        font-size: 10px;
        height: 41px;
        min-width: 41px;
        width: 41px;
        padding: 0 !important;
        overflow: hidden;
        position: relative;
        line-height: 41px;
}

.btn.btn-just-icon.btn-round {
        border-radius: 50% !important;
}

.btn.btn-link {
        background: transparent;
        box-shadow: none;
        color: #999;
}

.btn.btn-info {
        color: #fff !important;
        background-color: #00bcd4 !important;
        border-color: #00bcd4;
        box-shadow: 0 2px 2px 0 rgba(0, 188, 212, .14), 0 3px 1px -2px
                rgba(0, 188, 212, .2), 0 1px 5px 0 rgba(0, 188, 212, .12) !important;
}

.btn.btn-info:hover {
        box-shadow: 0 14px 26px -12px rgba(0, 188, 212, .42), 0 4px 23px 0
                rgba(0, 0, 0, .12), 0 8px 10px -5px rgba(0, 188, 212, .2) !important;
        background: #00aec5 !important;
}

.btn.btn-info.btn-link {
        background-color: transparent !important;
        color: #00bcd4 !important;
        box-shadow: none !important;
}

.btn.btn-success {
        color: #fff !important;
        background-color: #4caf50 !important;
        border-color: #4caf50;
        box-shadow: 0 2px 2px 0 rgba(76, 175, 80, .14), 0 3px 1px -2px
                rgba(76, 175, 80, .2), 0 1px 5px 0 rgba(76, 175, 80, .12) !important;
}

.btn.btn-success:hover {
        box-shadow: 0 14px 26px -12px rgba(76, 175, 80, .42), 0 4px 23px 0
                rgba(0, 0, 0, .12), 0 8px 10px -5px rgba(76, 175, 80, .2) !important;
        background: #47a44b !important;
}

.btn.btn-success.btn-link {
        background-color: transparent !important;
        color: #4caf50 !important;
        box-shadow: none !important;
}

.btn.btn-danger {
        color: #fff !important;
        background-color: #f44336 !important;
        border-color: #f44336;
        box-shadow: 0 2px 2px 0 rgba(244, 67, 54, .14), 0 3px 1px -2px
                rgba(244, 67, 54, .2), 0 1px 5px 0 rgba(244, 67, 54, .12) !important;
}

.btn.btn-danger:hover {
        box-shadow: 0 14px 26px -12px rgba(244, 67, 54, .42), 0 4px 23px 0
                rgba(0, 0, 0, .12), 0 8px 10px -5px rgba(244, 67, 54, .2) !important;
        background-color: #f33527 !important;
}

.btn.btn-danger.btn-link {
        background-color: transparent !important;
        color: #f44336 !important;
        box-shadow: none !important;
}

.btn.btn-just-icon .material-icons {
        margin-top: 0;
        position: absolute;
        width: 100%;
        transform: none;
        left: 0;
        top: 0;
        height: 100%;
        line-height: 41px;
        font-size: 10px;
}

.btn.btn-just-icon.btn-sm .material-icons {
        font-size: 10px;
        line-height: 29px;
}

.table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 16px;
        background-color: transparent;
        
}

.table thead tr th {
        font-size: 17px;
        font-weight: 300;
}

.table>thead>tr>th {
        padding: 12px 8px;
        vertical-align: middle;
        border-color: #ddd;
        font-weight: 300;
}

.table>tbody>tr>td {
        padding: 12px 8px;
        vertical-align: middle;
        border-color: #ddd;
        font-weight: 300;
        font-size: 14px;
        color: #3c4858;
}

.table .td-actions .btn {
        margin: 0;
        padding: 5px;
}

</style>
<div class="container">
 <c:if test="${editMode}">
        <c:set var="url" value="${contextRoot}/admin/updateproduct"></c:set>
        </c:if>

        <c:if test="${!editMode}">
        <c:set var="url" value="${contextRoot}/admin/addproduct"></c:set>
        </c:if>
        
<c:if test="${haserror}">
<div class="alert alert-danger alert-dismissable">
${error}
</div>
</c:if>
	<!---heading---->
	<header class="heading"> Product </header>
	<hr></hr>
	<!---Form starting---->
	<form:form modelAttribute="product" enctype="multipart/form-data" action="${url}" method="post">
		<div class="row ">
		 <c:if test="${editMode}">
		
		<div class="col-sm-12"> 
				<div class="row">
					<div class="col-xs-8">
						<form:input type="text" name="fname" id="fname"
							 class="form-control"
							path="productId" readonly="true"></form:input>
						<form:errors path="productId"></form:errors>
					</div>
				</div>
			</div>  
			</c:if>
			<!--- For Name---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="firstname">Product Name :</label>
					</div>
					<div class="col-xs-8">
						<form:input type="text" name="text" id="text"
							placeholder="Enter your Product name" class="form-control "
							path="productName"></form:input>
						<form:errors path="productName"></form:errors>
					</div>
				</div>
			</div>
			
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="mail">Description :</label>
					</div>
					<div class="col-xs-8">
						<form:input type="text" name="text" id="text"
							placeholder="Enter your Description" class="form-control"
							path="productDesc"></form:input>
						<form:errors path="productDesc"></form:errors>
					</div>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="mail"> Category Name:</label>
					</div>
					<div class="col-xs-8">
							<form:select path="category.category_id" class="form-control">
								<c:forEach items="${listcategory}" var="c">
									<form:option value="${c.category_id}">${c.category_Name} </form:option>
								</c:forEach>
							</form:select>
							
						</div>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="firstname">Price :</label>
					</div>
					<div class="col-xs-8">
						<form:input type="text" name="price" id="price"
							placeholder="Enter your Price" class="form-control"
							path="price"></form:input>
						<form:errors path="price"></form:errors>
					</div>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="firstname">Quantity :</label>
					</div>
					<div class="col-xs-8">
						<form:input type="quantity" name="quantity" id="quantity"
							placeholder="Enter your Quatity" class="form-control"
							path="quantity"></form:input>
						<form:errors path="quantity"></form:errors>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					<form:input type="file" name="fileToUpload" id="fileToUpload" path="pimage"/>
					</div>
				</div>
			</div>
			
			
			
			<div class="col-sm-12">
				<div class="row">
					<div class="col-sm-12">
					     <c:if test="${!editMode}">
					
						<button type="submit" class="sbutton">Add Product</button>
						</c:if>
						<c:if test="${editMode}">
					
						<button type="submit" class="sbutton">Edit Product</button>
						</c:if>
					
					</div>
				</div>
			</div>
		</div>
	</form:form>

			
		
	
			<div class="row">
<div>
				<div class="table-responsive">
					<table id="myTable" class="table">
						<thead>
							<tr>
								<th>IMAGE</th>
								<th>PRODUCT ID</th>
								<th>PRODUCT NAME</th>
								<th>PRODUCT DESCRIPTION</th>
								<th>CATEGORY</th>
								<th>PRICE</th>
								<th>QUANTITY</th>
								<th class="text-right">Edit/Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listproduct}" var="p">
								<tr>
									<td><img src="${contextRoot}/resources/productImages/${p.productId}.jpg"
										width="50" height="50" /></td>
									<td>${p.productId}</td>
									<td>${p.productName}</td>
									<td>${p.productDesc}</td>
									<td>${p.category.category_Name}</td>
									<td>${p.price}</td>
									<td>${p.quantity}</td>
									<td class="td-actions text-right"><a
										href="${contextRoot}/admin/editProduct?productName=${p.productName}" rel="tooltip"
										class="btn btn-success btn-link btn-just-icon btn-sm"
										data-original-title="" title=""> <i class="material-icons">edit</i>
									</a> <a href="${contextRoot}/admin/deleteproduct?productName=${p.productName}"
										rel="tooltip"
										class="btn btn-danger btn-link btn-just-icon btn-sm"
										data-original-title="" title=""> <i class="material-icons">close</i>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div></div></div>
		