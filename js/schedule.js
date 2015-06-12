
jQuery(document).ready(function () {
    "use strict";
    
    document.title = courseName + " - Schedule";
    jQuery("#title").html(courseName + " - Schedule");
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCourseSchedule.php',
        data: {name: courseName},
        success: function (data) {
            var result = JSON.parse(data);
            var tabsList = jQuery(".tabs");
            var framesList = jQuery(".frames");
            
            for(var day in result) {
                var frameId = "frame_" + day.toLowerCase();
                tabsList.append(jQuery("<li></li>").append(jQuery("<a></a>").attr("href", "#" +  frameId).html(day)));
                var frameEl = jQuery("<div></div>").attr({class: "frame", id: frameId});
                frameEl.append("<h4>Available classes:</h4>");
                var dayOl = jQuery("<ol></ol>").attr("class", "numeric-list square-marker");
                for(var i = 0; i < result[day].length; i++) {
                    dayOl.append(jQuery("<li></li>").html(result[day][i]));
                }
                
                frameEl.append(dayOl);
                framesList.append(frameEl);
            }
            
            jQuery("#tabcontrol").tabControl();
        }
    });
});