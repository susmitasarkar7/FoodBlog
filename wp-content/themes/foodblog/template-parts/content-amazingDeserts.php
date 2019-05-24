<?php

// Amazing deserts
$amazing_deserts_title = get_field('amazing_deserts_title');
$amazing_deserts_description_1 = get_field('desc_1');
$amazing_deserts_description_2 = get_field('desc_2');
$amazing_deserts_description_3 = get_field('desc_3');
$amazing_deserts_description_4 = get_field('desc_4');
$amazing_deserts_image_1 = get_field('img_1');
$amazing_deserts_image_2 = get_field('img_2');
$amazing_deserts_image_3 = get_field('img_3');

?>


<!-- Add section end -->
<section class="add-section spad">
    <div class="container">
        <div class="add-warp">
            <div class="add-slider owl-carousel">
                <div class="as-item set-bg" data-setbg="<?php echo $amazing_deserts_image_1['url']; ?>"></div>
                <div class="as-item set-bg" data-setbg="<?php echo $amazing_deserts_image_2['url']; ?>"></div>
                <div class="as-item set-bg" data-setbg="<?php echo $amazing_deserts_image_3['url']; ?>"></div>
            </div>
            <div class="row add-text-warp">
                <div class="col-lg-4 col-md-5 offset-lg-8 offset-md-7">
                    <div class="add-text text-white">
                        <div class="at-style"></div>
                        <h2><?php echo $amazing_deserts_title; ?></h2>
                        <ul>
                            <li><?php echo $amazing_deserts_description_1; ?></li>
                            <li><?php echo $amazing_deserts_description_2; ?></li>
                            <li><?php echo $amazing_deserts_description_3; ?></li>
                            <li><?php echo $amazing_deserts_description_4; ?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Add section end -->