jQuery(document).ready(function () {
    "use strict";     
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getInstructorOfCourse.php',
        data: {id: course},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var instructors = "";
            for(var i=0; i<result.length;i++) {
                instructors += "<a href ='" + result[i].link_instr + "' class='fg-white'><p>" + result[i].name + " " + result[i].surname + "</p></a>";
            }
            
            jQuery("#instructors").append(instructors);
            
        }
    });
});
