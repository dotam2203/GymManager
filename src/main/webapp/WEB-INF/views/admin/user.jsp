<%@ include file="/resources/include/sidebar.jsp"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/navbarmn.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="content">
	<div class="row">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<div class="col-sm-6 text-left">
						<h5 class="title">Khách hàng</h5>
					</div>

					<div class="col-sm-12">
						<div class="btn-group btn-group-toggle float-right"
							data-toggle="buttons">
							<label class=" tablinks btn btn-sm btn-primary btn-simple active"
								id="0" onclick="user(event, 'profile')"> <input
								type="radio" name="options" checked> <span
								class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Thông
									tin khách hàng</span> <span class="d-block d-sm-none"> <i
									class="tim-icons icon-single-02"></i>
							</span>
						</div>
					</div>
				</div>
				<!--               ==================nội dung======================= -->
				<div id="profile" class="card-body tabcontent">
					<form action="updateuser" method="post"
						enctype='multipart/form-data' itemid="${khachhang}">
						<div class="row">
							<div class="col-md-5 pr-md-1">
								<div class="form-group">
									<label>Mã Khách Hàng </label> <input type="text"
										class="form-control" readonly="true" placeholder="ID"
										value="${khachhang.maKH}" name="makh">
								</div>
							</div>
							<div class="col-md-3 px-md-1">
								<div class="form-group">
									<label>Họ & Tên</label> <input type="text" class="form-control"
										placeholder="Hoten" value="${khachhang.tenKH}" required
										pattern="\S+.*" name="hovaten">
								</div>
							</div>
							<div class="col-md-4 pl-md-1">
								<div class="form-group">
									<label>Số Điện Thoại</label> <input type="text"
										class="form-control" placeholder="SĐT"
										value="${khachhang.sdt}" name="sdt" pattern="(\+84|0)\d{9,10}"
										title="Số điện thoại gồm 10 chữ số (nếu nhập 0) hoặc 9 số (nếu nhập +84)">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8 pr-md-1">
								<div class="form-group">
									<label>Email</label> <input type="email" class="form-control"
										placeholder="City" value="${khachhang.email}" name="email">
								</div>

							</div>

							<div class="col-md-4 pl-md-1">
								<div>
									<label>Ảnh Đại Diện</label> <input type="file"
										class="form-control" placeholder="Link ảnh" name="avatar">

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 pr-md-1">
								<div class="form-group">
									<label>Giới Tính</label> <select name="gioitinh" id="gioitinh"
										style="background: #27293d" class="form-control form-select"
										placeholder="Sex">
										<option id="op_Nu">Nữ</option>
										<option id="op_Nu" hidden="" selected="selected">${khachhang.gioiTinh}</option>
										<option id="op_Nam">Nam</option>
									</select>

								</div>
							</div>
							<div class="col-md-6 pl-md-1">
								<div class="form-group">
									<label>Ngày Sinh</label> <input onchange="TDate()"
										name="ngaysinh" id="userdate" type="date"
										value="${khachhang.ngaySinh}" class="form-control"
										placeholder="Date of birth">
								</div>
							</div>
						</div>
						<script>
							function TDate() {
								var dd = "${khachhang.ngaySinh}";
								var UserDate = document
										.getElementById("userdate").value;
								var ToDate = new Date();

								if (new Date(UserDate).getTime() > ToDate
										.getTime()) {
									demo.showNotification('top', 'right',
											'Ngày sinh nhỏ hơn ngày hiện tại!',
											'3');
									document.getElementById("userdate").value = dd;
								}
								return true;
							}
						</script>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Địa Chỉ</label> <input name="diachi" type="text"
										class="form-control" placeholder="Home Address"
										value="${khachhang.diaChi}">
								</div>
							</div>
						</div>
						<div class="card-footer">
							<button type="submit" class="btn btn-fill btn-primary">Lưu</button>
						</div>
					</form>

				</div>
				<!--     ==============================end=====================================       -->

				
				<!-- =========================================== end2 ================================= -->


				<!--========================scirpt start 1 trong 2 mode================================ -->

				<script>
					function user(evt, cityName) {
						var i, tabcontent, tablinks;
						tabcontent = document
								.getElementsByClassName("tabcontent");
						for (i = 0; i < tabcontent.length; i++) {
							tabcontent[i].style.display = "none";
						}
						tablinks = document.getElementsByClassName("tablinks");
						for (i = 0; i < tablinks.length; i++) {
							tablinks[i].className = tablinks[i].className
									.replace(" active", "");
						}
						document.getElementById(cityName).style.display = "block";
						evt.currentTarget.className += " active";
					}

					// Get the element with id="defaultOpen" and click on it
					document.getElementById("0").click();
				</script>

				<!--======================= end script ======= -->
			</div>
		</div>


		<div class="col-md-4">
			<div class="card card-user">
				<div class="card-body">
					<p class="card-text">
					<div class="author">
						<div class="block block-one"></div>
						<div class="block block-two"></div>
						<div class="block block-three"></div>
						<div class="block block-four"></div>
						<a href="javascript:void(0)"> <img id="avatarid"
							class="avatar" src="../resources/images/" alt="...">
							<h5 class="title">${tenKH}</h5>
						</a>
						<script>
							if ("${avatar}".trim() != "")
								document.getElementById("avatarid").src = "../resources/images/"
										+ "${avatar}".trim();
							else
								document.getElementById("avatarid").src = "../resources/assets/img/aerobic.png";
						</script>
						<p class="description">
							KHÁCH HÀNG THÀNH VIÊN <br>
						<div class="card-description">"Sống Hết Mình & Tập Hết Khả
							Năng"</div>
						</p>
					</div>

				</div>
				<div class="card-footer">
					<div class="button-container">
						<button href="javascript:void(0)"
							class="btn btn-icon btn-round btn-facebook">
							<i class="fab fa-facebook"></i>
						</button>
						<button href="javascript:void(0)"
							class="btn btn-icon btn-round btn-twitter">
							<i class="fab fa-twitter"></i>
						</button>
						<button href="javascript:void(0)"
							class="btn btn-icon btn-round btn-google">
							<i class="fab fa-google-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--       ==========================end========================== -->


<script>
	var url_string = window.location.href;
	var url = new URL(url_string);
	var check = url.searchParams.get("thongbao");
	if (check == "0")
		demo.showNotification('top', 'right', 'Trùng Email!', '3');
	else if (check == "1")
		demo.showNotification('top', 'right', 'Thay Đổi Thành Công!', '2');
</script>

<%@include file="/resources/include/endsidebar.jsp"%>
</body>

</html>