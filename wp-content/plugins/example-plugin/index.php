<?php
/**
 * Plugin Name: Example Plugin 
 * Plugin URI: 
 * Description: Example Plugin for You
 * Author: SS
 * Author URI: http://www.google.com
 * Version:  0.1
 */

 add_action("admin_menu", "addMenu");
 function addMenu()
 {
     add_menu_page("Example Options", "Example Options", 4, "example-options", "exampleMenu");
    add_submenu_page("example-options", "Option 1", "Option 1", 4, "example-option-1", "option1");  
 }

 function exampleMenu()
 {
    echo "<h1>Hello World!</h1>";
 }

 function option1()
 {
    echo "<h2>" . __( 'Footer Settings Configurations', 'menu-test' ) . "</h2>";
	include_once('footer_settings_page.php');
	include_once('DBP_export_file.php');
 }

 global $chk;
 if(isset($_POST['wphw_submit'])){
         wphw_opt();
 }
 function wphw_opt(){
     $hellotxt = $_POST['footertextname'];
     global $chk;
     if( get_option('footer_text') != trim($hellotxt)){
         $chk = update_option( 'footer_text', trim($hellotxt));
     }
 }
 
function your_function() {
   echo "<div style='color: red;
    margin: 10px;'>".get_option('footer_text')."</div>";
}
add_action( 'wp_footer', 'your_function' );

