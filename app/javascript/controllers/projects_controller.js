// app/javascript/controllers/projects_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/nmenu/clar5as90000j15p8t59136ay"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {

    this.map.on('load', () => {
      this.map.addSource('places', {
        'type': 'geojson',
        'data': {
          'type': 'FeatureCollection',
          'features': this.markersValue.map(marker => {
            return {
              'type': 'Feature',
              'properties': {
                'description': marker.info_window,
                'link': marker.link
              },
              'geometry': {
                'type': 'Point',
                'coordinates': [marker.lng, marker.lat]
              }
            }
          })
        }
      })

      // Add a layer showing the places.
      this.map.addLayer({
        'id': 'places',
        'type': 'circle',
        'source': 'places',
        'paint': {
          'circle-color': '#4264fb',
          'circle-radius': 5,
          'circle-stroke-width': 2,
          'circle-stroke-color': '#ffffff'
        }
      });
    })

    // Create a popup, but don't add it to the map yet.
    const popup = new mapboxgl.Popup({
      closeButton: false,
      closeOnClick: false
    });

    this.map.on('click', 'places', (e) => {
      window.location = e.features[0].properties.link
    })

    this.map.on('mouseenter', 'places', (e) => {
      // Change the cursor style as a UI indicator.
      this.map.getCanvas().style.cursor = 'pointer';

      // Copy coordinates array.
      const coordinates = e.features[0].geometry.coordinates.slice();
      const description = e.features[0].properties.description;

      // Ensure that if the map is zoomed out such that multiple
      // copies of the feature are visible, the popup appears
      // over the copy being pointed to.
      while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
        coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
      }

      // Populate the popup and set its coordinates
      // based on the feature found.
      popup.setLngLat(coordinates).setHTML(description).addTo(this.map);
    });

    this.map.on('mouseleave', 'places', () => {
      this.map.getCanvas().style.cursor = '';
      popup.remove();
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 50, maxZoom: 15, duration: 0 })
  }
}
