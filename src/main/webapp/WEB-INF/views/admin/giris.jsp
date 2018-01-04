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
    
    <title>Login</title>
	<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="resources/assets/js/bootstrap.min.js"></script>
    
   <div class="row">
   <div class="col-md-6 col-md-offset-3">
		<form action='<s:url value="/giris2"></s:url>' method="POST">
  			<div class="form-group">
  				<br/><br/><br/><br/><br/><br/><br/><br/> 
    				<label for="Kullanici adi">Kullanıcı adı</label>
    				<input type="text"  name="ad" class="form-control" id="Kullanici adi" placeholder="ad">
  				</div>
  				
  			<div class="form-group">
    				<label for="Sifre">Şifre</label>
    				<input type="password" name="sifre" class="form-control" id="sifre" placeholder="sifre">
  				</div>
   					<button type="submit" value="Login" class="btn btn-primary btn-lg">Giriş</button>
   					<a href='<s:url value="/register"></s:url>' class="btn btn-primary btn-lg active" role="button">Kayıt</a>
   					
		</form>
		
		<div class="form-group">
					<br/></br>
    	<form action='<s:url value="/forgotpass"></s:url>'>
    				<button type="submit" value="Forgot" class="btn btn-primary btn-lg active" role="button">Şifremi Unuttum</button>
		</form>
				</div>
		
		
		
	</div>
    </div>
</body>
</html>