<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
    .bs-example{
    	margin: 20px;
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
                <li class="active"><a href="index">Home</a></li>
                <li><a href="aboutus">about us</a></li>
                <li><a href="contactus">contact us</a></li>
                <li><a href="AllProducts">All Products</a></li>
                
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login">Login</a></li>
                <li><a href="signup">Sign up</a></li>
                
            </ul>
        </div>
    </nav>
</div><script type="text/javascript" src="js/bootstrap.min.js"> </script>
<script type="text/javascript" src="js/jquery-2.2.3.min.js"> </script>
<div class="container">
<form style="padding:5px">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="Message">Message</label>
    <input type="text" class="form-control" id="Message" placeholder="Message">
  </div>
  <div class="form-group">
    <label for="Description">Description</label>
    <textarea class="form-control" id="Description" placeholder="Description" required></textarea>
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
  <button type="reset" class="btn btn-default">Reset</button>
</form>



</div>
</body>
</html>