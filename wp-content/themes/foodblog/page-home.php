<?php
/**
 * Template Name : Home Page
 */

// Amazing deserts
$amazing_deserts_title = get_field('amazing_deserts_title');
$amazing_deserts_description_1 = get_field('desc_1');
$amazing_deserts_description_2 = get_field('desc_2');
$amazing_deserts_description_3 = get_field('desc_3');
$amazing_deserts_description_4 = get_field('desc_4');
$amazing_deserts_image_1 = get_field('img_1');
$amazing_deserts_image_2 = get_field('img_2');
$amazing_deserts_image_3 = get_field('img_3');

get_header();
?>

	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">

			<?php $loop = new WP_Query( array( 'post_type' => 'hero_slider', 
			'orderby' => 'post_id', 'order' => 'ASC'));?>

			<?php while( $loop->have_posts() ) : $loop->the_post(); ?>

			<div class="hero-slide-item set-bg" data-setbg="
			<?php echo get_field('hero_slider_image')['url']; ?>
			">
			<div class="hs-text">
				<h2 class="hs-title-1"><span><?php the_field('title_1'); ?></span></h2>
				<h2 class="hs-title-2"><span><?php the_field('title_2'); ?></span></h2>
				<h2 class="hs-title-3"><span><?php the_field('title_3'); ?></span></h2>
			</div>
			</div>

			<?php endwhile; ?>

		</div>
	</section>
	<!-- Hero section end -->


	<!-- Add section end -->
	<section class="add-section spad">
		<div class="container">
			<div class="add-warp">
				<div class="add-slider owl-carousel">
					<div class="as-item set-bg" data-setbg="<?php echo $amazing_deserts_image_1; ?>"></div>
					<div class="as-item set-bg" data-setbg="<?php echo $amazing_deserts_image_2; ?>"></div>
					<div class="as-item set-bg" data-setbg="<?php echo $amazing_deserts_image_3; ?>"></div>
				</div>
				<div class="row add-text-warp">
					<div class="col-lg-4 col-md-5 offset-lg-8 offset-md-7">
						<div class="add-text text-white">
							<div class="at-style"></div>
							<h2><?php echo $amazing_deserts_title; ?></h2>
							<ul>
								<li><?php echo $amazing_deserts_description_1; ?></li>
								<li><?php echo $amazing_deserts_description_2; ?></li>
								<li><?php echo $amazing_deserts_description_3; ?></li>
								<li><?php echo $amazing_deserts_description_4; ?></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Add section end -->


	<!-- Recipes section -->
	<section class="recipes-section spad pt-0">
		<div class="container">
			<div class="section-title">
				<h2>Latest recipes</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="recipe">
						<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/recipes/1.jpg" alt="">
						<div class="recipe-info-warp">
							<div class="recipe-info">
								<h3>Traditional Pizza</h3>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-md-6">
					<div class="recipe">
						<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/recipes/2.jpg" alt="">
						<div class="recipe-info-warp">
							<div class="recipe-info">
								<h3>Italian home-made pasta</h3>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recipe">
						<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/recipes/3.jpg" alt="">
						<div class="recipe-info-warp">
							<div class="recipe-info">
								<h3>Chesse Cake Tart</h3>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recipe">
						<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/recipes/4.jpg" alt="">
						<div class="recipe-info-warp">
							<div class="recipe-info">
								<h3>Traditional Pizza</h3>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recipe">
						<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/recipes/5.jpg" alt="">
						<div class="recipe-info-warp">
							<div class="recipe-info">
								<h3>Italian home-made pasta</h3>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="recipe">
						<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/recipes/6.jpg" alt="">
						<div class="recipe-info-warp">
								<div class="recipe-info">
								<h3>Chesse Cake Tart</h3>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Recipes section end -->


	<!-- Footer widgets section -->
	<section class="bottom-widgets-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 ftw-warp">
					<div class="section-title">
						<h3>Top rated recipes</h3>
					</div>
					<ul class="sp-recipes-list">
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/1.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Italian pasta</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/2.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>French Onion Soup</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/3.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Homemade  pasta</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/4.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Onion Soup Gratinee</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/4.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Feta Cheese Burgers</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 ftw-warp">
					<div class="section-title">
						<h3>Most liked recipes</h3>
					</div>
					<ul class="sp-recipes-list">
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/6.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Traditional Food</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/7.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Baked Salmon</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/8.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Deep Fried Fish</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/9.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Raw Tomato Soup</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
						<li>
							<div class="rl-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/10.jpg"></div>
							<div class="rl-info">
								<span>March 14, 2018</span>
								<h6>Vegan Food</h6>
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star is-fade"></i>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-lg-4">
					<div class="sp-blog-item">
						<div class="blog-thubm">
							<img src="<?php bloginfo('stylesheet_directory')?>/assets/img/blog/1.jpg" alt="">
							<div class="blog-date">
								<span>May 04, 2018</span>
							</div>
						</div>
						<div class="blog-text">
							<h5>Italian restaurant Review</h5>
							<span>By Maria Williams</span>
							<p>Donec quam felis, ultricies nec, pellente sque eu, pretium quis, sem. Nulla conseq uat massa quis enim. </p>
							<a href="#" class="comment">2 Comments</a>
							<a href="#" class="readmore"><i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer widgets section end -->


	<!-- Review section end -->
	<section class="review-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-8 offset-lg-0 offset-md-2">
					<div class="review-item">
						<div class="review-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/11.jpg">
							<div class="review-date">
								<span>May 04, 2018</span>
							</div>
						</div>
						<div class="review-text">
							<span>March 14, 2018</span>
							<h6>Feta Cheese Burgers</h6>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star is-fade"></i>
							</div>
							<div class="author-meta">
								<div class="author-pic set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/author.jpg"></div>
								<p>By Janice Smith</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-8 offset-lg-0 offset-md-2">
					<div class="review-item">
						<div class="review-thumb set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/thumb/12.jpg">
							<div class="review-date">
								<span>May 04, 2018</span>
							</div>
						</div>
						<div class="review-text">
							<span>March 14, 2018</span>
							<h6>Mozarella Pasta</h6>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star is-fade"></i>
							</div>
							<div class="author-meta">
								<div class="author-pic set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/author.jpg"></div>
								<p>By Janice Smith</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Review section end -->


	<!-- Gallery section -->
	<div class="gallery">
		<div class="gallery-slider owl-carousel">
			<div class="gs-item set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/instagram/1.jpg"></div>
			<div class="gs-item set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/instagram/2.jpg"></div>
			<div class="gs-item set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/instagram/3.jpg"></div>
			<div class="gs-item set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/instagram/4.jpg"></div>
			<div class="gs-item set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/instagram/5.jpg"></div>
			<div class="gs-item set-bg" data-setbg="<?php bloginfo('stylesheet_directory')?>/assets/img/instagram/6.jpg"></div>
		</div>
	</div>
	<!-- Gallery section end -->

<?php
get_footer();
