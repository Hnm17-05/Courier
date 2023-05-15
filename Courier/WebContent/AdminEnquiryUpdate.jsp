<%@include file="Connection.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String subject = request.getParameter("subject");
	String query = request.getParameter("query");
	String reply = request.getParameter("reply");
%>
<!DOCTYPE html>
<html>
<head>
<title>LOGIN IN SHIPNOW</title>
<%@include file="allComponent/allcss.jsp" %>
</head>
<body>
<%@include file="allComponent/NavbarA.jsp" %>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-8 offset-md-2 bg-custom ">
				<div class="card mt-4 "></div>
				<div class="card-header text-center text-black bg-custom1">
				<i class="fa fa-pencil fa-4x" aria-hidden="true"></i>
				<h3>ADMIN REPLY TO ENQUIRY</h3>
				</div>
				<div class="card-body">
					<form action="AdminEnquiryUpdateAction.jsp">
						<div class="form-group">
							<label>NAME</label> 
							<input type="text" class="form-control" name="name" value="<%=name%>" readonly>
							
						</div>
						<div class="form-group">
							<label>E-MAIL</label> 
							<input type="text" class="form-control" name="email" value="<%=email%>" readonly>
							
						</div>
					<div class="form-group">
							<label>MOBILE NUMBER</label> 
							<input type="text" class="form-control" name="mobile" value="<%=mobile%>" readonly>
							
						</div>
						<div class="form-group">
							<label>SUBJECT</label> 
							<input type="text" class="form-control" name="subject" value="<%=subject%>" readonly>
						</div>
						
						<div class="form-group">
							<label>QUERY</label>
							<input type="text" class="form-control" name="query" value="<%=query%>" readonly>
						</div>
						
						<div class="form-group">
							<label>REPLY</label> 
							<input type="text" class="form-control" name="reply" >
						</div>
						<button type="submit" class="btn btn-primary">SEND REPLY NOW</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allComponent/Footer.jsp" %>
</body>
</html>