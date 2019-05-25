<?php
/**
 * Template Name : Feature Page
 */

get_header();
?>

<!-- Hero section -->
<section class="page-top-section set-bg" data-setbg="img/page-top-bg.jpg">
		<div class="container">
			<h2><?php the_title(); ?></h2>
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


	<?php get_template_part( 'template-parts/content', 'latestreceipies' ); ?>	

	
	<?php get_template_part( 'template-parts/content', 'gallery' ); ?>	
    

<?php 
get_footer();
?>