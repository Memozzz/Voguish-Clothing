<%-- 
    Document   : index.html
    Created on : Apr 10, 2023, 10:21:12 PM
    Author     : 63955
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <title>Voguish Clothing | Home</title>
</head>

<body>
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
    <!-- Header start -->
 
</div>
  <img src="img/bg.jpg" style="width: 100%; height: 100%; object-fit: cover;">
</header>
      <br>
      <br>
    <!-- Header end -->
    <!-- Item Collection Start -->
<section id = "collection" class="">
    <div class="container">
        <div class="title text-center">
            <h2 class="position-relative d-inline-block">New Collection</h2>
        </div>
        <div class="row">
            <div class="d-flex justify-content-center mt-5">
                <button type="button" class="btn m-2 text-dark active-filter-btn">All</button>
                <button type="button" class="btn m-2 text-dark">Best Sellers</button>
                <button type="button" class="btn m-2 text-dark">Featured</button>   
                <button type="button" class="btn m-2 text-dark">New Arrivals</button> 
            </div>
            <div class="collection-list mt-4 row">
                  <!-- Item 1 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item1.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Mini Dress</p>
                        <span class="fw-bold">&#8369 375.00</span>
                    </div>  
                </div>
                <!-- Item 2 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item2.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Floral Shirt</p>
                        <span class="fw-bold">&#8369 375.00</span>
                    </div>  
                </div>
                <!-- Item 4 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item4.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Women Sun Straw Hat</p>
                        <span class="fw-bold">&#8369 199.00</span>
                    </div>  
                </div>
                <!-- Item 3 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item3.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Polo</p>
                        <span class="fw-bold">&#8369 400.00</span>
                    </div>  
                </div>
                <!-- Item 5 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item5.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Summer Dress</p>
                        <span class="fw-bold">&#8369 500.00</span>
                    </div>  
                </div>
                <!-- Item 6 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item6.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Black Shirt</p>
                        <span class="fw-bold">&#8369 300.00</span>
                    </div>  
                </div>
                <!-- Item 7 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item7.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Summer Outgoing Set(Men)</p>
                        <span class="fw-bold">&#8369 1,999.00</span>
                    </div>  
                </div>
                <!-- Item 8 -->
                <div class="col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class="collection-img position-relative">
                        <img src="img/item8.jpg" class="w-100">
                        <span class="position-absolute bg-primary text-white d-flex  align-items-center justify-content-center">Sale</span>
                    </div>  
                    <div class="text-center">
                        <div class="rating">
                        </div>
                        <p class="text-capitalize my-1">Summer Outgoing Set(Women)</p>
                        <span class="fw-bold">&#8369 1,999.00</span>
                    </div>      
                </div>
            </div>
        </div>
    </div>

</section>
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
</script>   
<script>
    const carouselContainer = document.querySelector('.carousel-container');
const carouselText = document.querySelector('.carousel-text');
const carouselItems = carouselText.querySelectorAll('.carousel-item');

let currentItem = 0;

function changeCarouselItem() {
  carouselText.style.transform = `translateX(-${currentItem * 100}%)`;
  currentItem = (currentItem + 1) % carouselItems.length;
}

setInterval(changeCarouselItem, 5000);</script>
    <!-- scripts end -->
    
    <br>
    <br>
    <br>
    <br>
    <br>
    <jsp:include page="footer.jsp" />  
</body>
</html> 