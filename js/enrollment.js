jQuery(document).ready(function () {
    "use strict";     
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/enrollment.php',
        data: {id: course},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var date = "";
            for(var i=0; i<result.length;i++) {
                date += "<option value = '" + i + "'>" + result[i].day + " " + result[i].time_start + "</option>";
            }
            
            jQuery("#criteria1").append(date);
            
        }
    });
});


function scelta() {
    console.log(jQuery("#criteria1").val());
    var decisione = jQuery("#criteria1").val();
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/enrollment.php',
        data: {id: course},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var date = "";
            for(var j=decisione; j<result.length;j++) {
                date += "<option value = '" + j + "'>" + result[j].day + " " + result[j].time_start + "</option>";
            }
            
            jQuery("#criteria2").append(date);
            
        }
    });
}