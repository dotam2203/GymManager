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
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

</script>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/navbarmn.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="../resources/assets/css/black-dashboard.css?v=1.0.0">
<div class="content">
	<div class="row">
		<div class="col-md-10">
			<div class="card">
				<div class="card-header ">
					<div class="row">
						<div class="col-sm-6 text-left">
							<h3 class="card-title">ĐĂNG KÝ</h3>
						</div>
						<div class="col-sm-6">
							<div class="btn-group btn-group-toggle float-right"
								data-toggle="buttons">
								<label class="tablinks btn btn-sm btn-primary btn-simple active"
									id="0" onclick="dangky(event, 'dichvu')"> <input
									type="radio" class="d-none d-sm-none" name="options"> <span
									class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Dịch
										Vụ</span> <span class="d-block d-sm-none"> <i
										class="tim-icons icon-gift-2"></i>
								</span>
								</label> <label class="tablinks btn btn-sm btn-primary btn-simple"
									id="1" onclick="dangky(event, 'the')"> <input
									type="radio" name="options" checked> <span
									class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Thẻ
										Tập</span> <span class="d-block d-sm-none"> <i
										class="tim-icons icon-gift-2"></i>
								</span>
								</label> <label class="tablinks btn btn-sm btn-primary btn-simple"
									id="2" onclick="dangky(event, 'checkin')"> <input
									type="radio" name="options" checked> <span
									class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Lịch
										sử Điểm Danh</span> <span class="d-block d-sm-none"> <i
										class="tim-icons icon-gift-2"></i>
								</span>
								</label>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================= noi dung chi tiet the ====================== -->
				<div id="the" class="card-body tabcontent">
					<div class="row ">
						<c:forEach var="the" items="${thes}">
							<div class="flip-card col-md-3 pr-md-1 mb-3">
								<div id="trangthai_${the.maThe}" class="flip-card-inner">
									<div class="flip-card-front">
										<div class="btn btn-link  ">
											<i
												style="color: white; font-size: 30px; font-family: Poppins, sans-serif"
												class=" simple-text logo-normal tim-icons">${the.maThe}
											</i><br> <br>
											<div style="color: white; font-size: 13px">
												${the.goiTap.lopDV.tenLop}<br>${the.goiTap.tenGoiTap}
											</div>

										</div>
									</div>
									<div class="flip-card-back ">
										<div id="tpthe_${the.maThe}" class="center">

											<button
												onclick="document.getElementById('id01_${the.maThe}').style.display='block'"
												class="button">
												<span>Chi Tiết </span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<script type="text/javascript">
								if ("${the.trangThai}" == "Hết Hạn") {
									document
											.getElementById("trangthai_${the.maThe}").classList
											.add("hethan");

								} else if ("${the.trangThai}" == "Chưa Thanh Toán") {
									document
											.getElementById("tpthe_${the.maThe}").innerHTML += "<button onclick=\"window.location='hoadon?id=${the.maThe}'\" style=\"background: linear-gradient(#4eaaa9, #6369d3);\" class=\"button\"> <span>Thanh Toán </span> </button>";
									document
											.getElementById("trangthai_${the.maThe}").classList
											.add("chuathanhtoan");
								} else
									document
											.getElementById("trangthai_${the.maThe}").classList
											.add("hoatdong");
							</script>
							<div id="id01_${the.maThe}" class="modal row">
								<div class="modal-content animate card-body  col-md-5"
									style="background: #083834">
									<form>
										<div class="imgcontainer">
											<span
												onclick="document.getElementById('id01_${the.maThe}').style.display='none'"
												class="close" title="Close Modal">&times;</span>
										</div>

										<div class="row">
											<div class="col-md-5 pr-md-1">
												<div id="thee" class="form-group">
													<label>Mã thẻ</label> <input style="color: white"
														name="mathe_${the.maThe}" type="text" class="form-control"
														disabled="disabled" placeholder="ID thẻ"
														value="${the.maThe}">

												</div>
											</div>
											<div class="col-md-3 px-md-1">
												<div class="form-group">
													<label>Lớp</label> <input style="color: white"
														disabled="disabled" type="text" class="form-control"
														placeholder="Class" value="${the.goiTap.lopDV.tenLop}">
												</div>
											</div>
											<div class="col-md-4 pl-md-1">
												<div class="form-group">
													<label>Thời gian kết thúc</label> <input type="date"
														style="color: white" class="form-control"
														placeholder="date" value="${the.ngayKT}"
														disabled="disabled">
												</div>
											</div>
										</div>
										<div class="row">




											<div class="col-md-5 pr-md-1">
												<div id="thee" class="form-group">
													<label>Trạng thái</label> <input style="color: white"
														type="text" class="form-control" disabled=""
														placeholder="ID thẻ" value="${the.trangThai}">

												</div>
											</div>
											<div class="col-md-5 pr-md-1">
												<div id="thee" class="form-group">
													<label>Gói tập</label> <input style="color: white"
														type="text" class="form-control" disabled=""
														placeholder="ID thẻ" value="${the.goiTap.tenGoiTap}">

												</div>
											</div>
										</div>

									</form>

								</div>
							</div>

						</c:forEach>
					</div>

				</div>

				<!-- =================================== end================= -->
				<div id="dichvu" class="card-body tabcontent">
					<form action="dangkydichvu" method="post">
						<div class="row">
							<div class="col-md-6 pr-md-1">
								<div class="form-group">
									<label>Mã Thẻ Tập</label> <input type="text"
										class="form-control" style="color: white" readonly="true"
										value="${maTDV}">
								</div>
							</div>

							<div class="col-md-6 pl-md-1">
								<div class="form-group">
									<label for="exampleInputEmail1">Mã Khách Hàng</label> <input
										style="color: white" readonly="true" class="form-control"
										value="${maKH}" name="maKH">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 pr-md-1">
								<div class="form-group">
									<label>Dịch Vụ</label> <select onchange="laylopdv()"
										id="lopdvss" style="background: #27293d"
										class="form-control form-select" name="lopDV">
										<option selected="selected" hidden>Vui lòng chọn Dịch
											Vụ</option>
										<c:forEach var="lopDV" items="${lopDVs}">
											<option>${lopDV.tenLop}</option>
										</c:forEach>

									</select>
								</div>
							</div>
							<div class="col-md-4 pl-md-1">
								<div class="form-group">
									<label>Gói Tập</label> <select onchange="laygoitap()"
										id="goitapss" style="background: #27293d"
										class="form-control form-select" name="goiTap">



									</select>

								</div>
							</div>
							<div class="col-md-4 pl-md-1">
								<div class="form-group">
									<label for="exampleInputEmail1">Ngày Đăng Ký</label> <input
										type="date" value="${localDate}" style="color: white"
										readonly="true" class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 pr-md-1">
								<div class="form-group">
									<label>Thành Tiền</label> <input style="color: white"
										id="giatien" type="text" class="form-control" readonly="true"
										value="0 VND">
								</div>
							</div>
						</div>
						<div class="card-footer">
							<button disabled id="nutluu" type="submit"
								class="btn btn-fill btn-primary">Lưu và Xuất hóa đơn</button>
						</div>
					</form>

					<script>
					const formatter = new Intl.NumberFormat('vi-VN', {
						style : 'currency',
						currency : 'VND',
						minimumFractionDigits : 0
					})

					function laygoitap() {
						//alert(document.getElementById("lopdvss").value);
						//alert(document.getElementById("goitapss").value);
						$
								.ajax({
									url : "laygiagoitap",
									type : "post",
									dataType : "text",
									data : {
										"lopDV" : document
												.getElementById("lopdvss").value,
										"goiTap" : document
												.getElementById("goitapss").value
									},
									success : function(result) {
										if (result.search(/<|>|html/i) == -1
												&& result.trim() != "") {
											document.getElementById("giatien").value = formatter
													.format(result);
											document
													.getElementById("nutluu")
													.removeAttribute("disabled");
										} else
											document.getElementById("nutluu")
													.setAttribute("disabled",
															"");

									}
								});
					}
					function laylopdv() {
						//alert(document.getElementById("lopdvss").value);
						//alert(document.getElementById("goitapss").value);
						function layoption(start, end, ten) {
							var options = "<option hidden checked> </option>";
							for (var loaigoitap = start; loaigoitap <= end; loaigoitap++) {
								options += "<option>" + ten[loaigoitap]
										+ "</option>";

							}
							return options;
						}
						//alert(document.getElementById("lopdvss").value);

						$
								.ajax({
									url : "laytengoitap",
									type : "post",
									dataType : "text",
									data : {
										"lopDV" : document
												.getElementById("lopdvss").value

									},
									success : function(result) {
										//alert(result);
										if (result.search(/<|>|html/i) > -1
												|| result.trim() == "") {
											result = "";
											demo
													.showNotification(
															'top',
															'right',
															'Dịch Vụ hiện tại không có Gói Tập!',
															'3');

										}
										document.getElementById("nutluu")
												.setAttribute("disabled", "");
										document.getElementById("goitapss").innerHTML = layoption(
												0,
												result.split(",").length - 1,
												result.split(","));
										document.getElementById("giatien").value = formatter
												.format("0");
									}
								});

					}
				</script>

					<!-- =========================================== end2 =========== -->
					
				</div>

				<!-- ================================checkin story===================== -->
				<div id="checkin" class="card-body tabcontent">
					<div class="row">
						<div class="col-md-12">
							<div class="card ">
								<div class="card-header">
									<div class="row">
										<div class="col-md-3 pr-md-1">
											<h4 class="card-title">Lịch sử Điểm Danh</h4>
										</div>
										<div class="col-md-3 pr-md-1"></div>
										<div class="col-md-3 pr-md-1"></div>
										<div class="col-md-2 pr-md-1 ">
											<div class="form-group tim-icons icon-zoom-split ">
												<label>Search</label> <input class=" form-control"
													id="myInput" type="text" placeholder="">
											</div>
										</div>

									</div>

								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table tablesorter " id="myTable1">
											<thead class=" text-primary">
												<tr>
													<th class="text-center">Ngày Điểm Danh</th>
													<th class="text-center">Số lần</th>
													<th class="text-center">Nhân Viên Thực Hiện</th>
												</tr>
											</thead>
											<tbody id="myTable">
												<c:forEach var="info" items="${khCheckin}">
													<tr id="tr_${info.id}">
														<td id="fomatDate_${info.thoiGian}"
															class="text-center">${info.thoiGian}</td>
														<td class="text-center">${info.soLan}</td>
														<td class="text-center">${info.nhanVienDD.tenNV}</td>
													</tr>
													<script>
                         var date  = "${info.thoiGian}";
                         var msg  = date .split("-");
                         var dateFormat = msg[2]+"/"+msg[1]+"/"+msg[0];
                         document.getElementById("fomatDate_${info.thoiGian}").innerHTML = dateFormat;
                         
                         /*  */
                         /* window.onload = function() {
                             var hoaDons = document.querySelectorAll("[id^='fomatDate_']");
                             hoaDons.forEach(function(element) {
                                 var date = element.innerText;
                                 var msg = date.split("-");
                                 var dateFormat = msg[2] + "/" + msg[1] + "/" + msg[0];
                                 element.innerHTML = dateFormat;
                                 });
                             }; */
                         </script>
						</c:forEach>
						</tbody>
						</table>
						</div>
						</div>
						</div>
						</div>

					</div>

				</div>

				<!-- ======================================================================= -->
				<!--========================scirpt start 1 trong 3 mode -->

					<script>
					function dangky(evt, cityName) {
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
	</div>

</div>

<script>
		if ("${thongbao}" == "Đăng ký Khách Hàng thành công") {

			demo.showNotification('top', 'right',
					'Đăng ký Khách Hàng thành công!', '2');
		}
	</script>

<%@include file="/resources/include/endsidebar.jsp"%>
</body>

</html>