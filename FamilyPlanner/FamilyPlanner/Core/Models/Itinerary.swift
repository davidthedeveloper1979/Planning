import Foundation

struct Itinerary: Codable, Identifiable {
    var id: String
    var events: [Event]
    var suggestions: [Suggestion]
    var metadata: Metadata
}
