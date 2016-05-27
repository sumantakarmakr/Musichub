<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FurnitureStation</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script><style type="text/css">
    .bs-example{
    	margin: 20px;
    }
 
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  
  .footer
  {
  text-align:center;
  }
  #image:hover
  {
  opacity:1.0;
  
  }
  .col-sm-2
  {
  text-align:center;
  }
  .col-sm-2
  {
  text-align:center;
  }
  </style>
</head>
<body>


<div class="menu">
    <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">MusicHub</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/ ">Home</a></li>
                <li><a href="aboutus">about us</a></li>
                <li><a href="contactus">contact us</a></li>
                <li><a href="AllProducts">All Products</a></li>
                <li><a href="reg_product">Product Registration</a></li>
                
            </ul>
        </div>
    </nav>
</div>

    <div align="center" class="container">
     <c:url var="userRegistration" value="saveUser.html" />
        <form:form action="insert" method="post" modelAttribute="productmodel">
            <table border="0"  class="table table-bordered table-striped">
                <tr>
                    <td colspan="2" align="center">
                    <h2>Enter Products</h2>
                    </td>
                </tr>
                <tr>
                    <td align="right">Group Name:</td>
                    <td><div class="form-group"><form:input path="GroupName" /></div></td>
                </tr>
                <tr>
                    <td align="right">Product Name:</td>
                    <td><div class="form-group"><form:input path="Name" /></div></td>
                </tr>
                <tr>
                    <td align="right">Product Price:</td>
                    <td><div class="form-group"><form:input path="Price" /></div></td>
                </tr>
                <tr>
                    <td align="right">Product Quantity:</td>
                    <td><div class="form-group"><form:input path="Qty" /></div></td>
                </tr>
               <tr>
                    <td align="right">Description</td>
                    <td><div class="form-group"><form:input path="Desc" /></div></td>
                </tr>
                <tr>
                    <td align="right">Image</td>
                    <td><div class="form-group"><form:input path="Photo" /></div></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </form:form>
    </div>

<div class="container"> 
<footer class="footer">
<div class="container">
<p class="text-muted">&copy; All right received</p>
</div>
</footer></div>
</body>
</html>
