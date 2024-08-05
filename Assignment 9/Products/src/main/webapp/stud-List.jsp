<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Products</title>
<link rel ="stylesheet" href="./assets/css/bootstrap.min.css">
<link rel ="stylesheet" href="./assets/css/bootstrap-theme.min.css">
</head>
<body>
<div class="row">
  <div class="container">
  <h3>List of All Products</h3>
    <table class="table table-bordered table-success">
      <thead>
        <tr>
          <th>Id</th>
          <th>Product Code</th>
          <th>Product Name</th>
          <th>Product Scale</th>
          <th>Product Description</th>
          <th>Buy Price</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="pro" items="${productList}">
          <tr>
            <td><c:out value="${pro.id}" /></td>
            <td><c:out value="${pro.productCode}" /></td>
            <td><c:out value="${pro.productName}" /></td>
            <td><c:out value="${pro.productScale}" /></td>
            <td><c:out value="${pro.productDescription}" /></td>
            <td><c:out value="${pro.buyPrice}" /></td>
            <td>
               <form action="delete" method="post">
                 <input type="hidden" id="id" name="id" value="${pro.id}" />
                 <input type="submit" class="btn btn-danger" value="Delete" />
               </form>
             </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
</body>
</html>
