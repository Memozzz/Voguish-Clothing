<%-- 
    Document   : productForm
    Created on : May 16, 2023, 9:43:58 PM
    Author     : 63955
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voguish Clothing | Product Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/productform.css">  
        
    </head>
    <body>
<br>
<br>
        <center><div class="logo" id="imglogo">
                    <img 
                    src="https://scontent.xx.fbcdn.net/v/t1.15752-9/346135522_782040833274826_885871435989762234_n.png?_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=lVh6tTBIc3cAX9lQMCs&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQbavqnRmuOwF3k-uHaCWLx-7zIWXb_MNGVPWLZJkgxBg&oe=648C5BAF"
                    width="300"
                    height="300"
                    >

                </div></center>
        <div class="container">
            <section class="box">

                
                    <div class="formTitle">Products Form</div>

                        <div class="form1">
                            <form id="editProductForm" name="editProductForm" method="post" action="${pageContext.request.contextPath}/product/update">
                                <div class="form2">

                                
                                       
                                <label class="col-sm-0 col-form-label">Product's ID</label>
                                <input type="text" id="productId" name="productId" class="form-control" 
                                       value="<c:out value='${productDetails.productId}'/>" readonly>
                                
                                <label class="col-sm-0 col-form-label">Product's Name</label>                                  
                                <input type="text" id="productName" name="productName" class="form-control"
                                       value="<c:out value='${productDetails.productName}'/>" required>
                                 

                                <label class="col-sm-0 col-form-label">Description</label>
                                <input type="text" id="description" name="description" class="form-control"
                                       value="<c:out value='${productDetails.description}'/>" required>
                                  

                                <label class="col-sm-0 col-form-label">Size</label>
                                <input type="text" id="size" name="size" placeholder="0" class="form-control" 
                                       value="<c:out value='${productDetails.size}'/>" required>
                                   
                                        
                                <label class="col-sm-0 col-form-label">Price</label>
                                <input type="text" id="price" name="price" placeholder="0.00" class="form-control"
                                       value="<c:out value='${productDetails.price}'/>" required>

                                
                                <label class="col-sm-0 col-form-label">Quantity</label>
                                <input type="text" id="quantity" name="quantity" placeholder="0" class="form-control"
                                       value="<c:out value='${productDetails.quantity}'/>"required>
                                   
                                </div>
                                    
                                <div class="saveButton">
                                        <button class="btn btn-primary" style="width: 50%; margin: 20px;">Save</button>
                                        </br>
                                </div>
                                <br>
                            </form>
                    </div>
            </section>
                                <br>
                                <br>
                                <br>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/editProduct.js"></script>
    </body>
</html>