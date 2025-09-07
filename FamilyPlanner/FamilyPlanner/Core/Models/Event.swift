import Foundation

struct Event: Codable, Identifiable {
    var id: String
    var title: String
    var location: LocationRef
    var startTime: Date
    var endTime: Date
    var priorityWeight: Int
}
