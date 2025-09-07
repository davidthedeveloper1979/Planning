import SwiftUI
import MapKit

struct RouteMapCard: View {
    var coordinates: [CLLocationCoordinate2D]
    var body: some View {
        Map {
            if coordinates.count > 1 {
                let polyline = MKPolyline(coordinates: coordinates, count: coordinates.count)
                MapPolyline(polyline)
            }
        }
        .frame(height: 150)
        .cornerRadius(8)
    }
}
