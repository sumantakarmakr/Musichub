<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>


<nav class="navbar">

<div class="container">
<a class="navbar-brand" href="index.jsp" >Home</a>
<a class="navbar-brand" href="#" >about us</a>
<a class="navbar-brand" href="#" >login</a>
<a class="navbar-brand" href="#" >Sign up</a>
<a class="navbar-brand" href="contactus.jsp" >contact us</a>
</div></nav>
      


<script type="text/javascript" src="js/bootstrap.min.js"> </script>
<script type="text/javascript" src="js/jquery-2.2.3.min.js"> </script>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="Message">Message</label>
    <input type="text" class="form-control" id="Message" placeholder="Message">
  </div>
  <div class="form-group">
    <label for="Description">Message</label>
    <textarea class="form-control" id="Description" placeholder="Description" required></textarea>
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
  <button type="reset" class="btn btn-default">Reset</button>
</form>




</body>
</html>