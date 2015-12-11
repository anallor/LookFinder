
// "/stores/"+window.location.href[window.location.href.length-1],
var pathArray = window.location.pathname.split( '/' );

$.ajax({
        type: "GET",
        dataType: "json",
        url: pathArray[2],
        success: function(data){

var latitude = data.latitude;
var longitude = data.longitude;

var map;

if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position){
  var myPosition = {
    lat: latitude,
    lng: longitude
  };

  createMap(myPosition);
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}

function createMarker(position) {
 var marker = new google.maps.Marker({
   position: position,
   map: map
 });
};

function createMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
  };
  map = new google.maps.Map($('#map')[0], mapOptions);
    createMarker(position)
}

}
});

