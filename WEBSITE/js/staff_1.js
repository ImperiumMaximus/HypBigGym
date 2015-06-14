jQuery(document).ready(function () {
    "use strict";
    jQuery("#title").html(course + " - Instructors");
    document.title = course + " - Instructors";
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getInstructorOfCourse.php',
        data: {id: course},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var instructors = "";
            for(var i=0; i<result.length;i++) {
                instructors += "<a href='instructor.html?id=" + result[i].id + "' class='fg-white'><p>" + result[i].name + " " + result[i].surname + "</p></a>";
            }
            
            jQuery("#instructors").append(instructors);
            jQuery("#course").attr("href", "course.html?name=" + encodeURIComponent(course) + "&level=" + encodeURIComponent(level)).html("Return to " + course);
            
        }
    });
});
