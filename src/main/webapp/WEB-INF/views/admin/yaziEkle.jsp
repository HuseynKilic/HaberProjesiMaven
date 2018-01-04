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
			
		<div class="col-sm-12">
			<h1>Yazar Listesi</h1>
			
			<table class="table">
				<thead>
					<tr>
						
						<th scope="col">Adı</th>
						<th scope="col">Grup</th>
						<th scope="col">Resim</th>
						
					</tr>
				</thead>
				<tbody>
				<c:if test="${ not empty yls }">
					<c:forEach items="${yls }" var="item">

					<tr>
						<th scope="row"><c:out value="${ item.getYazarAdi() }"></c:out></th>
						<td><c:out value="${ item.getYazarGrup() }"></c:out></td>
						<td><iframe
	src='http://localhost:8090/resim/server/php/files/<c:out value="${item.getYazarResimKlasor() }"></c:out>/thumbnail/<c:out value="${item.getYazarResimUrl() }"></c:out>'
							style="width: 100%; height: 100px;" frameborder="0"></iframe>
						</td>
						<td><a href='<s:url value="/sil/${ item.getYazarId() }-/${ item.getYazarResimKlasor() }"></s:url>' class="btn btn-danger">Sil</a></td>
						<td><a href='<s:url value="yaziekle/${ item.getYazarId() }-/${item.getYazarResimUrl() }-/${ item.getYazarResimKlasor() }"></s:url>' class="btn btn-info">Yazi Ekle</a></td>
	                    
					</tr>
					</c:forEach>
				</c:if>
				</tbody>
			</table>
		</div>
		
		

				







			</section>

		</div>


		<jsp:include page="${request.contextPath}/footer"></jsp:include>

	</div>
	<!-- ./wrapper -->
	<jsp:include page="${request.contextPath}/js"></jsp:include>

</body>
</html>
