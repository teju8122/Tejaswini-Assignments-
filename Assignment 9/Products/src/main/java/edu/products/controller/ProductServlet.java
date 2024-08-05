package edu.products.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.products.dao.ProductDao;
import edu.products.model.Product;

@WebServlet("/")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDao productDao;

    public ProductServlet() {
        this.productDao = new ProductDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productCode = request.getParameter("productCode");
        String productName = request.getParameter("productName");
        String productScale = request.getParameter("productScale");
        String productDescription = request.getParameter("productDescription");

        String quantityInStockStr = request.getParameter("quantityInStock");
        int quantityInStock = (quantityInStockStr != null && !quantityInStockStr.isEmpty()) ? Integer.parseInt(quantityInStockStr) : 0;

        String buyPriceStr = request.getParameter("buyPrice");
        double buyPrice = (buyPriceStr != null && !buyPriceStr.isEmpty()) ? Double.parseDouble(buyPriceStr) : 0.0;

        Product product = new Product();
        product.setProductCode(productCode);
        product.setProductName(productName);
        product.setProductScale(productScale);
        product.setProductDescription(productDescription);
        product.setQuantityInStock(quantityInStock);
        product.setBuyPrice(buyPrice);

        String action = request.getServletPath();
        try {
            switch (action) {
                case "/addProduct":
                    if (productDao.saveProduct(product) > 0) {
                        response.sendRedirect("Done.jsp");
                    } else {
                        response.sendRedirect("Error.jsp");
                    }
                    break;
                case "/updateProduct":
                    if (productDao.updateProduct(product) > 0) {
                        response.sendRedirect("update-message.jsp");
                    } else {
                        response.sendRedirect("updateError.jsp");
                    }
                    break;
                case "/deleteProduct":
                    if (productDao.deleteProduct(product) > 0) {
                        response.sendRedirect("delete.jsp");
                    } else {
                        response.sendRedirect("deleteError.jsp");
                    }
                    break;
                default:
                    response.sendRedirect("Error.jsp");
                    break;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/pro":
                List<Product> productList = null;
                try {
                    productList = productDao.getProduct();
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                }
                request.setAttribute("productList", productList);
                RequestDispatcher dispatcher = request.getRequestDispatcher("stud-List.jsp");
                dispatcher.forward(request, response);
                break;
            // Add other cases as needed
            default:
                response.sendRedirect("Error.jsp");
                break;
        }
    }
}
