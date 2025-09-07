import Foundation

struct LocationRef: Codable {
    var address: String
    var latitude: Double
    var longitude: Double
    var timeZoneId: String
}
