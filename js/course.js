jQuery(document).ready(function () {
    "use strict";
    jQuery(".carousel").carousel();
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCourse.php',
        data: {name: courseName,
               level: courseLevel},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            document.title = result.name;
            jQuery("#title").html(result.name);
            jQuery("#description").html(result.description);
            var images = jQuery("[id=imgs]");
            var imgs_paths = result.photos.split(";");
            for (var i = 0; i < images.length; i++) {
                jQuery(images[i]).attr("src", imgs_paths[i]);
            }
            
        }
    });
});