<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Travelling Bags </a></li>
            <li><a href="#">Hand bags</a></li>
             <li><a href="#">Purses</a></li>
             <li><a href="#">Kids bags</a></li>
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
      <li><a href=" Register"><span class="glyphicon glyphicon-book"></span>Register</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Login</a></li>
         
      </ul>
    </div>
  </div>
</nav>





</body>
</html>