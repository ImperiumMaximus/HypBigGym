jQuery(document).ready(function () {
    "use strict";
    
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
            
            var carWidth = Math.min(350, jQuery(window).width() - 32);
            var carHeight = carWidth * 0.5714;
            jQuery("#course-carousel").attr({"data-width": carWidth, "data-height": carHeight}); 
            
            jQuery(".carousel").carousel();
            
            jQuery("#schedule").attr("href", "schedule.html?course=" + encodeURIComponent(courseName) + "&level=" + encodeURIComponent(courseLevel) + "&category=" + encodeURIComponent(result.category));
            jQuery("#enrollment").attr("href", "enrollment.html?course=" + encodeURIComponent(courseName)  + "&level=" + encodeURIComponent(courseLevel) + "&category=" + encodeURIComponent(result.category));
            jQuery("#instructors").attr("href", "instructors.html?course=" + encodeURIComponent(courseName) + "&level=" + encodeURIComponent(courseLevel));
            jQuery("#category").attr("href", "category.html?name=" + encodeURIComponent(result.category));
             
        }
    });
});