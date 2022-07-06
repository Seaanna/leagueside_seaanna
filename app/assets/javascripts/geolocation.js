function initGeolocation() {
  if (navigator.geolocation) {
    // Call getCurrentPosition with success and failure callbacks
    navigator.geolocation.getCurrentPosition(success, fail)
  }
  else {
    alert("Sorry, your browser does not support geolocation services.")
  }
}

function success(position) {
  const longitude = document.getElementById('long')
  const latitude = document.getElementById('lat')

  if (longitude && latitude)  {
    longitude.value = position.coords.longitude
    latitude.value = position.coords.latitude
  }
}

function fail() {
  // Could not obtain location
}

$(document).on('ready turbolinks:load', function () {
  initGeolocation()
 });