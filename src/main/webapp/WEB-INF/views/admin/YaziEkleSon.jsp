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
				<h1>Yazı Ekleme</h1>

			</section>

			<section class="content">
			
			<div class="box-body pad">
		<button onclick="myFunction()">Editor Aç/Kapa</button>
		</div>
		<div id="myDIV" class="box-body pad" style="display: none;">
						<form action='<s:url value="ipsumkayit"></s:url>' method="post">
						<input type="hidden" name="id"  value="${ id}">
							<textarea class="ckeditor" id="editor1" name="editor1" rows="15"
								cols="80">
								<img id="res" alt="resim patladı caktırma (.jpg olmalı uzantı):)" src="http://localhost:8090/resim/server/php/files/<c:out value="${klasor}"></c:out>/thumbnail/<c:out value="${yazarurl}"></c:out>" style="float:right; height:125px; width:125px" />
                                <c:forEach items="${lines}" var="item">
				
						<c:out value="${ item }"></c:out>
						
					</c:forEach>
							         
                    </textarea>
                    <button type="submit" name="onay" id="onay-btn" class="btn btn-lg btn-info pull-right"><i class="fa fa-save"></i>
                    </button>
						</form>
		</div>
			
		<script type="text/javascript">
		
		function myFunction() {
		    var x = document.getElementById("myDIV");
		    if (x.style.display === "none") {
		        x.style.display = "block";
		    } else {
		        x.style.display = "none";
		    }
		}
		
		
		
		</script>
				    

		 




			</section>

		</div>


		<jsp:include page="${request.contextPath}/footer"></jsp:include>

	</div>
	<!-- ./wrapper -->
	<jsp:include page="${request.contextPath}/js"></jsp:include>

</body>
</html>
