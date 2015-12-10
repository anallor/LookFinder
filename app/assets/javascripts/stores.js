// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var map;

if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position){
  var myPosition = {
    lat: position.coords.latitude,
    lng: position.coords.longitude
  };

  createMap(myPosition);
  setupAutocomplete();
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

function setupAutocomplete(){
  var input = $('#get-places')[0];
  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.addListener('place_changed', function(){
    var place = autocomplete.getPlace();
    if (place.geometry.location) {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
      createMarker(place.geometry.location);
    } else {
      alert("The place has no location...?")
    }
  });
}

