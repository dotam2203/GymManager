<%@ include file="/resources/include/sidebar.jsp"%>
<style type="text/css">
.hethan {
	/*  opacity: 0.75; */
	background: linear-gradient(#C0C18E, #C1C1C1);
}

.hoatdong {
	background: linear-gradient(#2a6df5, #55acee);
	color: white;
}

.chuathanhtoan {
	color: white;
	background: linear-gradient(#f55c47, #ff7b54);
}
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 6; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.8); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
}

/*========= XOAY THE =========*/
.flip-card {
	border-radius: 5px;
	background-color: transparent;
	width: 150px;
	height: 250px;
	perspective: 1000px;
}

.flip-card-inner {
	border-radius: 5px;
	position: relative;
	width: 100%;
	height: 100%;
	text-align: center;
	transition: transform 0.6s;
	transform-style: preserve-3d;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.flip-card:hover .flip-card-inner {
	transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
	border-radius: 5px;
	position: absolute;
	width: 100%;
	height: 100%;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
}

.flip-card-front {
	color: black;
}

.flip-card-back {
	background: linear-gradient(#282083, #595F9D);
	color: white;
	transform: rotateY(180deg);
}

/*============= button================*/
.button {
	border-radius: 4px;
	/*background: linear-gradient(#D41383,#D514DE);*/
	background: linear-gradient(#2630DE, #245CD4);
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 15px;
	padding: 10px;
	width: 100px;
	height: 50px transition: all 0.5s;
	cursor: pointer;
	margin: 10px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 20px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

.center {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/navbarmn.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="content">
	<div class="row">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<div class="col-sm-6 text-left">
						<h5 class="title">Thiết Bị</h5>
					</div>

					<div class="col-sm-12">
						<div class="btn-group btn-group-toggle float-right"
							data-toggle="buttons">
							<label class=" tablinks btn btn-sm btn-primary btn-simple active"
								id="0" onclick="user(event, 'profile')"> <input
								type="radio" name="options" checked> <span
								class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Thông tin bài viết</span> <span class="d-block d-sm-none"> <i
									class="tim-icons icon-single-02"></i>
							</span>
							</label>
						</div>
					</div>
				</div>
				<!--               ==================nội dung======================= -->
				<div id="profile" class="card-body tabcontent">
					<form action="updatetintuc" method="post"
						enctype='multipart/form-data' itemid="${tinTuc}">
						<div class="row">
							<div class="col-md-4 pr-md-1">
								<div class="form-group">
									<label>Mã Tin Tức</label> <input type="text"
										class="form-control" placeholder="Xuất xứ" readonly="readonly"
										value="${tinTuc.maTinTuc}">
								</div>

							</div>

							<div class="col-md-8 pl-md-1">
								<div>
									<label>Tiêu Đề </label> <input type="text"
										class="form-control" placeholder="Tiêu đề bài viết" name="tieude" value="${tinTuc.tieuDe}">
									
								</div>
							</div>
						</div>
				<div class="row">
							<div class="col-md-4 pr-md-1">
								<div class="form-group">
									<label>Nhân Viên Tạo Bài Viết </label> 
									 <input type="text"
										disabled="disabled" class="form-control"
										placeholder="Mã nhân viên" value="${tinTuc.nhanVien.maNV}"
										>
								</div>
							</div>
							<div class="col-md-4 px-md-1">
								<div class="form-group">
									<label>Ngày Tạo</label> <input type="text"
										class="form-control" placeholder="Ngày tạo"
										value="${tinTuc.ngayTao}">
								</div>
							</div>
							<div class="col-md-4 pl-md-1">
								<div >
									<label>Hình Ảnh</label> <span hidden>${hinhanh}</span>  <input type="file"
										class="form-control" placeholder="Link ảnh" name="hinhanh">
									<img
										src="http://localhost:8080/GymManager/resources/img/${tinTuc.hinhAnh}"
										alt="Ảnh thiết bị" style="width: 100px; height: 100px" >
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Nội Dung Bài Viết</label>
									<textarea name="noidung" class="form-control" placeholder="Nội dung bài viết"
										>${tinTuc.noiDung} </textarea>
								</div>
							</div>
						</div>
						<div class="card-footer">
							<button type="submit" class="btn btn-fill btn-primary">Lưu</button>
						</div>
					</form>

				</div>
				<script>
         const formatter = new Intl.NumberFormat('en-US', {
         	style : 'currency',
         	currency : 'VND',
         	minimumFractionDigits : 2
         })
         
         function layloaithietbi() {
         	//alert(document.getElementById("lopdvss").value);
         	//alert(document.getElementById("goitapss").value);
         	function layoption(start, end, ten) {
         		var options = "<option hidden checked> </option>";
         		for (var loaithietbi = start; loaithietbi <= end; loaithietbi++) {
         			options += "<option>" + ten[loaithietbi] + "</option>";
         
         		}
         		return options;
         	}
         	//alert(document.getElementById("lopdvss").value);
         
         }
      </script>
				<script type="text/javascript"
					src="//js.nicedit.com/nicEdit-latest.js"></script>
				<script type="text/javascript">
   bkLib.onDomLoaded(function() {
   	nicEditors.allTextAreas()
   });
</script>
				<!--     ==============================end=====================================       -->



				


		
			</div>
		</div>


		
	</div>
</div>
<!--       ==========================end========================== -->


</div>
</div>

<script>
var url_string = window.location.href;
var url = new URL(url_string);
var check = url.searchParams.get("thongbao");
if(check == "0") demo.showNotification('top','right','Trùng Email!','3');
else if (check == "1") demo.showNotification('top','right','Thay Đổi Thành Công!','2');
</script>

<%@include file="/resources/include/endsidebar.jsp"%>
</body>

</html>