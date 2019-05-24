
<?php 
    $pagename = $_SERVER['REQUEST_URI'];
    $pagename = str_replace('/', '', $pagename);
    
    if($pagename == 'foodblogreceipies') {
        $recipesLength = 12;
        $positionTop = '';
    } elseif ($pagename == 'foodblog') {
        $recipesLength = 6;
        $positionTop = 'pt-0';
    } 
?>

<!-- Recipes section -->
<section class="recipes-section spad <?php echo $positionTop; ?>">
    <div class="container">
        <div class="section-title">
            <h2>Latest recipes</h2>
        </div>
        <div class="row">
            <?php $loop = new WP_Query( array( 'post_type' => 'latest_recipe', 'posts_per_page' => $recipesLength,
            'orderby' => 'post_id', 'order' => 'ASC'));?>

            <?php while( $loop->have_posts() ) : $loop->the_post(); ?>

            <div class="col-lg-4 col-md-6">
                <div class="recipe">
                    <?php 
							if(has_post_thumbnail()) { //check for the feature image
								the_post_thumbnail( array(  ) );
							}
						?>
                    <div class="recipe-info-warp">
                        <div class="recipe-info">
                            <h3><?php the_title(); ?></h3>
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

            <?php endwhile; wp_reset_query(); ?>
        </div>
</section>
<!-- Recipes section end -->