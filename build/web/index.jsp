<%-- 
    Document   : index
    Created on : Apr 4, 2023, 10:15:21 PM
    Author     : 63955
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voguish Clothing | Log In</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
    
    <div class="container">
        <div class="row px-3">
            <div class="col-lg-10 col-xl-9 card flex-row mx-auto px-0">
                <div class="img-left d-none d-md-flex" style="background: url('img/side.jpg') center;"></div>
                <div class="card-body">
                    <h4 class="title text-center mt-4">
                        Voguish Clothing
                    </h4>
                    <form class="form-box px-3" method="post" action="${pageContext.request.contextPath}/home">
                        <div class="form-floating mb-4">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Password</label>
                        </div>
                        <br>

                        <div class="mb-3">
                            <a href="${pageContext.request.contextPath}/home" class="btn" role="button" aria-pressed="true" id="btn1">Log In</a>
                        </div>

                        <div class="text-center">
                            <a href="#" class="forget-link">
                                Forget Password?
                            </a>
                        </div>

                        <hr class="my-4">

                        <div class="text-center mb-2">
                            Don't have an account?
                            <a href="${pageContext.request.contextPath}/customer/registration" class="register-link">
                                Register here
                            </a>
                        </div>
                    </form>
                </div>                
            </div>
        </div>                     
    </div>                     
    </body>
</html>
