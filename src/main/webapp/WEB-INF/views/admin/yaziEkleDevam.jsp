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
				    

		 <div class="box-body pad">
		 <c:if test="${ not empty yazar }">
		 <c:out value="${yazar }"></c:out>
		 ----
		 <c:out value="${yazarurl }"></c:out>
		 <iframe
							src='http://localhost:8090/resim/index.php?resim_id=0000<c:out value="${yazar }"></c:out>'
							style="width: 100%; height: 200px;" frameborder="0"></iframe>
		 
		 </c:if>
		
		</div>
		
		<div>
	    <a href='<s:url value="/edit-/${yazar}-/${yazarurl }-/${klasor}"></s:url>' class="btn btn-danger">Editle</a>
		
		
		</div>
	

				







			</section>

		</div>


		<jsp:include page="${request.contextPath}/footer"></jsp:include>

	</div>
	<!-- ./wrapper -->
	<jsp:include page="${request.contextPath}/js"></jsp:include>

</body>
</html>
