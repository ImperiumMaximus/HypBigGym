
jQuery(document).ready(function () {
    "use strict";
    console.log("here");
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCourseCategories.php',
        success: function(data) {
            var result = JSON.parse(data);
            console.log(result);
        }
    });
});
