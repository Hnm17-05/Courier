<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html >
<html>
<head>
<title>HOME PAGE</title>
<%@ include file="allComponent/allcss.jsp"%>
</head>
<body>
	<%@include file="allComponent/Navbar.jsp"%>
	<img src="css/courier.jpg" width=100% height=300vh>
	<h1 align="center" style="color: RED;"> ABOUT PROJECT </h1>
	<p align="center" style="color: black; text-transform: uppercase; ">
	With the advent of Internet applying for Booking for Courier has
		become a hassle free task. Courier Management is an application
		developed using html, CSS, Javascript, Servelet, JSP and Mysql technologies
		which connects User and Courier Service provider where Users register
		themselves and book for Courier Service using the system. And the
		branch Manager(admin) can view and make deliveries for the couriers,only the
		registered User can book for Courier and view status of booked
		courier. The branch manager can add new staff members or delete them .
		The status of the Courier can be changed by the branch manager and also
		specifying the staff member who delivered it.The system will be used
		for day-to-day activities like out return, company details, hub rates,
		booking, non-delivery, and pickup centers. </p>
	<%@include file="allComponent/Footer.jsp" %>	
	</body>	
</html>