<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Cart</title>
     <link rel="stylesheet" href="../css/cart.css">
     <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/Home.css">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
   
     
   </head>
<body>

    <%
        String msg = request.getParameter("msg");
        if ("notPossible".equals(msg)) {
    %>
        <h3 class="alert">There is only one quantity! So click on remove!</h3>
    <% } else if ("inc".equals(msg)) { %>
        <h3 class="alert">Quantity Increased Successfully!</h3>
    <% } else if ("dec".equals(msg)) { %>
        <h3 class="alert">Quantity Decreased Successfully!</h3>
    <% } else if ("removed".equals(msg)) { %>
        <h3 class="alert">Product Successfully Removed!</h3>
    <% } %>

    <!-- Product Section -->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5" id="product">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <!-- card 1 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/Seeds&Sapling.jpeg" alt="Seeds and Sapling" >
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Seeds And Sapling</h5>
                            <p class="card-text">Organic seeds, Hybrid seeds, Saplings for fruit trees and vegetables, All types of seeds</p>
                            <a href="admin/seedsAndSapling.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 2 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/Soil.jpeg" alt="Fertilizers and Soil" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Fertilizers and Soil Amendments</h5>
                            <p class="card-text">Organic fertilizers, Compost, Soil conditioners, Pest control products</p>
                            <a href="admin/fertilizersAndSoilAmendments.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 3 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/Tools.jpeg" alt="Tools and Equipment" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Tools and Equipment</h5>
                            <p class="card-text">Hand tools (shovels, rakes, hoes), Power tools (tillers, chainsaws), Irrigation systems</p>
                            <a href="admin/toolsAndEquipment.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 4 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/machines.jpeg" alt="Farm Machinery" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Farm Machinery</h5>
                            <p class="card-text">Tractors, Plows, Harvesters, Seed drills, All types of machines</p>
                            <a href="admin/farmMachinery.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 5 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/smartTechno.jpeg" alt="Technology and Smart Farming" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Technology and Smart Farming</h5>
                            <p class="card-text">Drones for monitoring crops, GPS systems for precision farming</p>
                            <a href="admin/technologyAndSmartFarming.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 6 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/Greenhouse.jpeg" alt="Greenhouse and Hydroponics" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Greenhouse and Hydroponics</h5>
                            <p class="card-text">Greenhouse kits, Hydroponics systems, Grow lights, Nutrient solutions</p>
                            <a href="admin/greenhouseAndHydroponics.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 7 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/sustinableSol.jpeg" alt="Sustainable Farming Solutions" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Sustainable Farming Solutions</h5>
                            <p class="card-text">Rainwater harvesting systems, Solar-powered equipment, Composting units, Solar systems</p>
                            <a href="admin/sustainableFarmingSolutions.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
                <!-- card 8 -->
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Sale badge -->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                        <!-- Product image -->
                        <img class="card-img-top product-img" src="Images/eduFarm.jpeg" alt="Educational Resources" />
                        <!-- Product details -->
                        <div class="card-body p-4">
                            <h5 class="card-title">Educational Resources</h5>
                            <p class="card-text">Books and guides on farming techniques, Online courses and webinars</p>
                            <a href="admin/educationalResources.jsp" class="btn btn-primary btn-sm">More Products</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
    <!-- Footer -->
    <footer class="py-5 bg-dark fs-5 foot">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
        </div>
    </footer>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <script src="index.js"></script>
</body>
</html>
