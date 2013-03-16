  window.onload = function() {
      
    // Creating a reference to the mapDiv
    var mapDiv = document.getElementById('map');
    
    // Creating a latLng for the center of the map
    var latlng = new google.maps.LatLng(51.4975941, -0.0803232);
    
    // Creating an object literal containing the properties 
    // we want to pass to the map  
    var options = {
      center: latlng,
      zoom: 11,
      mapTypeId: google.maps.MapTypeId.TERRAIN
    };
    
    // Creating the map
    var map = new google.maps.Map(mapDiv, options);

    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(51.4975941, -0.0803232),
        map: map,
        draggable: true,
        title: 'Set lat/lon values for this property'
    });

