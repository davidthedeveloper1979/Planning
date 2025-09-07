import Foundation

@Observable @MainActor
class ItineraryVM {
    var itinerary: Itinerary = Itinerary(id: "mock", events: [], suggestions: [], metadata: Metadata(createdAt: Date(), updatedAt: Date()))
    var conflicts: [String] = []
    var suggestions: [Suggestion] = []
}
