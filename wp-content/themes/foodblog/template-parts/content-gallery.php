<!-- Gallery section -->
<div class="gallery">
    <div class="gallery-slider owl-carousel">
        <?php $loop = new WP_Query( array( 'post_type' => 'gallery', 'posts_per_page' => $recipesLength,
            'orderby' => 'post_id', 'order' => 'ASC'));?>

        <?php while( $loop->have_posts() ) : $loop->the_post(); ?>

        <div class="gs-item set-bg"
            data-setbg="<?php echo get_the_post_thumbnail_url( $page->ID, 'thumbnail', 'full' ); ?>"></div>

        <?php endwhile; wp_reset_query(); ?>
    </div>
</div>
<!-- Gallery section end -->