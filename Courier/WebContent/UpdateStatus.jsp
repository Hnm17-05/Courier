<%@include file="Connection.jsp" %>
<title>UPDATE ADMIN </title>
<%
	String Trackin=request.getParameter("Trackin");
	String doctype=request.getParameter("doctype");
	String Scity=request.getParameter("Sdate");
	String Sdate=request.getParameter("Scity");
	String Rcity=request.getParameter("Rcity");
        String Ccity=request.getParameter("Ccity");
        String Cstatus=request.getParameter("Cstatus");
        String Remarks=request.getParameter("Remarks");

%>
<%@include file="allComponent/allcss.jsp" %>
</head>
<body>
<%@include file="allComponent/Navbar.jsp" %>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4 bg-custom ">
				<div class="card mt-4 "></div>
				<div class="card-header text-center text-black bg-custom1">
				<i class="fa fa-pencil fa-4x" aria-hidden="true"></i>
				<h3>ADMIN UPDATE STATUS</h3>
				</div>
				<div class="card-body">
					<form action="UpdateStatusAction.jsp">
						<div class="form-group">
							<label>Tracking ID</label> 
							<input type="text" class="form-control" name="Trackin" value="<%=Trackin%>" readonly>
							
						</div>
						<div class="form-group">
							<label>DOCUMENT TYPE</label> 
							<input type="text" class="form-control" name="doctype" value="<%=doctype%>" readonly>
							
						</div>
						
						<div class="form-group">
							<label>DATE OF BOOKING</label> 
							<input type="text" class="form-control" name="doctype" value="<%=Sdate%>" readonly>
							
						</div>
						
					<div class="form-group">
							<label>SENDER'S CITY</label> 
							<input type="text" class="form-control" name="Scity" value="<%=Scity%>" readonly>
							
						</div>
						<div class="form-group">
							<label>RECIEVER'S CITY</label> 
							<input type="text" class="form-control" name="Rcity" value="<%=Rcity%>" readonly>
						</div>
						
						<div class="form-group">
							<label>CURRENT CITY/LOCATION</label> 
							<input type="text" class="form-control" name="Ccity">
						</div>
						
						<div class="form-group">
							<label>CURRENT STATUS</label> 
							<select name="Cstatus" class="form-control">
                                                        <option>IN TRANSIT</option>   
                                                        <option>OUT FOR DELIVERY </option>   
                                                        <option> DELIVERED </option>
                                                        <option>UNDER PROCESS </option>
                                                     </select>   
						</div>
						<div class="form-group">
							<label>REMARKS</label> 
							<input type="text" class="form-control" name="Remarks">
						</div>
						<button type="submit" class="btn btn-primary">UPDATE NOW</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allComponent/Footer.jsp" %>
</body>
</html>