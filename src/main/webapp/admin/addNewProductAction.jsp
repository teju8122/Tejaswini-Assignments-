<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String image = request.getParameter("image");
    String description = request.getParameter("description");
    String category = request.getParameter("category");
    double price = Double.parseDouble(request.getParameter("price"));

    try {
        ConnectionProvider conProvider = new ConnectionProvider();
        Connection con = conProvider.getCon();

        String query = "INSERT INTO products2 (id, name, image, description, category, price) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setInt(1, id);
        pstmt.setString(2, name);
        pstmt.setString(3, image);
        pstmt.setString(4, description);
        pstmt.setString(5, category);
        pstmt.setDouble(6, price);

        int rowCount = pstmt.executeUpdate();

        if (rowCount > 0) {
            // Redirect to the appropriate category page
            String redirectPage = "";
            switch (category) {
                case "Seeds and Sapling":
                    redirectPage = "seedsAndSapling.jsp";
                    break;
                case "Fertilizers and Soil Amendments":
                    redirectPage = "fertilizersAndSoilAmendments.jsp";
                    break;
                case "Tools and Equipment":
                    redirectPage = "toolsAndEquipment.jsp";
                    break;
                case "Farm Machinery":
                    redirectPage = "farmMachinery.jsp";
                    break;
                case "Technology and Smart Farming":
                    redirectPage = "technologyAndSmartFarming.jsp";
                    break;
                case "Greenhouse and Hydroponics":
                    redirectPage = "greenhouseAndHydroponics.jsp";
                    break;
                case "Sustainable Farming Solutions":
                    redirectPage = "sustainableFarmingSolutions.jsp";
                    break;
                case "Educational Resources":
                    redirectPage = "educationalResources.jsp";
                    break;
            }
            response.sendRedirect(redirectPage + "?msg=done");
        } else {
            response.sendRedirect("addNewProduct.jsp?msg=wrong");
        }

        pstmt.close();
        con.close();

    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("addNewProduct.jsp?msg=wrong");
    }
%>
