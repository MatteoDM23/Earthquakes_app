var starttime = "2017-10-05";
var endtime = "2017-10-12";
var limit = 20;
var lat = 34.693738;
var lon = 135.502165;
var radius = 1000;

var url = "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime="+starttime+"&endtime="+endtime+"&limit="+limit+"&latitude="+lat+"&longitude="+lon+"&maxradiuskm="+radius+"";

$(document).ready(function() {
    $.get(url, function(data) {
        console.log(data);
        
        var heatMapData = [];
        var earthquakeData = data.features;
        
        $.each(earthquakeData, function( index, value ) {
          var item = {
              location: new google.maps.LatLng(value.geometry.coordinates[1], value.geometry.coordinates[0]),
              weight: value.properties.mag
          }
          heatMapData.push(item);
        });
        
        var sanFrancisco = new google.maps.LatLng(lat, lon);
        
        var zoomlevel = 12;
        if (radius > 200) {
            zoomlevel = radius / 200;
        }
        
        map = new google.maps.Map(document.getElementById('feedMap'), {
          center: sanFrancisco,
          zoom: zoomlevel,
          mapTypeId: 'satellite'
        });
        
        var heatmap = new google.maps.visualization.HeatmapLayer({
          data: heatMapData
        });
        heatmap.setMap(map);
    });
});
