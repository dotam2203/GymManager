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
                    <div class="blog__details__text">
                        <img src="http://localhost:8080/GymManager/resources/img/${tinTuc.hinhAnh}" alt="">
                        <h2>${tinTuc.tieuDe}</h2>
                        <p>${tinTuc.noiDung}</p>
                        
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                                <div class="blog__details__author">
                                	
                                    <div class="blog__details__author__pic">
                                        <img src="resources/img/author.png" alt="" style= "width: 100px;height:100px ">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <span>${tinTuc.nhanVien.tenNV} (</span> <span>${tinTuc.nhanVien.taiKhoan.phanQuyen.chucVu} )</span>
                                    </div>
                                     <div class="blog__details__author__text">
                                        <span>${tinTuc.ngayTao}</span>
                                    </div>
                                </div>
                                   
                        </div>
                    </div>
                    
            </div>
            </div>
            </div>
	<!-- Blog End -->


	<%@ include file="/resources/include/footer.jsp"%>