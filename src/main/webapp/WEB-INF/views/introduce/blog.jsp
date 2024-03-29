<%@ include file="/resources/include/header.jsp"%>

<body class="page">
	<%@ include file="/resources/include/navbar.jsp"%>


	<!-- Blog Start -->
	<div class="blog blog-page mt-125">
		<div class="container">
			<div class="section-header">
				<p>Consulting Blog</p>
				<h2>Latest From Our Consulting Blog</h2>
			</div>
			<div class="row">
				<c:forEach var="blog" items="${listTinTuc}">
					<div class="col-md-6">
						<div class="blog-item">
							<div class="blog-img">
								<img src="resources/img/${blog.hinhAnh}" alt="Blog">
							</div>
							<div class="blog-content">
								<h2 class="blog-title">${blog.tieuDe}</h2>
								<div class="blog-meta">
									<i class="fa fa-list-alt"></i> <a href="">Category</a> <i
										class="fa fa-calendar-alt"></i>
									<p>${blog.ngayTao}</p>
								</div>
								<div class="blog-text">
									<p>${blog.noiDung} </p>
									<a class="btn" href="blog?id=${blog.maTinTuc}">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<div class="row">
				<div class="col-12">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item active"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Blog End -->


	<%@ include file="/resources/include/footer.jsp"%>