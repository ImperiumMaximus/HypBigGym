
jQuery(document).ready(function () {
    "use strict";
    var elementHtml = "<div class=\"float-left\"><div class=\"tile-wide fg-black\"><div class=\"tile-content zooming\"><div class=\"slide\"><img class=\"cat-img\"/></div><div class=\"cat-title tile-label white-border\"></div></div></div><div class=\"margin5\"><center><a class=\"fg-white cat-list-link\" href=\"#\">Courses of this category</a></center></div></div>"
    console.log("here");
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCourseCategories.php',
        success: function(data) {
            var result = JSON.parse(data);
            console.log(result);
            for (var i = 0; i < result.length; i++) {
                var elCat = jQuery(elementHtml);
                elCat.find(".cat-title").html("<b>" + result[i].name + "</b>");
                elCat.find(".cat-img").attr("src", result[i].main_photo);
                elCat.find(".cat-list-link").attr("href", result[i].list_link);
                jQuery("#content").append(elCat);
            }
        }
    });
});
