<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Karma Shop</title>

<!--
            CSS
            ============================================= -->
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/nouislider.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/main.css">

<style type="text/css">
@media only screen and (max-width: 992px) {
	.filter-bar {
		margin-top: 50px;
	}
}

.lnr-chevron-down:before {
	font-size: 12px;
}
</style>

</head>

<body id="category">

	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="trangchuController"><img
						src="img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link"
								href="trangchuController">Home</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="giayController">Shop</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
							<c:choose>
								<c:when test="${not empty sessionScope.dn}">
									<li class="nav-item submenu dropdown"><a href="#"
										class="nav-link dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">Welcome
											${sessionScope.dn.getTendn()}</a>
										<ul class="dropdown-menu">
											<li class="nav-item"><a class="nav-link"
												href="hoadonmuahangController">Purchase history</a></li>
											<li class="nav-item"><a class="nav-link"
												href="doithongtinController">Change information</a></li>
											<li class="nav-item"><a class="nav-link"
												href="doimatkhauController">Change password</a></li>
											<li class="nav-item"><a class="nav-link"
												href="dangxuat.jsp">Log out</a></li>
										</ul></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a href="dangnhapController"
										class="nav-link">Login</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="giohangController"
								class="cart"><span class="ti-bag"></span></a></li>
							<li class="nav-item">
								<button class="search">
									<span class="lnr lnr-magnifier" id="search"></span>
								</button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between"
					action="giayController?" method="get">
					<input type="text" class="form-control" id="search_input"
						placeholder="Search Here" name="key" value="${key }"> <input
						name="sort" value="${sort }" style="display: none;">
					<button type="submit" class="btn" name="page" value="1"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div
				class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Shop Category page</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Shop<span class="lnr lnr-arrow-right"></span></a> <a
							href="category.html">Shoes Category</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-12">
				<div class="sidebar-categories">
					<button class="head w-100 text-left border-0" id="show_brand">
						Brand <span class="lnr lnr-chevron-down"></span>
					</button>
					<ul class="main-categories" id="list_brand">
						<c:forEach items="${dsloai }" var="l">
							<c:set var="lbo" value="${lbo}" />
							<li
								class="main-nav-list ${l.getMaloai() == brand ? 'active' : '' }"><a
								href="giayController?brand=${l.getMaloai()}&sort=${sort }&page=1">${l.getTenloai() }
									<span class="number"> (${lbo.countByLoai(l.getMaloai()) })</span>
							</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="sidebar-filter mt-50">
					<button class="top-filter-head w-100 border-0 text-left"
						id="show_filter">
						Product Filters <span class="lnr lnr-chevron-down"></span>
					</button>
					<div id="list_filter">
						<div class="common-filter">
							<div class="head">Brands</div>
							<form action="#">
								<ul>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="apple" name="brand"><label
										for="apple">Apple<span>(29)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="gionee" name="brand"><label
										for="gionee">Gionee<span>(19)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="micromax" name="brand"><label
										for="micromax">Micromax<span>(19)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="samsung" name="brand"><label
										for="samsung">Samsung<span>(19)</span></label></li>
								</ul>
							</form>
						</div>
						<div class="common-filter">
							<div class="head">Color</div>
							<form action="#">
								<ul>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="black" name="color"><label
										for="black">Black<span>(29)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="balckleather" name="color"><label
										for="balckleather">Black Leather<span>(29)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="blackred" name="color"><label
										for="blackred">Black with red<span>(19)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
									<li class="filter-list"><input class="pixel-radio"
										type="radio" id="spacegrey" name="color"><label
										for="spacegrey">Spacegrey<span>(19)</span></label></li>
								</ul>
							</form>
						</div>
						<div class="common-filter">
							<div class="head">Price</div>
							<form action="giayController" method="post">
								<div class="price-range-area">
									<div id="price-range"></div>
									<div class="value-wrapper d-flex">
										<div class="price">Price:</div>
										<span>$</span>
										<div id="lower-value"></div>
										<div class="to">to</div>
										<span>$</span>
										<div id="upper-value"></div>
									</div>
									<button type="submit"
										class="genric-btn primary-border small d-flex ml-auto mt-3">Apply</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-8 col-md-12">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting">
						<form id="sortForm">
							<c:choose>
								<c:when test="${brand !=null }">
									<input name="brand" value="${brand }" style="display: none;">
								</c:when>
								<c:when test="${key !=null }">
									<input name="key" value="${key }" style="display: none;">
								</c:when>
							</c:choose>
							<select name="sort" id="sortOption" onchange="sortByPrice()">
								<option value="default"
									${sort.equals("default") ? "selected" : "" }>Default
									sorting</option>
								<option value="asc" ${sort.equals("asc") ? "selected" : "" }>Price
									Low to High</option>
								<option value="desc" ${sort.equals("desc") ? "selected" : "" }>Price
									High to Low</option>
							</select> <input name="page" value="${1 }" style="display: none;">
						</form>
					</div>
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
					<p style="margin-top: 12px;">Showing ${results } results</p>
					<div class="row">
						<c:forEach items="${dsgiay }" var="o">
							<!-- single product -->
							<div class="col-lg-4 col-md-6 d-flex flex-column">
								<div class="single-product d-flex flex-column" style="flex: 1;">
									<img class="img-fluid" src="${o.getAnh() }"
										alt="${o.getTengiay() }" style="background: #828bb3;">
									<div class="product-details d-flex flex-column"
										style="flex: 1;">
										<h6 class="top">${o.getTengiay() }</h6>
										<div class="bottom mt-auto">
											<div class="price">
												<h6>$${o.getGia() }</h6>
												<h6 class="l-through">$${o.getGia()+25}</h6>
											</div>
											<div class="prd-bottom">
												<a href="chitietgiayController?id=${o.getMagiay() }"
													class="social-info"> <span class="lnr lnr-magnifier"></span>
													<p class="hover-text">View more</p>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</section>
				<!-- End Best Seller -->
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<ul class="pagination mr-auto ml-auto">
						<li class="page-item ${currentPage == 1 ? 'disabled' : '' }">
							<c:choose>
								<c:when test="${brand != null }">
									<a
										href="giayController?brand=${brand }&sort=${sort }&page=${currentPage-1 }"
										class="prev-arrow page-link"><i
										class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
								</c:when>
								<c:when test="${key != null }">
									<a
										href="giayController?key=${key }&sort=${sort }&page=${currentPage-1 }"
										class="prev-arrow page-link"><i
										class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
								</c:when>
								<%-- <c:when test="${sort != null }">
									<a href="giayController?sort=${sort }&page=${currentPage-1 }"
										class="prev-arrow page-link"><i
										class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
								</c:when> --%>
								<c:otherwise>
									<a href="giayController?sort=${sort }&page=${currentPage-1 }"
										class="prev-arrow page-link"><i
										class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
								</c:otherwise>
							</c:choose>
						</li>
						<c:forEach begin="1" end="${totalPage }" var="i">
							<c:choose>
								<c:when test="${brand != null }">
									<li class="page-item"><a
										href="giayController?brand=${brand }&sort=${sort }&page=${i }"
										class="page-link ${currentPage == i ? 'active' : '' }">${i }</a></li>
								</c:when>
								<c:when test="${key != null }">
									<li class="page-item"><a
										href="giayController?key=${key }&sort=${sort }&page=${i }"
										class="page-link ${currentPage == i ? 'active' : '' }">${i }</a></li>
								</c:when>
								<%-- <c:when test="${sort != null }">
									<li class="page-item"><a
										href="giayController?sort=${sort }&page=${i }"
										class="page-link ${currentPage == i ? 'active' : '' }">${i }</a></li>
								</c:when> --%>
								<c:otherwise>
									<li class="page-item"><a
										href="giayController?&sort=${sort }&page=${i }"
										class="page-link ${currentPage == i ? 'active' : '' }">${i }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li
							class="page-item ${currentPage == totalPage ? 'disabled' : '' }">
							<c:choose>
								<c:when test="${brand != null }">
									<a
										href="giayController?brand=${brand }&sort=${sort }&page=${currentPage+1 }"
										class="next-arrow page-link"><i
										class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
								</c:when>
								<c:when test="${key != null }">
									<a
										href="giayController?key=${key }&sort=${sort }&page=${currentPage+1 }"
										class="next-arrow page-link"><i
										class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
								</c:when>
								<%-- <c:when test="${sort != null }">
									<a href="giayController?sort=${sort }&page=${currentPage+1 }"
										class="prev-arrow page-link"><i
										class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
								</c:when> --%>
								<c:otherwise>
									<a href="giayController?sort=${sort }&page=${currentPage+1 }"
										class="next-arrow page-link"><i
										class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
								</c:otherwise>
							</c:choose>
						</li>
					</ul>
				</div>
				<!-- End Filter Bar -->
			</div>
		</div>
	</div>

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r1.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r2.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r3.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r5.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r6.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r7.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r9.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r10.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r11.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a href="#" target="_blank"> <img
							class="img-fluid d-block mx-auto" src="img/category/c5.jpg"
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End related-product Area -->

	<!-- start footer Area -->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Us</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore dolore magna aliqua.</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>Stay update with our latest</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL"
										placeholder="Enter Email" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Email '" required=""
										type="email">


									<button class="click-btn btn btn-default">
										<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
									</button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a"
											tabindex="-1" value="" type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
													<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
												</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="img/i1.jpg" alt=""></li>
							<li><img src="img/i2.jpg" alt=""></li>
							<li><img src="img/i3.jpg" alt=""></li>
							<li><img src="img/i4.jpg" alt=""></li>
							<li><img src="img/i5.jpg" alt=""></li>
							<li><img src="img/i6.jpg" alt=""></li>
							<li><img src="img/i7.jpg" alt=""></li>
							<li><img src="img/i8.jpg" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-dribbble"></i></a> <a href="#"><i
								class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div
				class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<!-- Modal Quick Product View -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="container relative">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="product-quick-view">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="quick-view-carousel">
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="quick-view-content">
								<div class="top">
									<h3 class="head">Mill Oil 1000W Heater, White</h3>
									<div class="price d-flex align-items-center">
										<span class="lnr lnr-tag"></span> <span class="ml-10">$149.99</span>
									</div>
									<div class="category">
										Category: <span>Household</span>
									</div>
									<div class="available">
										Availibility: <span>In Stock</span>
									</div>
								</div>
								<div class="middle">
									<p class="content">Mill Oil is an innovative oil filled
										radiator with the most modern technology. If you are looking
										for something that can make your interior look awesome, and at
										the same time give you the pleasant warm feeling during the
										winter.</p>
									<a href="#" class="view-full">View full Details <span
										class="lnr lnr-arrow-right"></span></a>
								</div>
								<div class="bottom">
									<div class="color-picker d-flex align-items-center">
										Color: <span class="single-pick"></span> <span
											class="single-pick"></span> <span class="single-pick"></span>
										<span class="single-pick"></span> <span class="single-pick"></span>
									</div>
									<div class="quantity-container d-flex align-items-center mt-15">
										Quantity: <input type="text" class="quantity-amount ml-15"
											value="1" />
										<div class="arrow-btn d-inline-flex flex-column">
											<button class="increase arrow" type="button"
												title="Increase Quantity">
												<span class="lnr lnr-chevron-up"></span>
											</button>
											<button class="decrease arrow" type="button"
												title="Decrease Quantity">
												<span class="lnr lnr-chevron-down"></span>
											</button>
										</div>

									</div>
									<div class="d-flex mt-20">
										<a href="#" class="view-btn color-2"><span>Add to
												Cart</span></a> <a href="#" class="like-btn"><span
											class="lnr lnr-layers"></span></a> <a href="#" class="like-btn"><span
											class="lnr lnr-heart"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/javascript.js"></script>
</body>

</html>