<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Food_BLog
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<!-- Favicon -->   
	<link href="<?php bloginfo('stylesheet_directory')?>/assets/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600,600i,700" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/assets/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/assets/css/owl.carousel.css"/>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/assets/css/animate.css"/>
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/assets/css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<!-- Page Preloder -->
<!-- <div id="preloder">
		<div class="loader"></div>
	</div> -->

	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="header-social">
					<a href="#"><i class="fa fa-pinterest"></i></a>
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
				</div>
				<div class="user-panel">
					<a href="#">Register</a> / 
					<a href="#">Login</a>
				</div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="container">
				<a href="#!" class="site-logo">
					<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/logo.png" alt="">
				</a>
				<div class="nav-switch">
					<i class="fa fa-bars"></i>
				</div>
				<div class="header-search">
					<a href="#"><i class="fa fa-search"></i></a>
				</div>

				<?php 
					wp_nav_menu(array(

						'theme-location'  => 'primary',
						'depth'	          => 2,
						'container' 	  => 'ul',
						'menu_class'	  => 'main-menu',
						'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
						'walker'          => new WP_Bootstrap_Navwalker(),

					));
				?>

				<!-- <ul class="main-menu">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">Features</a></li>
					<li><a href="recipes.html">Receipies</a></li>
					<li><a href="#">Reviews</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul> -->
			</div>
		</div>
	</header>
	<!-- Header section end -->
