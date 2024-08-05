<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Added Products</title>
<link rel ="stylesheet" href="./assets/css/bootstrap.min.css">
<link rel ="stylesheet" href="./assets/css/bootstrap-theme.min.css">
</head>
<body>
<div class="row">
<div class="container">
<h3>Welcome to Update Student Information</h3>
<form action="updateProduct"  method="post" >

   <div class="col-6">
      <div class="form-group">
      <label for="productCode">ProductCode</label>
      <input type="text"  placeholder="poductCode" id="poductCode" name="poductCode" class="form-control">
   </div>
     
   <div class="form-group">
       <label for="productName">ProductName</label>
       <input type="text"  placeholder="productName" id="productName" name ="productName"class="form-control">
   </div>
     
    <div class="form-group">
       <label for="productScale">Product Scale</label>
       <input type="text"  placeholder="productScale" id="productScale" name="productScale" class="form-control">
    </div>
    
     <div class="form-group">
       <label for="productdecription">Product Decription</label>
       <input type="text"  placeholder="productdecription" id="productdecription" name="productdecription" class="form-control">
    </div>
    
    <div class="form-group">
       <label for="quantityInStock">quantityIn Stock</label>
       <input type="text"  placeholder="quantityInStock" id="quantityInStock" name="quantityInStock" class="form-control">
    </div>
    
    <div class="form-group">
       <label for="buyPrice">BuyPrice</label>
       <input type="text"  placeholder="buyPrice" id="buyPrice" name="buyPrice" class="form-control">
    </div>
     
     <div class="form-group">
     <input type="Submit" class="btn btn-warning" value="Save" >
     </div>
     </div>
    </form>
  </div>
 </div>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src=".assets/js/bootstrap.min.js"></script>
</body>
</html>