<%@page isELIgnored="false" %>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix= "c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Bags Collection</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value='/'/> ">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <c:forEach var="Category" items="${CategoryList}">
            <li><a href="#">${Category.catname}</a></li>
            </c:forEach>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Payment Facilities<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Online payment</a></li>
            <li><a href="#">Cash on Delivery</a></li>
            <li><a href="#">Credit and Debit card</a></li>
          </ul>
        </li>
        <li><a href="#">About us</a></li>
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Edit<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Category">Manage Category</a></li>
            <li><a href="Supplier">Manage Supplier</a></li>
            <li><a href="Product">Manage Product</a></li>
          </ul>
        </li>
        </ul>
     <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-book"></span>Register</a></li>
        <li><a href="Login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
         </ul>
    
    </div>
  </div>
</nav>