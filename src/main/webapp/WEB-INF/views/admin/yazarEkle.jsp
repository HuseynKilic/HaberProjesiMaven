<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin Yönetim Paneli</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<jsp:include page="${request.contextPath}/css"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<jsp:include page="${request.contextPath}/header"></jsp:include>
		<jsp:include page="${request.contextPath}/menu"></jsp:include>


		<div class="content-wrapper">

			<section class="content-header">
				<h1>Yazar İşlem</h1>

			</section>


			<section class="content">

				
				<div class="box box-info">
					<div class="box-header">
						<h3 class="box-title">Yazı Giriş</h3>
					</div>

					  <div class="box-body pad">
					  
					  
						<form action='<s:url value="yazarkayit"></s:url>' method="post">
								
                      <label>Yazar Ad Soyad</label>
                      <input name="yazarAdi" type="text" class="form-control" placeholder="Yazar isim gir ..." >
                      <label>Yazar Resim</label>
                      	<c:if test="${ not empty id }">
						<iframe
							src='http://localhost:8090/resim/index.php?resim_id=<c:out value="${ id }"></c:out>'
							style="width: 100%; height: 200px;" frameborder="0"></iframe>
					    </c:if>
					  <label>Yazar Grup</label>
                      
                        <select name="yazarGrup" class="form-control">
                    <option value="siyaset" >Siyaset</option>
                    <option value="spor">Spor</option>
                    <option value= "ekonemi">Ekonemi</option>
                    <option value="saglik">Sağlık</option>
                        </select>
			
			
			   
                    <button type="submit" name="onay" id="onay-btn" class="btn btn-lg btn-info pull-right"><i class="fa fa-save"></i>
                       Kaydet
                       </button>
						</form>
						<div>
						
						
						</div>
						
					</div>
				</div>






			</section>

		</div>


		<jsp:include page="${request.contextPath}/footer"></jsp:include>

	</div>
	<!-- ./wrapper -->
	<jsp:include page="${request.contextPath}/js"></jsp:include>

</body>
</html>
