<%@page errorPage="error.jsp" %>
<%@include file="Connection.jsp" %>
<%
	String Trackin = request.getParameter("Trackin");
	String doctype = request.getParameter("doctype");
	String Sdate = request.getParameter("Sdate");
	String Scity = request.getParameter("Scity");
	String Rcity = request.getParameter("Rcity");
	String Ccity = request.getParameter("Ccity");
	String Cstatus = request.getParameter("Cstatus");
	String Remarks = request.getParameter("Remarks");

	String qr = "update cart set Ccity=?,Cstatus=?,Remarks=? where Trackin=?";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, Ccity);
	ps.setString(2, Cstatus);
	ps.setString(3, Remarks);
	ps.setString(4, Trackin);
	int i = ps.executeUpdate();
	if (i > 0) {
		out.println("<script>window.alert('STATUS CHANGE SUCCESFULL');</script>");
		response.sendRedirect("OrderRec.jsp");
	} else {
		out.println("<script>window.alert('UPDATE FAILED');</script>");
	}
%>