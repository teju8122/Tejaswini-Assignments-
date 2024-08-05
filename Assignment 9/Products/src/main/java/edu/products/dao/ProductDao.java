package edu.products.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.products.dbase.DatabaseConnection;
import edu.products.model.Product;

public class ProductDao {

    public int saveProduct(Product pro) throws ClassNotFoundException, SQLException {
        int result = 0;
        String insertStatement = 
            "INSERT INTO product(productCode, productName, productScale, productDescription, quantityInStock, buyPrice) VALUES(?, ?, ?, ?, ?, ?)";
        
        try (Connection con = DatabaseConnection.initializeDatabase();
             PreparedStatement pst = con.prepareStatement(insertStatement)) {
            
            pst.setString(1, pro.getProductCode());
            pst.setString(2, pro.getProductName());
            pst.setString(3, pro.getProductScale());
            pst.setString(4, pro.getProductDescription());
            pst.setInt(5, pro.getQuantityInStock());
            pst.setDouble(6, pro.getBuyPrice());
            
            result = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public int updateProduct(Product pro) throws ClassNotFoundException, SQLException {
        int result = 0;
        String updateStatement = "UPDATE product SET productCode=?, productScale=?, productDescription=?, quantityInStock=?, buyPrice=? WHERE productName=?";
        
        try (Connection con = DatabaseConnection.initializeDatabase();
             PreparedStatement pst = con.prepareStatement(updateStatement)) {
            
            pst.setString(1, pro.getProductCode());
            pst.setString(2, pro.getProductScale());
            pst.setString(3, pro.getProductDescription());
            pst.setInt(4, pro.getQuantityInStock());
            pst.setDouble(5, pro.getBuyPrice());
            pst.setString(6, pro.getProductName());
            
            result = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public int deleteProduct(Product pro) throws ClassNotFoundException, SQLException {
        int result = 0;
        String deleteStatement = "DELETE FROM product WHERE productCode=?";
        
        try (Connection con = DatabaseConnection.initializeDatabase();
             PreparedStatement pst = con.prepareStatement(deleteStatement)) {
            
            pst.setString(1, pro.getProductCode());
            
            result = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<Product> getProduct() throws ClassNotFoundException, SQLException {
        List<Product> products = new ArrayList<>();
        String getStatement = "SELECT * FROM product";
        
        try (Connection con = DatabaseConnection.initializeDatabase();
             PreparedStatement pst = con.prepareStatement(getStatement);
             ResultSet rs = pst.executeQuery()) {
            
            while (rs.next()) {
                int id = rs.getInt("Id");
                String productCode = rs.getString("productCode");
                String productName = rs.getString("productName");
                String productScale = rs.getString("productScale");
                String productDescription = rs.getString("productDescription");
                int quantityInStock = rs.getInt("quantityInStock");
                double buyPrice = rs.getDouble("buyPrice");
                
                products.add(new Product(id, productCode, productName, productScale, productDescription, quantityInStock, buyPrice));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public int deleteProductById(int id) throws ClassNotFoundException, SQLException {
        int result = 0;
        String deleteStatement = "DELETE FROM product WHERE Id=?";
        
        try (Connection con = DatabaseConnection.initializeDatabase();
             PreparedStatement pst = con.prepareStatement(deleteStatement)) {
            
            pst.setInt(1, id);
            result = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
