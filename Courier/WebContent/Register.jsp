<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>REGISTER AT SHIPNOW</title>
<%@include file="allComponent/allcss.jsp" %>
</head>
<body>
<%@include file="allComponent/Navbar.jsp" %>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4 bg-custom ">
				<div class="card mt-4 "></div>
				<div class="card-header text-center text-black bg-custom1">
				<i class="fa fa-user-plus fa-4x" aria-hidden="true"></i>
				<h3>REGISTRATION</h3>
				</div>
				<div class="card-body">
					<form action="RegisterAction.jsp">
					<div class="form-group">
							<label for="exampleInputPassword1">FIRST NAME</label>
							 <input type="text" class="form-control" name="Firstname">
						</div>
						
						<div class="form-group">
							<label >LAST NAME</label>
							 <input type="text" class="form-control" name="Lastname">
						</div>
						
						<div class="ng-*">
							<label >MOBILE NUMBER</label>
							 <input type="number" class="form-control" name="Mobile">
						</div>
						
						<div class="form-group">
							<label>Email address</label> 
							<input type="text" class="form-control" name="Email">
							
						</div>
						
						<div class="form-group">
							<label for="exampleInputPassword1">PASSWORD</label>
							 <input type="password" class="form-control" name="Password">
						</div>

						<button type="submit" class="btn btn-primary">SIGN UP !</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allComponent/Footer.jsp" %>
</body>
</html>