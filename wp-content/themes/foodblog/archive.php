<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Food_BLog
 */

get_header();
?>


<?php if ( have_posts() ) : ?>

<section class="page-top-section set-bg"
	data-setbg="<?php bloginfo('stylesheet_directory') ;?>/assets/img/page-top-bg.jpg">
	<div class="container">

		<?php
					the_archive_title( '<h2 class="page-title">', '</h2>' );
					the_archive_description( '<small class="archive-description">', '</small>' );
					?>
	</div>
</section>

<section class="bottom-widgets-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="sp-blog-item">
					<?php
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