    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/headerfooter/header.jsp" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/s1.jpg"  width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/s2.jpg"  width="460" height="345">
      </div>
    
     
      <div class="item">
        <img src="resources/images/s3.jpg"  width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</br>

<div class="container" >
<div class="row">

<div class="col-sm-3">
<p >Get music and listen to the latest songs from your favorite artists for FREE.
 Discover new music on MTV.</p>
</div>
<div class="col-sm-2" >
<img id="image" src="resources/images/f1.jpg" height="150px" width="150px"/>
<div class="carousel-caption">
<a href="AllProducts?searchkeyword=Flute">Flute</a>
</div>
</div>
<div class="col-sm-2">
<img id="image" src="resources/images/f2.jpg" height="150px" width="150px"/>
<div class="carousel-caption">
<a href="AllProducts?searchkeyword=Drum">Drum</a>
</div>
</div>
<div class="col-sm-2">
<img id="image" src="resources/images/f3.jpg" height="150px" width="150px"/>
<div class="carousel-caption">
<a href="AllProducts?searchkeyword=Guitar">Guitar</a>
</div>
</div>
<div class=" col-sm-3">
<p>Get music and listen to the latest songs from your favorite artists for FREE.
 Discover new music on MTV.</p>
</div>
</div></div>

<%@ include file="/WEB-INF/views/headerfooter/footer.jsp" %>