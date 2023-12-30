<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Admin Confirm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="assets/images/icon/favicon.ico">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/metisMenu.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.min.css">
<!-- amcharts css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- Start datatable css -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
<!-- style css -->
<link rel="stylesheet" href="assets/css/typography.css">
<link rel="stylesheet" href="assets/css/default-css.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<!-- modernizr css -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- page container area start -->
	<div class="page-container">
		<!-- sidebar menu area start -->
		<div class="sidebar-menu">
			<div class="sidebar-header">
				<div class="logo">
					<a href="admintrangchuController"><img
						src="assets/images/icon/logo.png" alt="logo"></a>
				</div>
			</div>
			<div class="main-menu">
				<div class="menu-inner">
					<nav>
						<ul class="metismenu" id="menu">
							<li class="active"><a href="admintrangchuController"
								aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
							</li>
							<li><a href="adminxacnhanhoadonController"
								aria-expanded="true"><i class="fa fa-table"></i> <span>Confirm
										Orders</span></a></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="fa fa-gear"></i> <span>Manager</span></a>
								<ul class="collapse">
									<li><a href="adminquanlygiayController">Shoes Manager</a></li>
									<li><a href="adminquanlyloaiController">Categories Manager</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- sidebar menu area end -->
		<!-- main content area start -->
		<div class="main-content">
			<!-- header area start -->
			<div class="header-area">
				<div class="row align-items-center">
					<!-- nav and search button -->
					<div class="col-md-6 col-sm-8 clearfix">
						<div class="nav-btn pull-left">
							<span></span> <span></span> <span></span>
						</div>
						<div class="search-box pull-left">
							<form action="#">
								<input type="text" name="search" placeholder="Search..."
									required> <i class="ti-search"></i>
							</form>
						</div>
					</div>
					<!-- profile info & task notification -->
					<div class="col-md-6 col-sm-4 clearfix">
						<ul class="notification-area pull-right">

							<li class="dropdown"><i class="ti-bell dropdown-toggle"
								data-toggle="dropdown"> <span>2</span>
							</i>
								<div class="dropdown-menu bell-notify-box notify-box">
									<span class="notify-title">You have 3 new notifications
										<a href="#">view all</a>
									</span>
									<div class="nofity-list">
										<a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-key btn-danger"></i>
											</div>
											<div class="notify-text">
												<p>You have Changed Your Password</p>
												<span>Just Now</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-comments-smiley btn-info"></i>
											</div>
											<div class="notify-text">
												<p>New Commetns On Post</p>
												<span>30 Seconds ago</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-key btn-primary"></i>
											</div>
											<div class="notify-text">
												<p>Some special like you</p>
												<span>Just Now</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-comments-smiley btn-info"></i>
											</div>
											<div class="notify-text">
												<p>New Commetns On Post</p>
												<span>30 Seconds ago</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-key btn-primary"></i>
											</div>
											<div class="notify-text">
												<p>Some special like you</p>
												<span>Just Now</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-key btn-danger"></i>
											</div>
											<div class="notify-text">
												<p>You have Changed Your Password</p>
												<span>Just Now</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<i class="ti-key btn-danger"></i>
											</div>
											<div class="notify-text">
												<p>You have Changed Your Password</p>
												<span>Just Now</span>
											</div>
										</a>
									</div>
								</div></li>
							<li class="dropdown"><i
								class="fa fa-envelope-o dropdown-toggle" data-toggle="dropdown"><span>3</span></i>
								<div class="dropdown-menu notify-box nt-enveloper-box">
									<span class="notify-title">You have 3 new notifications
										<a href="#">view all</a>
									</span>
									<div class="nofity-list">
										<a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img1.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">Hey I am waiting for you...</span> <span>3:15
													PM</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img2.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">When you can connect with me...</span> <span>3:15
													PM</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img3.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">I missed you so much...</span> <span>3:15
													PM</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img4.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">Your product is completely Ready...</span>
												<span>3:15 PM</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img2.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">Hey I am waiting for you...</span> <span>3:15
													PM</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img1.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">Hey I am waiting for you...</span> <span>3:15
													PM</span>
											</div>
										</a> <a href="#" class="notify-item">
											<div class="notify-thumb">
												<img src="assets/images/author/author-img3.jpg" alt="image">
											</div>
											<div class="notify-text">
												<p>Aglae Mayer</p>
												<span class="msg">Hey I am waiting for you...</span> <span>3:15
													PM</span>
											</div>
										</a>
									</div>
								</div></li>
							<li id="full-view"><i class="ti-fullscreen"></i></li>
							<li id="full-view-exit"><i class="ti-zoom-out"></i></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- header area end -->
			<!-- page title area start -->
			<div class="page-title-area">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="breadcrumbs-area clearfix">
							<h4 class="page-title pull-left">Dashboard</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="index.html">Home</a></li>
								<li><span>Datatable</span></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6 clearfix">
						<div class="user-profile pull-right">
							<img class="avatar user-thumb"
								src="assets/images/author/avatar.png" alt="avatar">
							<h4 class="user-name dropdown-toggle" data-toggle="dropdown">
								Kumkum Rai <i class="fa fa-angle-down"></i>
							</h4>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">Message</a> <a
									class="dropdown-item" href="#">Settings</a> <a
									class="dropdown-item" href="#">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page title area end -->
			<div class="main-content-inner">
				<div class="row">
					<!-- data table start -->
					<div class="col-12 mt-5">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">List of bills</h4>
								<div class="data-tables">
									<table id="dataTable" class="text-center">
										<thead class="bg-light text-capitalize">
											<tr>
												<th>ID</th>
												<th>Date of purchase</th>
												<th>Quantity</th>
												<th>Total</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="hd" items="${dsHoaDon }">
												<tr>
													<td>${hd.getMahd() }</td>
													<td>${hd.getNgaymua() }</td>
													<td>${hd.getSoluongmua() }</td>
													<td>$${hd.getTongtien() }</td>
													<td><a
														href="adminxacnhanchitiethoadonController?mahd=${hd.getMahd() }"><span
															class="ti-view-list-alt text-dark mr-3"></span></a> <a
														href="adminxacnhanhoadonController?mahd=${hd.getMahd() }"><span
															class="ti-check-box text-dark"></span></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- data table end -->
				</div>
			</div>
		</div>
		<!-- main content area end -->
	</div>
	<!-- page container area end -->

	<!-- jquery latest version -->
	<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/metisMenu.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/jquery.slicknav.min.js"></script>

	<!-- Start datatable js -->
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<script
		src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
	<!-- others plugins -->
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/delete.js"></script>
</body>

</html>
