<!-- Hero section -->
<section class="hero-section">
		<div class="hero-slider owl-carousel">

			<?php $loop = new WP_Query( array( 'post_type' => 'hero_slider', 
			'orderby' => 'post_id', 'order' => 'ASC'));?>

			<?php while( $loop->have_posts() ) : $loop->the_post(); ?>

			<div class="hero-slide-item set-bg" data-setbg="
			<?php echo get_field('hero_slider_image')['url']; ?>
			">		
			<!-- <?php //echo get_theme_mod('showcase_image', get_bloginfo('template_url').'/assets/img/slider-bg-1.jpg'); ?>	 -->
			<div class="hs-text">
				<!-- <h2 class="hs-title-1"><span><?php echo get_theme_mod('showcase_heading_1', 'Healthy Recipes'); ?></span></h2> -->
				<h2 class="hs-title-1"><span><?php the_field('title_1'); ?></span></h2>
				<h2 class="hs-title-2"><span><?php the_field('title_2'); ?></span></h2>
				<h2 class="hs-title-3"><span><?php the_field('title_3'); ?></span></h2>
			</div>
			</div>

			<?php endwhile; wp_reset_query(); ?>

		</div>
	</section>
	<!-- Hero section end -->