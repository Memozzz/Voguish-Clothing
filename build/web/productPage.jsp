<%-- 
    Document   : productPage
    Created on : May 18, 2023, 12:06:56 AM
    Author     : 63955
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productpage.css">
        <title>Voguish Clothing | Products</title>
    </head>

    <body style="background-image: url('img/summer.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center,center 300px;">
        <!-- navbar start -->   
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="img/logo.png" alt="Website Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/home">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/product">PRODUCTS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/user">USER Management</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- navbar end -->

        <!-- search bar start -->

        <div class="container mt-4"> 
            <div class="row d-flex justify-content-center"> 
                <div class="col-md-9"> 
                    <div class="card p-4 mt-3"> 
                        <h3 class="heading mt-2 text-center">Add Products or Buy!</h3> 
                        <div class="d-flex justify-content-center px-5"> 
                            <div class="search"> 
                                <input type="text" class="search-input" placeholder="Product ID..."> 
                                <a href="#" class="search-icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                    </svg> 
                                    <i class="fa fa-search"></i> </a> 
                            </div> 
                        </div>
                        <div class="d-flex justify-content-center px-5"> 
                            <div class="search"> 
                                <input type="text" class="search-input" placeholder="Product Name..."> 
                                <a href="#" class="search-icon"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                    </svg>
                                    <i class="fa fa-search"></i> </a> 
                            </div> 
                        </div>
                    </div> 
                </div> 
            </div> 
        </div> 


        <table>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Description</th>
                <th>Size</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <!-- Sample data -->
            <c:forEach items="${productList}" var="pro">
                <tr>
                    <td>${pro.productId}</td>
                    <td>${pro.productName}</td>
                    <td>${pro.description}</td> 
                    <td>${pro.size}</td>
                    <td>${pro.price}</td>
                    <td>${pro.quantity}</td>
                    <td>
                        <div class="d-flex justify-content-center">
                            <a href="${pageContext.request.contextPath}/product/update/form?productId=${pro.productId}" class="btn btn-sm btn-link">Edit</a>
                            <a href="${pageContext.request.contextPath}/product/delete?productId=${pro.productId}" class="btn btn-sm btn-link   " onclick="confirmDelete()">Delete</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            <!-- Add more rows for additional products -->
        </table>
        <br>
        <br>
        <br>
        <a class="button" href="${pageContext.request.contextPath}/product/create/form">Add Product</a>
        <!-- scripts start -->
        <script type="text/javascript" src="/js/bootstrap.min.js"></script>     
        <script type="text/javascript" src="/js/jquery-3.6.4.js"></script>

        <script>
            function updateLoginButton() {
                var loginButton = document.querySelector('.btn-primary');
                if (window.innerWidth < 992) {
                    loginButton.classList.add('d-lg-none');
                } else {
                    loginButton.classList.remove('d-lg-none');
                }
            }
            window.addEventListener('resize', updateLoginButton);
            var collapseElementList = [].slice.call(document.querySelectorAll('.navbar-collapse'));
            var collapseList = collapseElementList.map(function (collapseEl) {
                return new bootstrap.Collapse(collapseEl);
            });
             function confirmDelete() {
       if (confirm("Are you sure you want to delete this Product?")) {
            // If the user confirms, show the alert and then navigate to the delete URL
            alert("Product has been deleted");
        } else {
            // If the user cancels, the link will not navigate to the delete URL
            event.preventDefault();
        }
    }
        </script> 
        <!-- scripts end -->

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <footer>
            <jsp:include page="footer.jsp" />  
        </footer>
    </body>
</html>
