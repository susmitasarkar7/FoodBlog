<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Food_BLog
 */

get_header();
?>

<section class="bottom-widgets-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="sp-blog-item">
			
					<?php
					while ( have_posts() ) :
						the_post();

						get_template_part( 'template-parts/content', 'single' );

						the_post_navigation();

						// If comments are open or we have at least one comment, load up the comment template.
						if ( comments_open() || get_comments_number() ) :
							comments_template();
						endif;

					endwhile; // End of the loop.
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
