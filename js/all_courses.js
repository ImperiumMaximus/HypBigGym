
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
                elCour += "<li><a href=" + result[i].link + ">" + result[i].name + "</a></li>";
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
                elCour += "<li><a href=" + result[i].link + " class='fg-white'>" + result[i].name + "</a></li>";
                jQuery(".courses").append(elCour);
            }
            
}
        });
    }

}