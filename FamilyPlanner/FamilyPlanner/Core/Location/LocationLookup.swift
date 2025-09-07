import MapKit

struct LocationLookup {
    func search(query: String) async -> [MKMapItem] {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        let search = MKLocalSearch(request: request)
        let result = try? await search.start()
        return result?.mapItems ?? []
    }
}
