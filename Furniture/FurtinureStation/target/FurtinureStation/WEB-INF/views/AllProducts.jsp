<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <title>Music hub</title>
<link rel='stylesheet prefetch' href='//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<style type="text/css">
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
<div >
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

<div ng-app="myApp" ng-controller="customersCtrl"> 


    
<div class="container"><form >
 <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>

<input type="text" id="mytext" class="form-control" ng-model="search" ng-init="search='${param.searchkeyword}'" /></div></div></form>
<hr>
   <c:if test="${!empty productList}">
  <table id="searchObjResults"  class="table table-bordered table-striped">
  <tr><th>
  <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
  Product ID
  <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th>
  <th><a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">Name
  <span ng-show="sortType == 'tastiness' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'tastiness' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th>
  <th>
  <a href="#" ng-click="sortType = 'tastiness'; sortReverse = !sortReverse">
  Photos
  <span ng-show="sortType == 'tastiness' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'tastiness' && sortReverse" class="fa fa-caret-up"></span>
          </a>
  </th>
  <th></th>
  <th></th>
  <th></th>
  </tr>
    <c:forEach items="${productList}" var="user">
  <tr ng-repeat="x in myData | filter:search">
    <td><c:out value="${user.id}"/> </td>
    <td><c:out value="${user.name}"/></td>
    <td><img height="100px" width="100px" src="<c:out value="${user.photo}"/>"/></td>
    <td><a href="productdetails?ID=${user.ID}"/>view Details</a></td>
    <td><a href="editproduct?ID=${user.ID}"/>">Edit</a></td>
    <td><a href="delete?ID=${user.ID}"/>">Delete</a></td>
  </tr>  </c:forEach>
</table> </c:if>

</div>
</div>


<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope) {

  $scope.myData =${list};
 
});


</script>



</body>
</html>
