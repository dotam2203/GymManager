<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/resources/include/sidebar.jsp"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/navbarmn.jsp"%>
<div class="content">
	<div class="row">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<h5 class="title">Nhân Viên</h5>
				</div>
				<div class="card-body">
					<form action="updatenhanvien" method="post">

						<div class="row">
							<div class="col-md-2 pr-md-1">
								<div class="form-group">
									<label>Mã Nhân Viên</label> <input type="text"
										class="form-control" placeholder="MaNV" name="manv"
										disabled="disabled" value="${nhanVien.maNV}">
								</div>
							</div>
							<div class="col-md-5 px-md-1">
								<div class="form-group">
									<label>Họ & Tên</label> <input type="text" class="form-control"
										placeholder="Họ và tên" name="hovaten"
										value="${nhanVien.tenNV}">
								</div>
							</div>
							<div class="col-md-5 pl-md-1">
								<div class="form-group">
									<label for="exampleInputEmail1">Email</label> <input
										type="email" name="email" disabled="disabled"
										class="form-control" placeholder="Email"
										value="${nhanVien.email}">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 pr-md-1">
								<div class="form-group">
									<label>Số Điện Thoại</label> <input type="text"
										class="form-control" placeholder="Số điện thoại" name="sdt"
										value="${nhanVien.sdt}">
								</div>
							</div>
							<div class="col-md-3 pr-md-1">
								<div class="form-group">
									<label>Giới tính</label> <select
										class="form-control form-select" name="gioitinh">
										<option selected="selected" hidden=""
											style="background: #27293d" class="form-group">${nhanVien.gioiTinh}</option>
										<option style="background: #27293d" class="form-group">Nam</option>
										<option style="background: #27293d" class="form-group">Nữ</option>
									</select>
								</div>
							</div>
							<div class="col-md-5 pl-md-1">
								<div class="form-group">
									<label>Địa Chỉ</label> <input type="text" class="form-control"
										placeholder="Địa chỉ" name="diachi" value="${nhanVien.diaChi}">
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-4 pr-md-1">
								<div class="form-group">
									<label>Chức Vụ</label> <input id="chucvu" type="text"
										class="form-control" placeholder="Chức vụ" name="chucvu"
										value="${nhanVien.taiKhoan.phanQuyen.chucVu}">
								</div>
							</div>

						</div>
						<div class="card-footer">
							<button type="submit" class="btn btn-fill btn-primary">Save</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="col-md-4">

			<div class="card">
				<div class="card-header">
					<h5 class="title">Tài Khoản</h5>
				</div>
				<div class="card-body">

					<!-- Cập nhật lại tài khoản sau khi chỉnh sửa nhân viên -->
					<form action="updatetaikhoan" method="post">
						<div class="row">
							<div class="col-md-6 pr-md-1">
								<div class="form-group">
									<label>Username</label> <input name="username" type="text"
										class="form-control" placeholder="Username"
										value="${nhanVien.taiKhoan.userName}"> <input hidden
										name="manv" type="text" value="${nhanVien.maNV}">
								</div>
							</div>
							<div class="col-md-6 px-md-1">
								<div class="form-group">
									<label>Password</label> <input type="password" name="password"
										class="form-control" placeholder="******"
										value="${nhanVien.taiKhoan.passWord}">
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-6 pr-md-1">
								<div class="form-group">
									<label>Mã quyền</label> <input id="maquyen11"
										onchange="xacnhandoiquyen()" type="text" name="maquyen"
										class="form-control" placeholder="Mã quyền"
										value="${nhanVien.taiKhoan.phanQuyen.maQuyen}">
								</div>
							</div>
							<div class="col-md-6 pl-md-1">
								<div class="form-group">
									<label>Trạng Thái</label> <input id="trangthai"
										onchange="xacnhandoiquyen()" name="trangthai" type="text"
										class="form-control" placeholder="Trạng thái"
										value="${nhanVien.taiKhoan.trangThai}">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 pr-ml-13" style="color: #FFFFFF99;">


								<table
									style="width: 80%; margin-left: 40px; border-color: purple;">
									<tr>

										<th class=" text-center">Thông Số</th>
										<th>Mã Quyền</th>
										<th>Trạng Thái</th>
									</tr>
									<tr>
										<td class=" text-center">0</td>
										<td>Quản Lý</td>
										<td>Khóa</td>
									</tr>
									<tr>
										<td class=" text-center">1</td>
										<td>Nhân Viên</td>
										<td>Hoạt động</td>
									</tr>
								</table>

							</div>
						</div>

						<div class="card-footer">
							<button type="submit" class="btn btn-fill btn-primary">Save</button>
						</div>



						<a href="#myModal${info.maNV}" data-toggle="modal" id="nutnhan"
							hidden style="color: red; cursor: pointer;"
							class="tim-icons icon-simple-remove"></a>

						<div id="myModal${info.maNV}" class="modal fade">
							<div class="modal-dialog modal-confirm">
								<div class="modal-content">

									<br>
									<center>
										<h3 style="color: black">Bạn chắc chắn?</h3>
									</center>
									<center>
										<p style="color: black">Bạn đang thay đổi Quyền hoặc Trạng
											Thái của Nhân Viên!</p>
									</center>


									<div class="modal-footer">
										<center>
											<button id="thoat${info.maNV}" style="margin-left: 200px"
												type="button" class="btn btn-info" data-dismiss="modal">Đồng
												Ý</button>
										</center>
									</div>
								</div>
							</div>
						</div>
						<!-- ------------------------------------- -->
						<script>
							function xacnhandoiquyen() {
								if ((document.getElementById("maquyen11").value
										.trim() == "1" || document
										.getElementById("trangthai").value
										.trim() == "0")
										&& document.getElementById("chucvu").value
												.trim() == "Quản Lý") {
									document.getElementById("nutnhan").click();

								}

							}
						</script>
					</form>
				</div>

			</div>
		</div>
	</div>
</div>

<script>
	document.write(new Date().getFullYear())
</script>
</div>
</div>
<div class="fixed-plugin">
	<div class="dropdown show-dropdown">
		<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
		</i>
		</a>
		<ul class="dropdown-menu">
			<li class="header-title">Sidebar Background</li>
			<li class="adjustments-line"><a href="javascript:void(0)"
				class="switch-trigger background-color">
					<div class="badge-colors text-center">
						<span class="badge filter badge-primary active"
							data-color="primary"></span> <span
							class="badge filter badge-info" data-color="blue"></span> <span
							class="badge filter badge-success" data-color="green"></span>
					</div>
					<div class="clearfix"></div>
			</a></li>
			<li class="adjustments-line text-center color-change"><span
				class="color-label">LIGHT MODE</span> <span
				class="badge light-badge mr-2"></span> <span
				class="badge dark-badge ml-2"></span> <span class="color-label">DARK
					MODE</span></li>
			<li class="button-container"><a
				href="https://www.creative-tim.com/product/black-dashboard"
				target="_blank" class="btn btn-primary btn-block btn-round">Download
					Now</a> <a
				href="https://demos.creative-tim.com/black-dashboard/docs/1.0/getting-started/introduction.html"
				target="_blank" class="btn btn-default btn-block btn-round">
					Documentation </a></li>
			<li class="header-title">Thank you for 95 shares!</li>
			<li class="button-container text-center">
				<button id="twitter" class="btn btn-round btn-info">
					<i class="fab fa-twitter"></i> &middot; 45
				</button>
				<button id="facebook" class="btn btn-round btn-info">
					<i class="fab fa-facebook-f"></i> &middot; 50
				</button> <br> <br> <a class="github-button"
				href="https://github.com/creativetimofficial/black-dashboard"
				data-icon="octicon-star" data-size="large" data-show-count="true"
				aria-label="Star ntkme/github-buttons on GitHub">Star</a>
			</li>
		</ul>
	</div>
</div>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.min.js"></script>
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap.min.js"></script>
<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="../assets/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/black-dashboard.min.js?v=1.0.0"></script>
<!-- Black Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/demo/demo.js"></script>

<script>
	if ("${thongbao}".trim() == "1") {
		demo.showNotification('top', 'right',
				'Cập nhật thông tin Nhân Viên thành công!', '2');
	} else if ("${thongbao}".trim() == "2") {
		demo.showNotification('top', 'right',
				'Cập nhật thông tin Tài Khoản thành công!', '2');
	} else if ("${thongbao}".trim() == "0") {
		demo.showNotification('top', 'right', 'Email đã được sử dụng!', '3');
	} else if ("${thongbao}".trim() == "3") {
		demo.showNotification('top', 'right', 'Không thể thay đổi UserName!',
				'3');
	} else if ("${thongbao}".trim() == "4") {
		demo.showNotification('top', 'right',
				'Cập nhật thông tin Tài Khoản thành công!', '2');
	} else if ("${thongbao}".trim() == "5") {
		demo.showNotification('top', 'right',
				'Không thể thay đổi Quyền của chính bạn!', '3');
	} else if ("${thongbao}".trim() == "6") {
		demo.showNotification('top', 'right', 'Password không hợp lệ!', '3');
	} else if ("${thongbao}".trim() == "7") {
		demo.showNotification('top', 'right',
				'Không thể thay đổi Quyền của chính bạn!', '3');
		demo.showNotification('top', 'right', 'Password không hợp lệ!', '3');
	} else if ("${thongbao}".trim() == "8") {
		demo.showNotification('top', 'right',
				'Không thể thay đổi Trạng Thái của chính bạn!', '3');
	} else if ("${thongbao}".trim() == "9") {
		demo.showNotification('top', 'right',
				'Không thể thay đổi Quyền của chính bạn!', '3');
		demo.showNotification('top', 'right',
				'Không thể thay đổi Trạng Thái của chính bạn!', '3');
	} else if ("${thongbao}".trim() == "10") {
		demo.showNotification('top', 'right',
				'Không thể thay đổi Trạng Thái của chính bạn!', '3');
		demo.showNotification('top', 'right', 'Password không hợp lệ!', '3');
	} else if ("${thongbao}".trim() == "11") {
		demo.showNotification('top', 'right',
				'Không thể thay đổi Trạng Thái của chính bạn!', '3');
		demo.showNotification('top', 'right',
				'Không thể thay đổi Quyền của chính bạn!', '3');
		demo.showNotification('top', 'right', 'Password không hợp lệ!', '3');
	}
	if ("${thongbaopass}".trim() == "1")
		demo
				.showNotification('top', 'right', 'Password đã được thay đổi!',
						'2');
</script>

<script>
	$(document)
			.ready(
					function() {
						$()
								.ready(
										function() {
											$sidebar = $('.sidebar');
											$navbar = $('.navbar');
											$main_panel = $('.main-panel');

											$full_page = $('.full-page');

											$sidebar_responsive = $('body > .navbar-collapse');
											sidebar_mini_active = true;
											white_color = false;

											window_width = $(window).width();

											fixed_plugin_open = $(
													'.sidebar .sidebar-wrapper .nav li.active a p')
													.html();

											$('.fixed-plugin a')
													.click(
															function(event) {
																if ($(this)
																		.hasClass(
																				'switch-trigger')) {
																	if (event.stopPropagation) {
																		event
																				.stopPropagation();
																	} else if (window.event) {
																		window.event.cancelBubble = true;
																	}
																}
															});

											$(
													'.fixed-plugin .background-color span')
													.click(
															function() {
																$(this)
																		.siblings()
																		.removeClass(
																				'active');
																$(this)
																		.addClass(
																				'active');

																var new_color = $(
																		this)
																		.data(
																				'color');

																if ($sidebar.length != 0) {
																	$sidebar
																			.attr(
																					'data',
																					new_color);
																}

																if ($main_panel.length != 0) {
																	$main_panel
																			.attr(
																					'data',
																					new_color);
																}

																if ($full_page.length != 0) {
																	$full_page
																			.attr(
																					'filter-color',
																					new_color);
																}

																if ($sidebar_responsive.length != 0) {
																	$sidebar_responsive
																			.attr(
																					'data',
																					new_color);
																}
															});

											$('.switch-sidebar-mini input')
													.on(
															"switchChange.bootstrapSwitch",
															function() {
																var $btn = $(this);

																if (sidebar_mini_active == true) {
																	$('body')
																			.removeClass(
																					'sidebar-mini');
																	sidebar_mini_active = false;
																	blackDashboard
																			.showSidebarMessage('Sidebar mini deactivated...');
																} else {
																	$('body')
																			.addClass(
																					'sidebar-mini');
																	sidebar_mini_active = true;
																	blackDashboard
																			.showSidebarMessage('Sidebar mini activated...');
																}

																// we simulate the window Resize so the charts will get updated in realtime.
																var simulateWindowResize = setInterval(
																		function() {
																			window
																					.dispatchEvent(new Event(
																							'resize'));
																		}, 180);

																// we stop the simulation of Window Resize after the animations are completed
																setTimeout(
																		function() {
																			clearInterval(simulateWindowResize);
																		}, 1000);
															});

											$('.switch-change-color input')
													.on(
															"switchChange.bootstrapSwitch",
															function() {
																var $btn = $(this);

																if (white_color == true) {

																	$('body')
																			.addClass(
																					'change-background');
																	setTimeout(
																			function() {
																				$(
																						'body')
																						.removeClass(
																								'change-background');
																				$(
																						'body')
																						.removeClass(
																								'white-content');
																			},
																			900);
																	white_color = false;
																} else {

																	$('body')
																			.addClass(
																					'change-background');
																	setTimeout(
																			function() {
																				$(
																						'body')
																						.removeClass(
																								'change-background');
																				$(
																						'body')
																						.addClass(
																								'white-content');
																			},
																			900);

																	white_color = true;
																}

															});

											$('.light-badge')
													.click(
															function() {
																$('body')
																		.addClass(
																				'white-content');
															});

											$('.dark-badge')
													.click(
															function() {
																$('body')
																		.removeClass(
																				'white-content');
															});
										});
					});
</script>
<script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
<script>
	window.TrackJS && TrackJS.install({
		token : "ee6fab19c5a04ac1a32a645abde4613a",
		application : "black-dashboard-free"
	});
</script>

</body>

</html>