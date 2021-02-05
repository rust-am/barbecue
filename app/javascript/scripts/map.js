ymaps.ready(init);
var myMap;

function init() {
  if (!document.getElementById('map')) return false;

  address =  document.getElementById('map').getAttribute('data-address');

  // ymaps.ready(init);
  myMap = new ymaps.Map("map", {
    center: [55.76, 37.64],
    zoom: 7
  });

  myGeocoder = ymaps.geocode(address);

  myGeocoder.then(
    function (res) {
      coordinates = res.geoObjects.get(0).geometry.getCoordinates();

      myMap.geoObjects.add(
        new ymaps.Placemark(
          coordinates,
          {iconContent: address},
          {preset: 'islands#blueStretchyIcon'}
        )
      );

      myMap.setCenter(coordinates);
      myMap.setZoom(7);
    }, function (err) {
      alert('Ошибка при определении местоположения');
    }
  );
}
