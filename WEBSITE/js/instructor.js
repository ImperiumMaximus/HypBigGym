jQuery(document).ready(function () {
    "use strict";
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getInstructor.php',
        data: {id: instrId},
        success: function (data) {
            var result = JSON.parse(data);
            document.title = result.name + " " + result.surname + " - Instructor";
            jQuery("#title").html(result.name + " " + result.surname);
            jQuery("#bio").html(result.bio);
            jQuery("#photo").attr("src", result.main_photo);
            
            fillCourses();
        }
    });
});

function fillCourses() {
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCoursesTeached.php',
        data: {id: instrId},
        success: function (data) {
            var result = JSON.parse(data);
            console.log(result);
            for(var i = 0; i < result.length; i++) {
                jQuery("#courses").append(jQuery("<li></li>").append(jQuery("<a></a>").attr({href: "course.html?name=" + result[i].name + "&level=" + result[i].level, class: "fg-white"}).html(result[i].name)));
            }
        }
    });
}