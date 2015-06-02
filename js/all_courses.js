
jQuery(document).ready(function () {
    "use strict";
    console.log("Here");
        
});

function scelta(){
    console.log(jQuery("#criteria").val());
    var decisione = jQuery("#criteria").val();
 
    if(decisione == 'alphabetic'){
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/all_courses.php?order=alphabetic',
        success: function(data) {
            console.log(data);
            var result = JSON.parse(data);
            console.log(result);
            $(".courses").empty();
            
            for (var i = 0; i < result.length; i++) {
                var elCour = "";
                console.log(result[i]);
                elCour += "<li>" + result[i] + "</li>";
                jQuery(".courses").append(elCour);
            }
}
    });
        }
    
    else if(decisione == 'level'){
        jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/all_courses.php?order=level',
        success: function(data) {
            console.log(data);
            var result = JSON.parse(data);
            console.log(result);
            $(".courses").empty();
            
            for (var i = 0; i < result.length; i++) {
                var elCour = "";
                console.log(result[i]);
                elCour += "<li>" + result[i] + "</li>";
                jQuery(".courses").append(elCour);
            }
            
}
        });
    }

}