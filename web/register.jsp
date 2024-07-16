<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voguish Clothing | Registration Form</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    </head>
    
    <body>
      
        <div class="container center-box" id="box">
            <center>
                <h1 style="font-size: 30px;"> Customer Registration Form</h1>
            </center>
            <form id="registerForm" method="post" action="${pageContext.request.contextPath}/customer/create">
                
                <label for="inputUname"> User ID: </label><br>
                <input type="text" id="userId" name="userId" class="form-control"
                       placeholder="Enter your User ID" required>
                <br>
              
                <label for="inputPassword"> Password: </label><br>
                <input type="password" id="passWord" name="passWord" class="form-control"
                       placeholder="Create a Password" required>
                <br>
                <label for="inputCpassword"> Confirm Password: </label><br>
                <input type="password" id="inputCpassword" name="inputCpassword" class="form-control"
                       placeholder="Confirm Password" required>
                <br>
                <label for="inputFname"> First Name: </label><br>
                <input type="text" id="firstName" name="firstName" class="form-control"
                       placeholder="Enter your First Name" required>
                <br>
                <label for="inputMname"> Middle Name: </label><br>
                <input type="text" id="middleName" name="middleName" class="form-control"
                       placeholder="Enter your Middle Name (Optional)" style="margin-bottom: 20px;">
                <br>
                <label for="inputLname"> Last Name: </label><br>
                <input type="text" id="lastName" name="lastName" class="form-control"
                       placeholder="Enter your Last Name" required>
                <br>
                <label for="inputCaddress"> Complete Address: </label><br>
                <input type="text" id="completeAddress" name="completeAddress" class="form-control"
                       placeholder="Enter your Address" required>
                <br>
                <label for="birthday">Birthday: </label><br>
                <input type="date" id="birthday" name="birthday" class="form-control" placeholder="Birthday" required>
                <br>
                <label for="inputNumber"> Mobile Number: </label><br>
                <input type="text" id="cellNumber" name="cellNumber" class="form-control"
                       placeholder="Enter your Mobile Number" required>
                <br>
                <br>


                <button type="submit" class="btn btn-primary form-control" style="font-size: 15px;" value="Submit">Submit</button>
            </form>
        </div>
        <br>
        <br>
        <br>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
    </body>
</html>
