<%@page import="project.ConnectionProvider" %>
<%@page import="project.shoppingUtil" %>
<%@page import="java.sql.*" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
shoppingUtil sUtil = new shoppingUtil();

if(email == null || password == null || email.isEmpty() || password.isEmpty()) {
    response.sendRedirect("login.jsp?msg=empty");
} else {
    if(sUtil.getAdminUser().equals(email) && sUtil.getAdminPassword().equals(password)) {
        session.setAttribute("email", email);
        response.sendRedirect("admin/adminHome.jsp");
    } else {
        int z = 0;
        try {
            ConnectionProvider conProvider = new ConnectionProvider();
            Connection con = conProvider.getCon();
            if (con != null) {
                System.out.println("Database connection established.");
            } else {
                System.out.println("Failed to establish database connection.");
            }
            String query = "SELECT * FROM users2 WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            System.out.println("Executing query: " + query);
            ResultSet rs = ps.executeQuery();
            System.out.println("Query executed.");

            if (rs.next()) {
                z = 1;
                String dbEmail = rs.getString("email");
                String dbPassword = rs.getString("password");
                System.out.println("Email from DB: " + dbEmail);
                System.out.println("Password from DB: " + dbPassword);
                session.setAttribute("email", email);
                session.setAttribute("password", password);
                response.sendRedirect("Home.jsp");
            } 
            if (z == 0) {
                response.sendRedirect("login.jsp?msg=notexist");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?msg=error");
        }
    }
}
%>
