<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/resources/include/sidebar.jsp"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/navbarmn.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<style type="text/css">
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
	margin: 1% auto 15% auto;
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
-webkit-keyframes animatezoom {from {-webkit-trans scale(0)
	
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
/* The switch - the box around the slider */
.switch {
	position: relative;
	display: inline-block;
	width: 48px;
	height: 24px;
}
/* Hide default HTML checkbox */
.switch input {
	opacity: 0;
	width: 0;
	height: 0;
}
/* The slider */
.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 16px;
	width: 16px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

.slider.round {
	border-radius: 24px;
}

.slider.round:before {
	border-radius: 50%;
}

.shakene {
	/* Start the shake animation and make the animation last for 0.5 seconds */
	animation: shake 2s;
	/* When the animation is finished, start again */
	animation-iteration-count: infinite;
	color: red;
}

@
keyframes shake { 0% {
	transform: translate(1px, 1px) rotate(0deg);
}
10


   

%
{
transform


   

translate


   

-1px
,
-2px


   

)


   

rotate


   

(


   

-1deg


   

;
}
20


   

%
{
transform


   

:


   

translate


   

(


   

-3px
,
0px


   

)


   

rotate


   

(


   

1deg


   

)


   

;
}
30


   

%
{
transform


   

:


   

translate


   

(


   

3px
,
2px


   

)


   

rotate


   

(


   

0deg


   

)


   

;
}
40


   

%
{
transform


   

:


   

translate


   

(


   

1px
,
-1px


   

)


   

rotate


   

(


   

1deg


   

)


   

;
}
50


   

%
{
transform


   

:


   

translate


   

(


   

-1px
,
2px


   

)


   

rotate


   

(


   

-1deg


   

)


   

;
}
60


   

%
{
transform


   

:


   

translate


   

(


   

-3px
,
1px


   

)


   

rotate


   

(


   

0deg


   

)


   

;
}
70


   

%
{
transform


   

:


   

translate


   

(


   

3px
,
1px


   

)


   

rotate


   

(


   

-1deg


   

)


   

;
}
80


   

%
{
transform


   

:


   

translate


   

(


   

-1px
,
-1px


   

)


   

rotate


   

(


   

1deg


   

)


   

;
}
90


   

%
{
transform


   

:


   

translate


   

(


   

1px
,
2px


   

)


   

rotate


   

(


   

0deg


   

)


   

;
}
100


   

%
{
transform


   

:


   

translate


   

(


   

1px
,
-2px


   

)


   

rotate


   

(


   

-1deg


   

)


   

;
}
}
</style>
<script>
	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTđable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});
</script>
<script type="text/javascript" src="//js.nicedit.com/nicEdit-latest.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() {
		nicEditors.allTextAreas()
	});
</script>
<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="card ">
				<div class="card-header">
					<div class="row">
						<div class="col-md-3 pr-md-1">
							<h4 class="card-title">Thiết Bị</h4>
							<div class="card-footer">
								<button type="submit" id="timkiem"
									onclick="document.getElementById('them').style.display='block'"
									class=" btn btn-fill btn-primary">Thêm</button>
							</div>
						</div>
						<div class="col-md-3 pr-md-1"></div>
						<div class="col-md-3 pr-md-1"></div>
						<div class="col-md-2 pr-md-1 ">
							<div class="form-group tim-icons icon-zoom-split ">
								<label>Search</label> <input class=" form-control" id="myInput"
									type="text" placeholder="">
							</div>
						</div>
					</div>
				</div>
				<div id="them" class="modal row">
					<div class="modal-content animate card-body  col-md-5"
						style="background: #27293d">
						<div class="card-header">
							<div class="imgcontainer">
								<span
									onclick="document.getElementById('them').style.display='none'"
									class="close" title="Close Modal">&times;</span>
							</div>
							<div class="col-sm-6 text-left">
								<h5 class="title">Thêm thiết bị</h5>
							</div>
							<div class="col-sm-12"></div>
						</div>
						<!-- =============================== Form Lớp DV========================= -->
						<div id="profile" class="card-body tabcontent"
							style="display: block;">
							<form action="thietbi" method="post"
								enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-6 pr-md-1">
										<div class="form-group">
											<label>Tên thiết bị</label> <input type="text"
												class="form-control" placeholder="Tên thiết bị" required
												pattern="^[a-zA-Z]*$" name="tentb" />
										</div>
									</div>
									<div class="col-md-6 pl-md-1">
										<div class="form-group">
											<label>Xuất xứ</label> <input type="text" required
												class="form-control" placeholder="Xuất xứ" name="xuatxu" pattern="^[a-zA-Z]*$" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 pr-md-1">
										<div class="form-group">
											<label>Tình trạng</label> <input type="text" required pattern="^[a-zA-Z]*$"
												class="form-control" placeholder="Tình trạng thiết bị"
												name="tinhtrang" />
										</div>
									</div>
									<div class="col-md-6 pl-md-1">
										<div class="form-group">
											<label>Loại thiết bị</label> <select
												onchange="layloaithietbi()" id="loaithietbis"
												style="background: #27293d" class="form-control form-select"
												name="loaithietbi">
												<option selected="selected" hidden>Vui lòng chọn
													Loại Thiết Bị</option>
												<c:forEach var="loaiThietBi" items="${loai}">
													<option value="${loaiThietBi.tenLoai}">${loaiThietBi.tenLoai}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 pr-md-1">
										<div>
											<label>Hình Ảnh</label><input type="file" id="myFile" 
												name="hinhanh" class="form-control" />
										</div>
									</div>
									<div class="col-md-6 pl-md-1">
										<div class="form-group">
											<label>Ngày nhập thiết bị</label> <input type="date"
												class="form-control" placeholder="Ngày nhập"
												value="${ngayNhap}" id="userdate" onchange="TDate()"
												name="ngaynhap" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>Số lượng thiết bị</label> <input type="number" required
												class="form-control"
												placeholder="Số lượng thiết bị của phòng gym" value=0 min="0" oninput="this.value = Math.abs(this.value)"
												name="soluong" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group"> 
											<label>Mô tả</label>
											<textarea  class="form-control" 
												name="mota"></textarea>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<button id="themtb" type="submit"
										class="btn btn-fill btn-primary">Lưu</button>
								</div>

							</form>
						</div>
						<!-- ===================end FormlớpDV============================== -->
					</div>
				</div>
				<!-- ========================= end them ========================== -->
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="myTable1">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">Mã Thiết Bị</th>
									<th class="text-center">Tên Thiết Bị</th>
									<th class="text-center">Hình Ảnh</th>
									<th class="text-center">Loại Thiết Bị</th>
									<th class="text-center">Số Lượng</th>
									<th class="text-center">Xuất Xứ</th>
									<th class="text-center">Tình Trạng</th>
									<th class="text-center">Ngày Nhập</th>
									<th class="text-center">Mô Tả</th>
									<th class="text-center">Chỉnh Sửa</th>
									<th class="text-center">Xóa</th>
								</tr>
							</thead>
							<tbody id="myTable">
								<c:forEach var="info" items="${listTB}">
									<tr id="${info.maTB}">
										<td class="text-center">${info.maTB}</td>
										<td class="text-center">${info.tenTB}</td>
										<td class="text-center"><img
											src="http://localhost:8080/GymManager/resources/img/${info.hinhAnh}"
											alt="Ảnh thiết bị" style="width: 150px; height: 150px">
										<td class="text-center">${info.loaiThietBi.tenLoai}</td>
										<td class="text-center">${info.soLuong}</td>
										<td class="text-center">${info.thuongHieu}</td>
										<td class="text-center">${info.tinhTrang}</td>
										<td id = "fomatDate_${info.ngayNhap}" class="text-center">${info.ngayNhap}</td>
										<td class="text-center">${info.moTa}</td>

										<!-- Chỉnh Sửa -->
										<td class="text-center text-success"><a
											href="thietbi?id=${info.maTB}" class="tim-icons icon-pencil"></a></td>
										<td class="text-center text-success"><a
											href="delthietbi?id=${info.maTB}"  onclick="if (!confirm('Bạn có muốn xóa thiết bị này?')) { return false }"
											class="tim-icons icon-simple-remove"></a></td>
										<script>
										var date  = "${info.ngayNhap}";
				                        var msg  = date .split("-");
				                        var dateFormat = msg[2]+"/"+msg[1]+"/"+msg[0];
				                        document.getElementById("fomatDate_${info.ngayNhap}").innerHTML = dateFormat;
										</script>
										<%-- <td id="switch_${info.maTB}" class="text-center"><label
                                 class="switch"> <input id="khoa_${info.maTB}"
                                 	onchange="ajax_khoa_TKNV('${info.maTB}')" type="checkbox">
                                 	<span class="slider round"></span>
                                 </label></td>
                                 
                                 <script>
                                 if ("${info.taiKhoan.trangThai}"
                                 		.trim() == "0") {
                                 	document.getElementById(
                                 			"khoa_${info.maNV}")
                                 			.setAttribute(
                                 					"checked", "");
                                 }
                                 function checkAdmins(id) {
                                 	var list = document
                                 			.getElementById(id);
                                 	while (true) {
                                 		if (list.hasChildNodes()
                                 				&& list
                                 						.hasChildNodes() != null) {
                                 			list
                                 					.removeChild(list.childNodes[0]);
                                 		} else
                                 			break;
                                 	}
                                 }
                                 if ("${info.taiKhoan.phanQuyen.chucVu}"
                                 		.trim() == "Quản Lý") {
                                 	checkAdmins("switch_${info.maNV}");
                                 
                                 }
                                 </script> --%>
									</tr>
								</c:forEach>
								<script>
									if ("${thongbao}".trim() == "1")
										demo.showNotification('top', 'right',
												'Thêm Thiết Bị thành công!',
												'2');
									else if ("${thongbao}".trim() == "1")
										demo.showNotification('top', 'right',
												'Thêm Thiết Bị thất bại!',
												'3');
									/* else if ("${thongbao}".trim() == "1")
										demo
												.showNotification(
														'top',
														'right',
														'Username hoặc Email trùng nhau!',
														'3');
									else if ("${thongbao}".trim() == "2")
										demo
												.showNotification(
														'top',
														'right',
														'Password và Xác nhận Password không đúng!',
														'3'); */

									function TDate() {
										var UserDate = document
												.getElementById("userdate").value;
										var ToDate = new Date();

										if (new Date(UserDate).getTime() >= ToDate
												.getTime()) {
											demo
													.showNotification(
															'top',
															'right',
															'Ngày nhập bé hơn hoặc bằng ngày hiện tại!',
															'3');
											document.getElementById("userdate").value = "";
										}
										return true;
									}
								</script>
							</tbody>
						</table>
					</div>
				</div>
			</div>
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
	</div>
</div>
</div>
</div>
<script>
	function sortTable() {
		var table, rows, switching, i, x, y, shouldSwitch;
		table = document.getElementById("myTable1");
		switching = true;
		/*Make a loop that will continue until
		no switching has been done:*/
		while (switching) {
			//start by saying: no switching is done:
			switching = false;
			rows = table.rows;
			/*Loop through all table rows (except the
			first, which contains table headers):*/
			for (i = 1; i < (rows.length - 1); i++) {
				//start by saying there should be no switching:
				shouldSwitch = false;
				/*Get the two elements you want to compare,
				one from current row and one from the next:*/
				x = rows[i].getElementsByTagName("TD")[0];
				y = rows[i + 1].getElementsByTagName("TD")[0];
				//alert(parseInt(x.innerHTML.split('KH')[1]));
				//alert(parseInt(y.innerHTML.split('KH')[1]));
				//check if the two rows should switch place:
				if (parseInt(x.innerHTML.split('NV')[1]) < parseInt(y.innerHTML
						.split('NV')[1])) {
					//alert(parseInt(x.innerHTML.split('KH')[1]));
					//if so, mark as a switch and break the loop:
					shouldSwitch = true;
					break;
				}
			}
			//break;
			if (shouldSwitch) {
				/*If a switch has been marked, make the switch
				and mark that a switch has been done:*/
				rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
				switching = true;
			}
		}
	}
	sortTable();
</script>
<%@include file="/resources/include/endsidebar.jsp"%>
</body>
</html>