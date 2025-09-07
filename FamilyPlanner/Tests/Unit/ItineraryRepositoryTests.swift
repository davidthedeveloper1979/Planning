import XCTest
@testable import FamilyPlanner

final class ItineraryRepositoryTests: XCTestCase {
    func testDecodeSample() throws {
        let json = Data("{\"id\":\"1\",\"events\":[],\"suggestions\":[],\"metadata\":{\"createdAt\":0,\"updatedAt\":0}}".utf8)
        let itinerary = try JSONDecoder().decode(Itinerary.self, from: json)
        XCTAssertEqual(itinerary.id, "1")
    }
}
