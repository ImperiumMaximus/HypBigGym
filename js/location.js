jQuery(document).ready(function () {
    "use strict";
    var map;
    jQuery.ajax({
        url: 'http://hypbiggym.altervista.org/php/getLocation.php',
        success: function (data) {
            var result = JSON.parse(data);
            map = new GMaps({
                el: "#map",
                lat: result.latitude,
                lng: result.longitude,
                width: "500px",
                height: "350px"
            });
            map.addMarker({
                lat: result.latitude,
                lng: result.longitude,
                title: 'Big Gym',
                infoWindow: {
                    content: '<address class="fg-black">' + result.address + '</address>'
                }
            });
            jQuery("#addr").html(result.address);
            jQuery("#description").html(result.description);
        }
    });
});
