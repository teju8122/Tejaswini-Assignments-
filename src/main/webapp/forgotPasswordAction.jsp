<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String newPassword=request.getParameter("newPassword");

int check=0;
try{
	ConnectionProvider conProvider =new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users1 where email='"+email+"' and mobileNumber='"+mobileNumber);
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users1 set password='"+newPassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}catch(Exception e){
	System.out.println(e);
}
%>