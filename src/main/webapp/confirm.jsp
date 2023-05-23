<%@ page import="Model.Ticket" %>
<%@ page import="Service.Webservice" %>
<%@ page import="Model.NumberFormat" %>
<%@ page import="java.text.FieldPosition" %>
<%@ page import="java.text.ParsePosition" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
	<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Repay</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/jquery-ui.css">				
			<link rel="stylesheet" href="css/nice-select.css">							
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">				
			<link rel="stylesheet" href="css/main.css">
		</head>
		<body>	

<style>
.et-page-header {
    margin-top: 10px;
    margin-bottom: 20px;
}
.row {
    margin-left: -15px;
    margin-right: -15px;
}
.et-main-label {
    /* background: rgba(34, 34, 34, 0.9); */
    padding: 5px 40px 5px 10px;
    margin-left: 5px;
    color: #0082c4;
    font-family: Verdana;
    font-weight: bold;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
}
.panel-warning>.panel-heading {
    background-color: rgba(34, 34, 34, 1) !important;
    color: #fff!important;
    border-color: 1px solid #ddd !important;
    padding: 10px 15px;
    border-radius: 0.3rem 0.3rem 0 0;
}
.panel-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 16px;
    color: inherit;
}
.panel-body {
    padding: 15px;
    color: black;
    border: 1px solid #777;
    border-radius: 0 0 0.3rem 0.3rem;
}
.btn-primary {
    color: #fff;
    background-color: #2FA4E7;
    border-color: #007bff;
}
.col-md-12 {
    flex: 0 0 100%;
    max-width: 100%;
    color: #555;
}	


.et-step-bar {
    height: 20px;
    border-bottom: 1px solid #d3d3d3;
    margin-bottom: 60px;
}
.row {
    margin-left: -15px;
    margin-right: -15px;
}
.et-col-md-3 {
    position: relative;
    min-height: 1px;
    float: left;
    display: block;
    padding-left: 15px;
    padding-right: 15px;
}
.et-col-md-3 {
    width: 25%;
}
.et-step-bar img {
    margin-top: 10px;
}
img {
    vertical-align: middle;
}
.et-col-md-3 {
    position: relative;
    min-height: 1px;
    float: left;
    display: block;
    padding-left: 15px;
    padding-right: 15px;
}
.et-col-md-3 {
    width: 25%;
}
.text-info {
    color: #3a87ad;
}
</style>		
		
			<header id="header">
				<div class="header-top">
					<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-left">
			  				<ul>
			  					<li><a href="#">Visit Us</a></li>
			  					<li><a href="#">Buy Tickets</a></li>
			  				</ul>			
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-right">
							<div class="header-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
			  			</div>
			  		</div>			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li><a href="index.html">Tìm vé</a></li>
				          <li><a href="infor.html">Thông tin đặt chỗ</a></li>
				          <li><a href="repay.jsp">Trả vé</a></li>
				          <li><a href="check.html">Kiếm tra vé</a></li>
				          <li><a href="promotion.html">Khuyến mại</a></li>
				          <li class=""><a href="regulations.html">Các quy định</a></li>	
				          <li class=""><a href="guide.html">Hướng dẫn</a>			          					          		          
				          <li><a href="contact.html">Liên hệ</a></li>
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header><!-- #header -->
			  
			<!-- start banner Area -->
			<section class="about-banner relative">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Trả vé trực tuyến				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Tìm vé </a>  <span class="lnr lnr-arrow-right"></span>
								<a href="confirm.jsp">Xác nhận thông tin vé</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start hot-deal Area -->
			<section class="hot-deal-area section-gap">
				<div class="container">
				
		            <div class="container et-main-content" ng-show="!bannerTet">
            <div class="marquee"><div style="width: 100000px; margin-left: 1116px; animation: 15s linear 1s infinite normal none running marqueeAnimation-8893491;" class="js-marquee-wrapper"><div class="js-marquee" style="margin-right: 0px; float: left;"></div></div></div>
            <!-- ngView:  --><div data-ng-view="" class="shuffle-animation ng-scope" style="padding-right: 0px; padding-left: 0px;"><div ng-controller="sts.controllers.returnticket.traveonline" ng-keypress="onEnter($event)" class="ng-scope">


<div class="col-md-12 hidden-print">
    <div class="row et-page-header">
        <span class="et-main-label ng-binding">XÁC NHẬN THÔNG TIN TRẢ VÉ<!--TRẢ VÉ TRỰC TUYẾN--></span>
    </div>
</div>

<!-- step1 - input -->

<div ng-show="step == 1" class="">
	<div class="col-md-12">
		<div>
			<p class="alert alert-info">
				Trả vé trực tuyến chỉ áp dụng với trường hợp khách hàng đã thanh toán trực tuyến (qua cổng thanh toán, ví điện tử, app ngân hàng) và có điền email khi mua vé.
				<br>
				Nếu quý khách thanh toán bằng tiền mặt, trả sau qua ứng dụng ngân hàng và atm, chuyển khoản hoặc trả vé khi có sự cố bãi bỏ tàu vui lòng thực hiện thủ tục tại các nhà ga, đại lý bán vé.
			</p>
		</div>
	</div>

	<% NumberFormat nf = new NumberFormat();
	Ticket tic = (Ticket) request.getAttribute("ticket");
	String book = (String) request.getAttribute("booking_code");
	String email = (String) request.getAttribute("email");
	String phone = (String) request.getAttribute("phone");
	%>

	<!-- Bước 3. Hệ thống chuyển sang bước xác nhận để hành khách kiểm tra lại thông tin trả vé. -->
    <div class="col-md-12 hidden-print form-horizontal" style="width: 99%;">
        <div>
            <div class="row form-group">
                <label class="col-xs-4 col-sm-3 control-label ng-binding">Mã vé</label>
                <div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getId()%></p>
                </div>
            </div>

            <div class="row form-group">
                <label class="col-xs-4 col-sm-3 control-label ng-binding">Tên vé</label>
                <div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getName()%></p>
                </div>
            </div>
            <div class="row form-group">
                <label class="col-xs-4 col-sm-3 control-label ng-binding">Mã tàu</label>
                <div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getTrainId()%></p>
                </div>
            </div>
			<div class="row form-group">
				<label class="col-xs-4 col-sm-3 control-label ng-binding">Ga đi</label>
				<div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getLctTO()%></p>
				</div>
			</div>
			<div class="row form-group">
				<label class="col-xs-4 col-sm-3 control-label ng-binding">Ga đến</label>
				<div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getLctEnd()%></p>
				</div>
			</div>
			<div class="row form-group">
				<label class="col-xs-4 col-sm-3 control-label ng-binding">Ngày đi</label>
				<div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getDayStart()%></p>
				</div>
			</div>
			<div class="row form-group">
				<label class="col-xs-4 col-sm-3 control-label ng-binding">Ngày về</label>
				<div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=tic.getDayStop()%></p>
				</div>
			</div>
            <div class="row form-group">
                <label class="col-xs-4 col-sm-3 control-label ng-binding">Giá vé</label>
                <div class="col-xs-8 col-sm-9 et-no-padding">
                    <p><%=tic.getValue()%></p>
                </div>
            </div>

			<div class="col-md-12 hidden-print">
				<div class="row et-page-header">
					<span class="et-main-label ng-binding">THÔNG TIN NGƯỜI ĐẶT VÉ<!--TRẢ VÉ TRỰC TUYẾN--></span>
				</div>
			</div>
			<div class="row form-group">
				<label class="col-xs-4 col-sm-3 control-label ng-binding">Email</label>
				<div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=email%></p>
				</div>
				<label class="col-xs-4 col-sm-3 control-label ng-binding">Số điện thoại</label>
				<div class="col-xs-8 col-sm-9 et-no-padding">
					<p><%=phone%></p>
				</div>
			</div>

            <div class="row form-group">
                <div class="col-xs-4 col-sm-3"></div>
                <div class="col-xs-8 col-sm-9 et-no-padding">
					<!-- Bước 4. Hành khách nhấp vào button trả vé để tiến hành trả vé. -->
                    <a href="/lab/CompletedServlet?booking=<%=book%> & email=<%=email%> & phone=<%=phone%>" class="btn btn-primary ng-binding">Trả vé</a>
                </div>
            </div>
        </div>
        <hr>
    </div>

</div>
</div></div>

						<div class="et-col-md-12 hidden-print" style="margin-top: 50px; display: block;">
							<div class="panel panel-warning" style="margin-bottom: -15px;margin-left:-15px; margin-right:-15px">
								<div class="panel-heading">
									<h3 class="panel-title">Quy định đổi, trả vé: từ ngày 6/2/2023 đến ngày 26/4/2023</h3>
								</div>
								<div class="panel-body">
									<p>1. Thời gian, mức phí đổi trả vé:</p>
									<p>- Đổi vé: Vé cá nhân đổi trước giờ tàu chạy 24 giờ trở lên, lệ phí là 20.000 đồng/vé, dưới 24 giờ không đổi vé; không áp dụng đổi vé đối với vé tập thể.</p>
									<p>- Trả vé:</p>
									<p>&nbsp; &nbsp; + Vé cá nhân: Trả vé trước giờ tàu chạy từ 24 giờ trở lên lệ phí là 10% giá vé, từ 4 giờ đến dưới 24 giờ lệ phí là 20% giá vé, dưới 4 giờ không trả vé.</p>
									<p>&nbsp; &nbsp; + Vé tập thể: Trả vé trước giờ tàu chạy từ 72 giờ trở lên lệ phí là 10% giá vé ,từ 24 giờ đến dưới 72 giờ lệ phí là 20% giá vé, dưới 24 giờ không trả vé.</p>
									<p>2. Hình thức trả vé.</p>
									<p>- Khi hành khách mua vé và thanh toán online qua website bán vé của ngành Đường sắt, app bán vé hoặc các ứng dụng mua vé tàu hỏa của các đối tác thứ ba thì có thể trả vé online qua các website bán vé của ngành đường sắt hoặc đến trực tiếp nhà ga.</p>
									<p>- Khi hành khách mua vé bằng các hình thức khác, muốn đổi vé, trả vé hành khách đến trực tiếp nhà ga kèm theo giấy tờ tùy thân bản chính của người đi tàu hoặc người mua vé cho nhân viên đường sắt. Đồng thời, thông tin trên thẻ đi tàu phải trùng khớp với giấy tờ tùy thân của hành khách.</p>
									<i>Trân trọng cảm ơn!.</i>
								</div>
							</div>
						</div>
        </div>
				</div>	
			</section>
			<!-- End hot-deal Area -->

			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">

					<div class="row">
						<div class="col-lg-3  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>About Agency</h6>
								<p>
									The world has become so fast paced that people don’t want to stand by reading a page of information, they would much rather look at a presentation and understand the message. It has come to a point 
								</p>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>Navigation Links</h6>
								<div class="row">
									<div class="col">
										<ul>
											<li><a href="#">Home</a></li>
											<li><a href="#">Feature</a></li>
											<li><a href="#">Services</a></li>
											<li><a href="#">Portfolio</a></li>
										</ul>
									</div>
									<div class="col">
										<ul>
											<li><a href="#">Team</a></li>
											<li><a href="#">Pricing</a></li>
											<li><a href="#">Blog</a></li>
											<li><a href="#">Contact</a></li>
										</ul>
									</div>										
								</div>							
							</div>
						</div>							
						<div class="col-lg-3  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h6>Newsletter</h6>
								<p>
									For business professionals caught between high OEM price and mediocre print and graphic output.									
								</p>								
								<div id="mc_embed_signup">
									<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscription relative">
										<div class="input-group d-flex flex-row">
											<input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
											<button class="btn bb-btn"><span class="lnr lnr-location"></span></button>		
										</div>									
										<div class="mt-10 info"></div>
									</form>
								</div>
							</div>
						</div>
						<div class="col-lg-3  col-md-6 col-sm-6">
							<div class="single-footer-widget mail-chimp">
								<h6 class="mb-20">InstaFeed</h6>
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
					</div>

					<div class="row footer-bottom d-flex justify-content-between align-items-center">
						<p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
						<div class="col-lg-4 col-sm-12 footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->	

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>		
 			<script src="js/jquery-ui.js"></script>					
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>					
			<script src="js/owl.carousel.min.js"></script>							
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>