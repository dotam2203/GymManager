<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/resources/include/sidebar.jsp"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/resources/include/navbarmn.jsp"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
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
</style>
<!--   Core JS Files   -->
<script src="../resources/assets/js/core/jquery.min.js"></script>
<script src="../resources/assets/js/core/popper.min.js"></script>
<script src="../resources/assets/js/core/bootstrap.min.js"></script>
<script
	src="../resources/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="../resources/assets/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../resources/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../resources/assets/js/black-dashboard.min.js?v=1.0.0"></script>
<!-- Black Dashboard DEMO methods, don't include it in your project! -->
<script src="../resources/assets/demo/demo.js"></script>
<script>
	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});
</script>
<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="card ">
				<div class="card-header">
					<div class="row">
						<div class="col-md-3 pr-md-1">
							<h3 class="card-title">Khách Hàng</h3>
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
				<!-- ===================== -->
				<div class="row">
					<div class="col-md-3 pl-md-3">
						<div class="card-footer">
							<button type="submit" class="btn btn-fill btn-primary"
								onclick="document.getElementById('checkin').style.display='block'"
								class="button">
								<span> Điểm Danh </span>
							</button>
						</div>
					</div>
				</div>
				<!-- --------------------- -->
				<div id="checkin" class="modal row">

					<div class="modal-content animate card-body  col-md-5"
						style="background: #27293d">
						<div class="card-header">
							<div class="imgcontainer">
								<span
									onclick="document.getElementById('checkin').style.display='none'"
									class="close" title="Close Modal">&times;</span>
							</div>
							<div class="col-sm-6 text-left">
								<h4 class="title">Điểm Danh</h4>
							</div>

							<div class="col-sm-12"></div>
						</div>


						<!-- =============================== Form checkin========================= -->
						<div id="checkin1" class="card-body tabcontent">
							<table class="table tablesorter " id="myTable1">
								<thead class=" text-primary">
									<tr>
										<th class="text-center">Mã KH</th>

										<th class="text-center">Họ & Tên</th>
										
										<th class="text-center">Thẻ Tập</th>

										<th class="text-center">Điểm danh</th>
									</tr>
								</thead>
								
								<tbody id="myTable">
									<c:forEach var="info" items="${checkinKhShow}">

										<tr id = "tr_${info.maKH}">
											<td class="text-center">${info.maKH}</td>
											<td class="text-center">${info.tenKH}</td>
											<td class="text-center">${trangthai}</td>
											<td class="text-center text-danger">
                         <%-- <a href="#myModal${info.maKH}" data-toggle="modal"> --%><div class="card-footer">
						<button onclick='ajax_checkin_KH("${info.maKH}")' type="submit" class="btn btn-fill btn-primary" id="checkin_${info.maKH}">Check In</button>
					    </div><!-- </a> --></td>
                         
							<!-- Modal HTML -->
							<div id="myModal${info.maKH}" class="modal fade">
								<div class="modal-dialog modal-confirm">
									<div class="modal-content">
										
													<br>		
											<center><h3 style="color: black">Thực hiện Check In</h3></center>	
							                
										
										<div class="modal-body">
											<center><p> Khách hàng <b style="font-weight: bold;">${info.tenKH}</b> xác nhận muốn Check In?</p></center>
										</div>
										<div class="modal-footer">
											<button id="thoat${info.maKH}" style="margin-right: 100px" type="button" class="btn btn-info" data-dismiss="modal">Hủy</button>
											<button onclick='ajax_checkin_KH("${info.maKH}")' id = "button_click" style="margin-left: 100px" type="button" class="btn btn-danger">Đồng ý</button>
										</div>
									</div>
								</div>
							</div>  
                      </tr>
                    </c:forEach>
                    
                    <script>
                    var setButton = document.getElementById("button");
                    var currentDate = new Date();
                 // Định dạng ngày giờ theo format dd/MM/yyyy HH:mm
                    var formattedDate = currentDate.toLocaleString('en-GB', { 
                      day: '2-digit',
                      month: '2-digit',
                      year: 'numeric',
                      hour: '2-digit',
                      minute: '2-digit'
                    });
						function ajax_checkin_KH(maKH){
							
							$.ajax({
			                    url : "usercheckin",
			                    type : "post",
			                    dataType:"text",
			                    data : {
			                         "maKH": maKH,
			                        // "thoiGian": document.getElementById("button").value;
			                         
			                    },
			                    success : function (result){
				                    
			                        if(result=="1"){
			                        	document.getElementById("button_click").innerHTML = formattedDate;
			                        	document.getElementById("button_click").disable = true;
			                        	demo.showNotification('top','right','Checkin thành công!','2');
			                        	//document.getElementById("thoat"+maKH).click()
			                        	
			                        	
				                     }else {demo.showNotification('top','right','Checkin thất bại!','3');}
			                    	
			                    }
			                });
						}
						if(displayCheckin.disable){
							var currentTime = new Date();
                        	//get current h:m
                        	var currentHour = currentTime.getHours();
                        	var currentMinute = currentTime.getMinutes();
                        	//get Decimal hours
                        	var currentTimeDecimal = currentHour + currentMinute/60;
                        	var resetHour = Math.floor(currentTimeDecimal)
                        	if(currentTimeDecimal > resetHour){
                        		displayCheckin.disable = false;
                        	}
						}
                    </script>
								</tbody>
							</table>
								<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
								<div class="ps__thumb-x" tabindex="0"
									style="left: 0px; width: 0px;"></div>
							</div>
							<div class="ps__rail-y" style="top: 0px; right: 0px;">
								<div class="ps__thumb-y" tabindex="0"
									style="top: 0px; height: 0px;"></div>
							</div>
						</div>
						<!-- ===================end FormlớpDV============================== -->


					</div>
				</div>
			
				<!-- ===================== -->
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="myTable1">
							<thead class=" text-primary">
								<tr>
									<th>Mã Khách Hàng</th>
									<th>Họ & Tên</th>
									<th>Email</th>
									<th>Giới Tính</th>
									<th class="text-center">Số Điện Thoại</th>

									<th class="text-center">Trạng Thái</th>

									<th class="text-center">Dịch Vụ</th>
									<th class="text-center">Chỉnh Sửa</th>
								</tr>
							</thead>
							<tbody id="myTable">
								<c:forEach var="info" items="${khachHangServices}">
									<tr id="tr_${info.maKH}">
										<td>${info.maKH}</td>
										<td>${info.tenKH}</td>
										<td>${info.email}</td>
										<td>${info.gioiTinh}</td>
										<td class="text-center">${info.sdt}</td>
										<td id="td_${info.maKH}" class="text-center"><span
											id="ttdv_${info.maKH}"> <c:forEach var="the"
													items="${info.the}">
                        			${the.trangThai}
                        		</c:forEach>
										</span> <script>
											var trangthai = "";
											var trangthais = document
													.getElementById("ttdv_${info.maKH}").innerHTML
													.trim();
											if (trangthais == "") {
												trangthai = "CDK";
											} else {
												if (trangthais
														.search("Hoạt Động") > -1) {
													trangthai = trangthai
															+ "HD";
												}
												if (trangthais
														.search("Chưa Thanh Toán") > -1) {
													trangthai = trangthai
															+ "CTT";
													document
															.getElementById(
																	"tr_${info.maKH}")
															.setAttribute(
																	"class",
																	"alert alert-primary");

												}
												if (trangthais
														.search("Hết Hạn") > -1) {
													trangthai = trangthai
															+ "HH";
												}
											}

											document
													.getElementById("td_${info.maKH}").innerHTML = trangthai
													.trim();
										</script></td>

										<td class="text-center"><a href="dichvu?id=${info.maKH}"
											class="tim-icons icon-badge"></a></td>
										<td class="text-center text-success"><a
											href="user?id=${info.maKH}" class="tim-icons icon-pencil"></a></td>

									</tr>
								</c:forEach>
					
							</tbody>
						</table>
					</div>
				</div>
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
				if (parseInt(x.innerHTML.split('KH')[1]) < parseInt(y.innerHTML
						.split('KH')[1])) {
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
	<!--======================= end script ======= -->
</script>


<%@include file="/resources/include/endsidebar.jsp"%>
</body>

</html>