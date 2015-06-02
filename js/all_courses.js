
jQuery.(document).ready(function () {
    "use strict";
    var ElementHtml = "<ul></ul>";
    console.log("Here");
    
function scelta(decisione){
 
    if(decisione == 'alphabetic'){
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCourseCategories.php?order=alphabetic',
        success: function(data) {
            var result = JSON.parse(data);
            console.log(result);
}
    });
        }
    
    else if(decisione == 'level'){
        jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCourseCategories.php?order=alphabetic',
        success: function(data) {
            var result = JSON.parse(data);
            console.log(result);
}
    });
    }

}
    
});