<%@ page import="demo.RandomString"%>
<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html >
<html>
<head>
<title>WELCOME USER</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
 <%
 RandomString tc = new RandomString();
  %>
  
	<%@include file="allComponent/NavbarU.jsp"%>
	<%
		String UPEmail = (String) session.getAttribute("UEmail");
	    session.setAttribute("UPEmail",UPEmail);
	%>
	<form action="PlaceAction.jsp">
		<div class="container-fluid div-color">
			<div class="row">
				<div class="col-md-6 offset-md-3 bg-custom ">
					<h2>
						WELCOME
						<%=UPEmail%></h2>
					<div class="form-row ">
					<h2>PLEASE FILL SENDER'S DETAILS</h2>
						<div class="form-group col-md-6">
							<label for="inputEmail4">SENDER'S NAME</label> <input type="text"
								class="form-control" name="Sname" required>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">SENDER'S MOBILE</label> <input
								type="text" class="form-control" name="Smobile" required>
						</div>
						<div class="form-group col-md-10">
							<label for="inputPassword4">SENDER'S EMAIL</label> <input
								type="text" class="form-control" name="Semail" placeholder="EMAIL ADDRESS USED AT TIME OF LOGIN" required>
						</div>
						
						<div class="form-group col-md-10">
							<label for="inputPassword4">SENDER'S CITY</label> <input
								type="text" class="form-control" name="Scity"
								placeholder="ONLY INDIAN CITIES" required>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">SENDER'S STATE</label> <select name="state" id="state" class="form-control">
								<option value="Andhra Pradesh">Andhra Pradesh</option>
								<option value="Andaman and Nicobar Islands">Andaman and
									Nicobar Islands</option>
								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
								<option value="Assam">Assam</option>
								<option value="Bihar">Bihar</option>
								<option value="Chandigarh">Chandigarh</option>
								<option value="Chhattisgarh">Chhattisgarh</option>
								<option value="Dadar and Nagar Haveli">Dadar and Nagar
									Haveli</option>
								<option value="Daman and Diu">Daman and Diu</option>
								<option value="Delhi">Delhi</option>
								<option value="Lakshadweep">Lakshadweep</option>
								<option value="Puducherry">Puducherry</option>
								<option value="Goa">Goa</option>
								<option value="Gujarat">Gujarat</option>
								<option value="Haryana">Haryana</option>
								<option value="Himachal Pradesh">Himachal Pradesh</option>
								<option value="Jammu and Kashmir">Jammu and Kashmir</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Karnataka">Karnataka</option>
								<option value="Kerala">Kerala</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Maharashtra">Maharashtra</option>
								<option value="Manipur">Manipur</option>
								<option value="Meghalaya">Meghalaya</option>
								<option value="Mizoram">Mizoram</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Odisha">Odisha</option>
								<option value="Punjab">Punjab</option>
								<option value="Rajasthan">Rajasthan</option>
								<option value="Sikkim">Sikkim</option>
								<option value="Tamil Nadu">Tamil Nadu</option>
								<option value="Telangana">Telangana</option>
								<option value="Tripura">Tripura</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
								<option value="Uttarakhand">Uttarakhand</option>
								<option value="West Bengal">West Bengal</option>
							</select>
						</div>

						<div class="form-group col-md-10">
							<label for="inputPassword4">SENDER'S ADDRESS</label> <input
								type="text" class="form-control" name="Saddress"
								placeholder="Building/house name street name District name city, town name" required>
						</div>

						<div class="form-group col-md-6">
							<label for="inputPassword4">PICKUP TYPE</label> <select
								name="deltype">
								<option>PICKUP FROM HOME</option>
								<option>DROP AT BRANCH</option>
							</select>
						</div>
						
						<div class="form-group col-md-10">
							<label for="inputEmail4">DATE OF PICKUP/DROP OFF</label> <input
								type="text" class="form-control" name="Sdate" placeholder="DD/MM/YYYY" >
						</div>
						<div class="form-group col-md-10">
							<label for="inputPassword4">DOCUMENT TYPE</label> <select
								name="doctype">
								<option>GENERAL</option>
								<option>VALUEABLE DOCUMENTS</option>
							</select>
						</div>

							
						<div class="form-group col-md-10">
							<label for="inputPassword4">UNIQUE TRACKING ID</label> <input
								type="text" class="form-control" name="Trackin" value="<%= RandomString.generateString()%>" readonly >
						</div>
						
						<h2>PLEASE FILL RECIVERS'S DETAILS</h2>

						<div class="form-group col-md-6">
							<label for="inputEmail4">RECIEVER'S NAME</label> <input
								type="text" class="form-control" name="Rname" required>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">RECIEVER'S MOBILE</label> <input
								type="text" class="form-control" name="Rmobile" required>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">RECIEVER'S EMAIL</label> <input
								type="text" class="form-control" name="Remail" required>
						</div>
						</div>
						
						<div class="form-group col-md-10">
							<label for="inputPassword4">RECIEVER'S CITY</label> <input
								type="text" class="form-control" name="Rcity"
								placeholder="ONLY INDIAN CITIES" required>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">SENDER'S STATE</label> <select name="state" id="state" class="form-control">
								<option value="Andhra Pradesh">Andhra Pradesh</option>
								<option value="Andaman and Nicobar Islands">Andaman and
									Nicobar Islands</option>
								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
								<option value="Assam">Assam</option>
								<option value="Bihar">Bihar</option>
								<option value="Chandigarh">Chandigarh</option>
								<option value="Chhattisgarh">Chhattisgarh</option>
								<option value="Dadar and Nagar Haveli">Dadar and Nagar
									Haveli</option>
								<option value="Daman and Diu">Daman and Diu</option>
								<option value="Delhi">Delhi</option>
								<option value="Lakshadweep">Lakshadweep</option>
								<option value="Puducherry">Puducherry</option>
								<option value="Goa">Goa</option>
								<option value="Gujarat">Gujarat</option>
								<option value="Haryana">Haryana</option>
								<option value="Himachal Pradesh">Himachal Pradesh</option>
								<option value="Jammu and Kashmir">Jammu and Kashmir</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Karnataka">Karnataka</option>
								<option value="Kerala">Kerala</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Maharashtra">Maharashtra</option>
								<option value="Manipur">Manipur</option>
								<option value="Meghalaya">Meghalaya</option>
								<option value="Mizoram">Mizoram</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Odisha">Odisha</option>
								<option value="Punjab">Punjab</option>
								<option value="Rajasthan">Rajasthan</option>
								<option value="Sikkim">Sikkim</option>
								<option value="Tamil Nadu">Tamil Nadu</option>
								<option value="Telangana">Telangana</option>
								<option value="Tripura">Tripura</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
								<option value="Uttarakhand">Uttarakhand</option>
								<option value="West Bengal">West Bengal</option>
							</select>
						</div>
						

						<div class="form-group col-md-10">
							<label for="inputPassword4">RECIEVER'S ADDRESS</label> <input
								type="text" class="form-control" name="Raddress"
								placeholder="Building/house name street name District name city, town name" required>
						</div>
						
						<div class="form-group col-md-10">
							<ol>
								<li>THE DATE OF DELIVERY WILL BE SEEN ON TRACK ORDER AS SUBJECT TO CHANGE/UPDATION.</li>
								<li>USER SHOULD CHECK ALL DETAIL AFTER FILLING SINCE AS CHANGES WILL BE DIFFICULT ONCE ORDER IS PLACED. </li>
							</ol>	
						</div>
						
						<div class="form-group col-md-10">
						<button type="submit" class="btn btn-primary">PLACE ORDER</button>
						</div>
						
						</div>

					</div>

				</div>
	</form>

	<%@include file="allComponent/Footer.jsp"%>
</body>
</html>