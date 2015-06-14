jQuery(document).ready(function () {
    "use strict";     
    jQuery("#title").html(courseName + " - Enrollment");
    document.title = courseName + " - Enrollment";
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/enrollment.php',
        data: {id: courseName},
        success: function (data) {
            var result = JSON.parse(data);
            console.log(result);
            var date = "";
            for(var i=0; i<result.length;i++) {
                date += "<option value='" + result[i].id + "'>" + result[i].day + " " + result[i].start_time + "</option>";
            }
            
            jQuery("#criteria1").append(date);
            
            jQuery("#description").attr("href", "course.html?name=" + encodeURIComponent(courseName) + "&level=" + encodeURIComponent(courseLevel));
            jQuery("#schedule").attr("href", "schedule.html?course=" + encodeURIComponent(courseName) + "&level=" + encodeURIComponent(courseLevel) + "&category=" + encodeURIComponent(category));
            
            jQuery("#instructors").attr("href", "instructors.html?course=" + encodeURIComponent(courseName) + "&level=" + encodeURIComponent(courseLevel));
            jQuery("#category").attr("href", "category.html?name=" + encodeURIComponent(category));
            
        }
    });
});


function scelta() {
    console.log(jQuery("#criteria1").val());
    var decisione = parseInt(jQuery("#criteria1").val());
    console.log("decisione is "+decisione)
    jQuery("#criteria2").empty();
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/enrollment.php',
        data: {id: courseName},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var date = "<option value='' selected>Select a second date (optional)</option>";
            for(var i = 0; i<result.length;i++) {
                if(parseInt(result[i].id) > decisione) {
                    console.log("result is "+result[i].id);
                    date += "<option value = '" + result[i].id + "'>" + result[i].day + " " + result[i].start_time + "</option>";
                }
            }
            
            jQuery("#criteria2").append(date);
            
        }
    });
}