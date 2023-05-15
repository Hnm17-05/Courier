<%@include file="Connection.jsp" %>
<%@include file="Error.jsp" %>
<%
	String Email = request.getParameter("Email");
	String Password = request.getParameter("Password");
	Statement st=con.createStatement();
	if ("admin@gmail.com".equals(Email) && "admin".equals(Password))
	{
		session.setAttribute("Email",Email);
		response.sendRedirect("AdminHome.jsp");
	}
	
	else
	{
	int z=0;
	try
	{
	ResultSet rs=st.executeQuery("select * from user where Email='"+Email+"' and Password= '"+Password+"'");
	while(rs.next())
	{
	z=1;
	session.setAttribute("UEmail",Email);
	response.sendRedirect("Uhome.jsp");
	}
	if(z==0)
	{
		response.sendRedirect("Login.jsp");
	}
	}
	catch(Exception e){}
    } 

%>