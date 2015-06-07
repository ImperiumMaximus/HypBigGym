jQuery(document).ready(function () {
    "use strict";     
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getListCategory.php',
        data: {id: categoryId},
        success: function (data) {
            console.log(data);
            var result = JSON.parse(data);
            var catCourse = "";
            for(var i=0; i<result.length;i++)
            {catCourse += "<option value = '" + result[i].name + "'>" + result[i].name + "</option>";}
            jQuery("#criteria").append(catCourse);
            
        }
            });
});

