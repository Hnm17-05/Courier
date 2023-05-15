<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html >
<html>
<head>
<title>WELCOME USER</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/NavbarU.jsp"%>
	<%
		String EQEmail = (String) session.getAttribute("MOEmail");
	session.setAttribute("EQEmail",EQEmail);
	%>
	<form action="EnquiryAction.jsp">
		<div class="container-fluid div-color">
			<div class="row">
				<div class="col-md-6 offset-md-3 bg-custom ">
					<h2>
						WELCOME
						<%=EQEmail%></h2>
					<div class="form-row ">
						<div class="form-group col-md-10">
							<label for="inputEmail4"><b>FULL NAME</b></label> <input type="text"
								class="form-control" name="name">
						</div>
						<div class="form-group col-md-10">
							<label for="inputPassword4"><b>E-MAIL</b></label> <input type="text"
								class="form-control" name="email">
						</div>
						<div class="form-group col-md-10">
							<label for="inputPassword4"><b>MOBILE NUMBER</b></label> <input
								type="text" class="form-control" name="mobile">
						</div>
							<div class="form-group col-md-10">
							<label for="inputPassword4"><b>SUBJECT</b></label> <input
								type="text" class="form-control" name="subject" placeholder="Example: Forgot Password">
						</div>
						<div class="form-group col-md-10">
							<label for="exampleFormControlTextarea1"><b>ENTER ENQUIRY</b></label>
							<textarea class="form-control" name="query" rows="3"></textarea>
						</div>

						<div class="form-group col-md-10">
						<button type="submit" class="btn btn-primary">SUBMIT ENQUIRY</button>
						</div>
						</div>
					</div>
					</div>
					</div>

					</form>

	<%@include file="allComponent/Footer.jsp"%>
</body>
</html>