<!DOCTYPE html >
<html>
<head>
<title>WELCOME USER</title>
<%@include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/Navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4 bg-custom ">
				<div class="card mt-4 "></div>
				<div class="card-header text-center text-black bg-custom1">
				<i class="fa fa-globe fa-4x" aria-hidden="true"></i>
				<h3>LOGIN</h3>
				</div>
				<div class="card-body">
					<form action="TrackorderAction.jsp">
						<div class="form-group">
							<label>ENTER TRACKING ID</label> <input type="text"
								class="form-control" name="Trackin">
						</div>
						<button type="submit" class="btn btn-primary">TRACK YOUR ORDER</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allComponent/Footer.jsp"%>
</body>
</html>