jQuery(document).ready(function () {
    "use strict";     
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getListCategory.php',
        data: {id: categoryId},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var catCourse = "";
            for(var i=0; i<result.length;i++) {
                catCourse += "<option value = '" + result[i].name + "'>" + result[i].name + "</option>";
            }
            
            jQuery("#criteria").append(catCourse);
            
        }
            });
});

function scelta() {
    console.log(jQuery("#criteria").val());
    var decisione = jQuery("#criteria").val();
    
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getCategory.php?course='+ decisione,
        data: {id: categoryId},
        success: function(data) {
            console.log(data);
            var result = JSON.parse(data);
            console.log(result2);
            $(".description").empty();
            $("#button").empty();
            
            for(var i=0; i<result.length;i++) {
                var courseChosen = "<p>" + result[i].description + "</p>";
                jQuery(".description").append(courseChosen);  
            
                var courseLink = "<a href=" + result[i].link + "><button class=button>Go to course page</button></a>";
                jQuery("#button").append(courseLink);
                
            }           
        }
            
        });
}