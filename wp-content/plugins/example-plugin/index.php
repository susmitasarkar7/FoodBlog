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
     echo "<h1>Comming Soon...</h1>";
 }

?>