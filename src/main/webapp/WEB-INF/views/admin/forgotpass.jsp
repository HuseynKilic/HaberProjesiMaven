<%@page pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Forgot Password</title>
	<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
  </head>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="resources/assets/js/bootstrap.min.js"></script>
    
   <div class="row">
   <div class="col-md-6 col-md-offset-3">
		<form action='<s:url value="/forgotpass2"></s:url>' method="GET">
  			<div class="form-group">
  				<br/><br/><br/><br/><br/><br/><br/><br/>
    				<label for="Kullanici adi">E-mail</label>
    				<input type="text"  name="email" class="form-control" id="Email" placeholder="Email">
  			</div>
  			<button type="submit" value="Onayla" class="btn btn-primary btn-lg">Şifremi Gönder</button>
  		</form>
	</div>
	</div>
</body>
</html>