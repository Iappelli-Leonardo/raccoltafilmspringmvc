<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Rimozione Elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
					  ${errorMessage}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-danger alert-dismissible fade show d-none" role="alert">
					  Esempio di operazione fallita!
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-info alert-dismissible fade show d-none" role="alert">
					  Aggiungere d-none nelle class per non far apparire
					   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
			  
			  <div class='card'>
				    <div class='card-header'>
				        <h5>Stai per rimuovere l' elemento:</h5> 
				    </div>
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Id:</dt>
							  <dd class="col-sm-9">${remove_film_attr.id}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Titolo:</dt>
							  <dd class="col-sm-9">${remove_film_attr.titolo}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Genere:</dt>
							  <dd class="col-sm-9">${remove_film_attr.genere}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data pubblicazione:</dt>
							  <dd class="col-sm-9"><fmt:formatDate type="date" value = "${remove_film_attr.dataPubblicazione}" /></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Durata ('):</dt>
							  <dd class="col-sm-9">${remove_film_attr.minutiDurata}</dd>
					    	</dl>
					    	
					    </div>
				<!-- end card -->
				
					  <form method="post"  action="${pageContext.request.contextPath}/film/delete" novalidate="novalidate" >
			    	<input type="hidden" name="idFilm" value="${remove_film_attr.id}">
			    	<div class='card-footer'>
			    	 <a href="${pageContext.request.contextPath }/film/" class='btn btn-outline-secondary' style='width:80px'>
				            <i class='fa fa-chevron-left'></i> Back
				        </a>
						<button type="submit" name="submit" value="submit" id="submit" class="btn btn-danger">Rimuovi</button>
				       
				    </div>
				</form>
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>