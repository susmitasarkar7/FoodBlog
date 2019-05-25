<?php
/**
 * Template Name : Contact Page
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



<!-- Search section -->
<div class="search-form-section">
    <div class="sf-warp">
        <div class="container">
            <form class="big-search-form">
                <select>
                    <option>All Recipes Categories</option>
                    <option>Pizza</option>
                    <option>Salads</option>
                    <option>Desserts</option>
                    <option>Side Dishes</option>
                </select>
                <select>
                    <option>All Ingredients</option>
                    <option>Breakfast</option>
                    <option>Lunch</option>
                    <option>Dinner</option>
                </select>
                <input type="text" placeholder="Search Receipies">
                <button class="bsf-btn">Search</button>
            </form>
        </div>
    </div>
</div>
<!-- Search section end -->

<section class="contact-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="contact-form-warp">
                    <h4>Leave a comment</h4>
                    <form class="contact-form">
                    <?php while ( have_posts() ) : the_post(); ?>
                    <?php the_content(); ?>
                <?php endwhile; //end of the loop ?>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="contact-logo">
                    <img src="<?php bloginfo('stylesheet_directory') ;?>/assets/img/logo.png" alt="">
                </div>
                <div class="contact-info">
                    <ul class="ct-list">
                        <li>
                            <h6>Address:</h6>
                            <p>481 Creekside Lane Avila</p>
                            <p>Beach, CA 93424</p>
                        </li>
                        <li>
                            <h6>Phone:</h6>
                            <p>+53 345 7953 32453</p>
                            <p>+53 345 7557 822112</p>
                        </li>
                        <li>
                            <h6>Email:</h6>
                            <p>yourmail@gmail.com</p>
                        </li>
                    </ul>
                    <div class="contact-social">
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- map -->
        <div class="location-map" id="map-canvas"></div>
    </div>
</section>

<?php get_template_part( 'template-parts/content', 'gallery' ); ?>

<?php 
get_footer();
?>