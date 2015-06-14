jQuery(document).ready(function () {
    "use strict";     
    jQuery("#title").html("Category: " + categoryId);
    document.title = "Category: " + categoryId;
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
        url: 'http://hypbiggym.altervista.org/php/getCategory.php',
        data: {id: categoryId,
              course: decisione},
        success: function(data) {
            console.log(data);
            var result = JSON.parse(data);
            console.log(result);
            $(".description").empty();
            $("#button").empty();
            
            for(var i=0; i<result.length;i++) {
                var courseChosen = "<p>" + result[i].description + "</p>";
                jQuery(".description").append(courseChosen);  
            
                var courseLink = "<center><a href=course.html?name=" + encodeURIComponent(result[i].name) + "&level=" + encodeURIComponent(result[i].level) + " class='fg-white'><button class=button>Go to course page</button></a></center>";
                jQuery("#button").append(courseLink);
                
            }           
        }
            
        });
}