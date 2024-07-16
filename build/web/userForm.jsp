<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voguish Clothing | User Management Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/userform.css">  
        
    </head>
    <body>
        <br>
        <br>
    <center>
        <div class="logo" id="imglogo">
            <img 
                src="https://scontent.xx.fbcdn.net/v/t1.15752-9/346135522_782040833274826_885871435989762234_n.png?_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=lVh6tTBIc3cAX9lQMCs&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQbavqnRmuOwF3k-uHaCWLx-7zIWXb_MNGVPWLZJkgxBg&oe=648C5BAF"
                width="300"
                height="300"
                >
        </div>
    </center>
    <div class="container">
        <section class="box">
            <div class="formTitle">User Management Form</div>
            <div class="form1">
                <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath}/user/create">
                    <div class="form2">

                        <label class="col-sm-0 col-form-label">User ID</label>
                        <input type="text" id="userId" name="userId" class="form-control" required>

                        <label class="col-sm-0 col-form-label">Password</label>                                  
                        <input type="password" id="passWord" name="passWord" class="form-control" required>
                        
                        <label class="col-sm-0 col-form-label">First Name</label>                                  
                        <input type="text" id="firstName" name="firstName" class="form-control" required>

                        <label class="col-sm-0 col-form-label">Middle Name</label>
                        <input type="text" id="middleName" name="middleName" class="form-control">
                        
                        <label class="col-sm-0 col-form-label">Last Name</label>
                        <input type="text" id="lastName" name="lastName" class="form-control" required>

                        <label class="col-sm-0 col-form-label">Address</label>
                        <input type="text" id="completeAddress" name="completeAddress" class="form-control" required>
                        
                        <label class="col-sm-0 col-form-label">Birthday</label>
                        <input type="date" id="birthday" name="birthday" class="form-control" required>
                        
                        <label class="col-sm-0 col-form-label">Cell Number</label>
                        <input type="text" id="cellNumber" name="cellNumber" class="form-control" required>

                        <label class="col-sm-0 col-form-label">User Role</label>
                        <div class="input-group">
                            <select id="userRole" name="userRole" required class="form-control">
                                <option value="">--Select user Role--</option>
                                <option value="Customer">Customer</option>
                                <option value="Administrator">Administrator </option>
                                <!-- Add more options if needed -->
                            </select>
                        </div>
                        <br>
                        <br>
                                <div class="saveButton">
                                        <button class="btn btn-primary" style="width: 50%; margin: 20px;">Save</button>
                                        </br>
                                </div>
                                <br>
                    </div>
                </form>
            </div>
        </section>
                                <br>
                                <br>
                                <br>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/userform.js"></script>
    </body>
</html>