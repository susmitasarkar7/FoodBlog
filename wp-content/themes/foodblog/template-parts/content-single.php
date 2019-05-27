
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
			<div class="blog-thubm">
			<?php if( has_post_thumbnail() ) { //check for feature image ?>
				<?php the_post_thumbnail(); ?>
			<?php } ?>
				<div class="blog-date">
					<span><?php the_date(); ?></span>
				</div>
			</div>
			<div class="blog-text">
					
				<?php
					if ( is_singular() ) :
						the_title( '<h5 class="entry-title">', '</h5>' );
					else :
						the_title( '<h5 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h5>' );
					endif;

					if ( 'post' === get_post_type() ) :
				?>
			
				<span>By <?php the_author(); ?></span>
				<p><?php the_content(); ?></p>
				<i class="fa fa-comments"></i>&nbsp; <a href="<?php comments_link(); ?>"><?php comments_number(0, 1, '%'); ?>&nbsp; Comments</a>
				<i class="fa fa-folder"></i>&nbsp; <?php the_category(', '); ?>
				<i class="fa fa-tags"></i>&nbsp; <?php the_tags('', ', ', ''); ?>

				<?php edit_post_link('Edit', '<i class="fa fa-pencil"></i>&nbsp; ', ''); ?>

				<a href="<?php echo get_permalink($post->ID); ?>" class="readmore"><i class="fa fa-angle-right"></i></a>
			</div>
		<?php endif; ?>
	</header><!-- .entry-header -->

</article><!-- #post-<?php the_ID(); ?> -->