<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //for-mobile-apps -->
	<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/contactstyle.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/faqstyle.css" type="text/css" media="all" />
	<link href="${pageContext.request.contextPath }/resources/css/single.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath }/resources/css/medile.css" rel='stylesheet' type='text/css' />
	<!-- banner-slider -->
	<link href="${pageContext.request.contextPath }/resources/css/jquery.slidey.min.css" rel="stylesheet">
	<!-- //banner-slider -->
	<!-- pop-up -->
	<link href="${pageContext.request.contextPath }/resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop-up -->
	<!-- font-awesome icons -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" />
	<!-- //font-awesome icons -->
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- banner-bottom-plugin -->
	<link href="${pageContext.request.contextPath }/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
	<script src="${pageContext.request.contextPath }/resources/js/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel({

				autoPlay: 3000, //Set AutoPlay to 3 seconds

				items : 5,
				itemsDesktop : [640,4],
				itemsDesktopSmall : [414,3]

			});

		});
	</script>

	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<style type="text/css">
		.movies_nav {
			background: #3361b7!important;
		}
		.modal-header {
			text-align: center;
			font-size: 1em;
			color: #337ab7;

		}
		.form-module {
			position: relative;
			background: #ffffff;
			max-width: 400px;
			width: 100%;
			border-top: 5px solid #337ab7;
			box-shadow: 0 0 3px rgba(0, 0, 0, 0.25);
			margin: 1em auto;
		}
		.form-module .toggle {
			cursor: pointer;
			position: absolute;
			top: -0;
			right: -0;
			background: #337ab7;
			width: 30px;
			height: 30px;
			margin: -5px 0 0;
			color: #ffffff;
			font-size: 12px;
			line-height: 30px;
			text-align: center;
		}
		.form-module input[type="submit"] {
			background: #337ab7;
			width: 100%;
			border: 0;
			padding: 10px 15px;
			color: #ffffff;
			-webkit-transition: 0.3s ease;
			transition: 0.3s ease;
			font-size: 1em;
			font-weight: bold;
			text-transform: uppercase;
			outline: none;
		}
	</style>
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"64357",secure:"64362"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-3" data-genuitec-path="/hotel/WebRoot/index.jsp">

<!-- bootstrap-pop-up -->
<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal"  >
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				登录 & 注册
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<section>
				<div class="modal-body">
					<div class="w3_login_module">
						<div class="module form-module">
							<div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">点我</div>
							</div>
							<div class="form">
								<h3>登录</h3>
								<form action="${pageContext.request.contextPath}/login" method="post">
									<input type="text" name="username" placeholder="用户名" required="">
									<input type="password" name="password" placeholder="密码" required="">
									<input type="submit" value="登录">
								</form>
							</div>
							<div class="form">
								<h3>注册</h3>
								<form action="#" method="post">
									<input type="text" name="Username" placeholder="用户名" required="">
									<input type="password" name="Password" placeholder="密码" required="">
									<input type="email" name="Email" placeholder="邮箱" required="">
									<input type="text" name="Phone" placeholder="手机号" required="">
									<input type="text" name="idCard" placeholder="身份证号" required="">
									性别：<input type="radio" name="sex" placeholder="性别" required="" value=“0”>女
									<input type="radio" name="sex" placeholder="性别" required="" value=“1” checked="checked">男
									<input type="submit" value="注册">
								</form>
							</div>
							<div class="cta"><a href="#">忘记密码?</a></div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
<script>
	$('.toggle').click(function(){
		// Switches the Icon
		$(this).children('i').toggleClass('fa-pencil');
		// Switches the forms
		$('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		}, "slow");
	});
</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
<div class="movies_nav" >
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul>
					<ul class="nav navbar-nav">
						<li class="active  col-md-offset-6"><a href="index.html">首页</a></li>
						<li><a href="short-codes.html">关于我们</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal">登录/注册</a></li>
				    </ul>
				</ul>
			</div>
		</nav>
	</div>
</div>
<!-- //nav -->
<!-- banner -->
<div>
	<img src="${pageContext.request.contextPath }/resources/images2/index.jpg" width="100%" height="612px"/>
</div>

<script>
	$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});

	});
</script>



<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$(".dropdown").hover(
				function() {
					$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
					$(this).toggleClass('open');
				},
				function() {
					$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
					$(this).toggleClass('open');
				}
		);
	});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
	$(document).ready(function() {
		/*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

		$().UItoTop({ easingType: 'easeOutQuart' });

	});
</script>
<!-- //here ends scrolling icon -->
</body>
</html></html>