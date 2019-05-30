<?php
/**
 * Template Name : Register Page
 */

get_header();
?>

<!-- Hero section -->
<section class="page-top-section set-bg" data-setbg="<?php bloginfo('stylesheet_directory') ;?>/assets/img/page-top-bg.jpg">
    <div class="container">
        <h2><?php the_title();?></h2>
    </div>
</section>
<!-- Hero section end -->



<?php get_template_part( 'template-parts/content', 'gallery' ); ?>

<?php 
get_footer();
?>