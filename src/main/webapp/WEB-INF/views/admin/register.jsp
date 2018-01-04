<%@page pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<head>
    		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    		<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Example</title>
			<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
	</head>
  <body>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
    <script src="resources/assets/js/bootstrap.min.js"></script>
    
    <div class="row">
  	<div class="col-md-6 col-md-offset-3">
<form action='<s:url value="/register2"></s:url>' method="post">
  	<div class="form-group">
  		<br/><br/><br/><br/><br/><br/>
  		<label for="Ad">Ad</label>
    	<input type="text"  name="ad" class="form-control" id="Ad">
  	</div>
  	<div class="form-group">
    	<label for="Soyad">Soyad</label>
    	<input type="text" name="soyad" class="form-control" id="Soyad">
  	</div>
  	<div class="form-group">
    	<label for="Sifre">Sifre</label>
    	<input type="password" name="sifre" class="form-control" id="Sifre">
  	</div>
  	<div class="form-group">
    	<label for="Email">Email</label>
    	<input type="text" name="email" class="form-control" id="Email">
  	</div>
  	<button type="reset" value="Reset" class="btn btn-danger">Temizle</button>
   	<button type="submit" value="Register" class="btn btn-success">Onayla</button>
</form>
	</div>
	</div>
</body>
</html>