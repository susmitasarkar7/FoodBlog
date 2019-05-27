<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Food_BLog
 */

get_header();
?>

<section class="page-top-section set-bg"
	data-setbg="<?php bloginfo('stylesheet_directory') ;?>/assets/img/page-top-bg.jpg">
	<div class="container">
		<h2>Blog</h2>
	</div>
</section>

<section class="bottom-widgets-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="sp-blog-item">

					<?php
						if ( have_posts() ) :

							if ( is_home() && ! is_front_page() ) :
								?>
									<header>
										<h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
									</header>
									<?php
							endif;

							/* Start the Loop */
							while ( have_posts() ) :
								the_post();

								/*
								* Include the Post-Type-specific template for the content.
								* If you want to override this in a child theme, then include a file
								* called content-___.php (where ___ is the Post Type name) and that will be used instead.
								*/
								get_template_part( 'template-parts/content', get_post_type() );

							endwhile;

							the_posts_navigation();

						else :

							get_template_part( 'template-parts/content', 'none' );

						endif;
					?>


				</div>
			</div>
			<div class="col-sm-4">
				<aside>
					<?php get_sidebar(); ?>
					<?php dynamic_sidebar('sidebar-2'); ?>
				</aside>
			</div>
		</div>
	</div>
</section>


<?php
get_footer();