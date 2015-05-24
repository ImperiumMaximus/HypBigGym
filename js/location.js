var map;
$(document).ready(function() {
    map = new GMaps({
        el: "#map",
        lat: 44.9135748,
        lng: 8.6059193,
        width: "500px",
        height: "350px"
    });
    map.addMarker({
        lat: 44.9135748,
        lng: 8.6059193,
        title: 'Big Gym',
        infoWindow: {
            content: '<address class="fg-black"><strong>Big Gym</strong><br/>Spalto Borgoglio 65, 15121<br/>Alessandria, AL, Italy</address>'
        }
    });
});