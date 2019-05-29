<?php 
    function dbbs_customize_register($wp_customize){
        //Showcase Section
        $wp_customize->add_section('showcase', array(
            'title' => __('Showcase', 'foodblog'),
            'description' => sprintf(__('Options for Showcase', 'foodblog')),
            'priority' => 130
        ));

        $wp_customize->add_setting('showcase_heading_1', array(
            'default' => _x('Healthy Recipes', 'foodblog'),
            'type' => 'theme_mod'
        ));

        $wp_customize->add_control('showcase_heading_1', array(
            'label' => __('Heading 1', 'foodblog'),
            'section' => 'showcase',
            'priority' => 1
        ));
        $wp_customize->add_setting('showcase_heading_2', array(
            'default' => _x('from the best chefs', 'foodblog'),
            'type' => 'theme_mod'
        ));

        $wp_customize->add_control('showcase_heading_2', array(
            'label' => __('Heading 2', 'foodblog'),
            'section' => 'showcase',
            'priority' => 2
        ));
        $wp_customize->add_setting('showcase_heading_3', array(
            'default' => _x('for all the foodies', 'foodblog'),
            'type' => 'theme_mod'
        ));

        $wp_customize->add_control('showcase_heading_3', array(
            'label' => __('Heading 3', 'foodblog'),
            'section' => 'showcase',
            'priority' => 3
        ));
        
        $wp_customize->add_setting('showcase_image', array(
            'default'   => get_bloginfo('template_directory').'/assets/img/slider-bg-1.jpg',
            'type'      => 'theme_mod'
        ));
        $wp_customize->add_control(new WP_Customize_Image_Control($wp_customize, 'showcase_image', array(
            'label'   => __('Showcase Image', 'wpbootstrap'),
            'section' => 'showcase',
            'settings' => 'showcase_image',
            'priority'  => 4
        )));
    }

    add_action('customize_register', 'dbbs_customize_register');
?>