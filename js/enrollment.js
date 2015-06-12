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
                date += "<option value = '" + i + "'>" + result[i].day + " " + result[i].start_time + "</option>";
            }
            
            jQuery("#criteria1").append(date);
            
        }
    });
});


function scelta() {
    console.log(jQuery("#criteria1").val());
    var decisione = jQuery("#criteria1").val();
    
    jQuery("#criteria2").empty();
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/enrollment.php',
        data: {id: course},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var date = "<option value='' selected>Select a second date (optional)</option>";
            for(var j=decisione; j<result.length;j++) {
                j++;
                date += "<option value = '" + j + "'>" + result[j].day + " " + result[j].start_time + "</option>";
            }
            
            jQuery("#criteria2").append(date);
            
        }
    });
}