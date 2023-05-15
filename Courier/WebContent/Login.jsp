<%@include file="Connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>LOGIN IN SHIPNOW</title>
<%@include file="allComponent/allcss.jsp" %>
</head>
<body>
<%@include file="allComponent/Navbar.jsp" %>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4 bg-custom ">
				<div class="card mt-4 "></div>
				<div class="card-header text-center text-black bg-custom1">
				<i class="fa fa-sign-in fa-4x" aria-hidden="true"></i>
				<h3>LOGIN</h3>
				</div>
				<div class="card-body">
					<form action="LoginAction.jsp">
						<div class="form-group">
							<label>Email address</label> 
							<input type="text" class="form-control" name="Email">
							
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
							 <input type="password" class="form-control" name="Password">
						</div>
						
						<button type="submit" class="btn btn-primary">LOGIN</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allComponent/Footer.jsp" %>
</body>
</html>