jQuery(function($) {
   $('#login h1, #login form').wrapAll('<div class="group"></div>');

   $('body').vegas({
       slides: [
           { src: login_images.theme_path + "1.jpg" },
           { src: login_images.theme_path + "2.jpg" }
       ],
       overlay:  login_images.theme_path + 'overlays/07.png',
       transition: ['fade', 'zoomOut', 'swirlLeft']
   })
});