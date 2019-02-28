<!DOCTYPE html>
<html lang="en">
<head>
  <title>FlipKart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="cart.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>FlipKart</h1>      
    <p>Everything In One Place!!</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img src="logo.jpg" alt="FlipKart" height="30" width="42"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
          <% if(session.getAttribute("username")==null){
        	%><li><a href="index.html">LOGIN</a></li>
         
         <% 
         } else { 
         %>
         <li><a href="Logout">LOGOUT</a></li>
         <% } %>
       
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=request.getSession().getAttribute("username") %></a></li>
        <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Samsung Galaxy S10+</div>
          
        <div class="panel-body"> <a href="samsungS10.html">
        <img src="s.jpg"  width="270px" height="190px"></a></div></div>
        <div class="panel-body"><a href="cart.jsp"><input type="button" value="buy"></a></div>
      </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">OnePlus 7</div>
        <div class="panel-body"></div>
        <div class="panel-body"> <a href="oneplus7.html">
        <img src="o.jpg"  width="270px" height="190px"></a></div></div>
        <div class="panel-body"><a href="index.html"><input type="button" value="buy"></a></div>
      </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">Iphone X</div>
        <div class="panel-body"></div>
        <a href="iphonex.html">
        <img src="x3.jpg"  width="270px" height="190px"></a></div>
        <div class="panel-body"><a href="index.html"><input type="button" value="buy"></a></div>
      </div>
      
      
    </div>
  </div>
<br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Samsung Galaxy S9</div>
           <div class="panel-body"></div>
        <div class="panel-body"> <a href="S9.html">
        <img src="s9.jpg"  width="270px" height="190px"></a></div></div>
        <div class="panel-body"><a href="index.html"><input type="button" value="buy"></a></div>
      </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">OnePlus 6t</div>
           <div class="panel-body"></div>
        <div class="panel-body"> <a href="oneplus6t.html">
        <img src="6t.jpg" width="270px" height="190px"></a></div></div>
        <div class="panel-body"><a href="index.html"><input type="button" value="buy"></a></div>
      </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Iphone XS</div>
          <div class="panel-body"></div>
        <div class="panel-body"> <a href="iphoneXS.html">
        <img src="i.jpg"  width="270px" height="190px"></a></div></div>
        <div class="panel-body"><a href="index.html"><input type="button" value="buy"></a></div>
      </div>
    
   </div>
    </div>
<br><br>

<footer class="container-fluid text-center">
<div class="footer-copyright text-center py-3">© 2019 Copyright</div>
</footer>

</body>
</html>
