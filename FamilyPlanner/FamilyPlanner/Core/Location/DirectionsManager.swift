import MapKit

actor DirectionsManager {
    func polyline(from: CLLocationCoordinate2D, to: CLLocationCoordinate2D) async -> MKPolyline {
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: from))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: to))
        let directions = MKDirections(request: request)
        let response = try? await directions.calculate()
        return response?.routes.first?.polyline ?? MKPolyline()
    }
}
