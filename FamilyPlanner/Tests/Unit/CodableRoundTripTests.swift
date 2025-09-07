import XCTest
@testable import FamilyPlanner

final class CodableRoundTripTests: XCTestCase {
    func testEventRoundTrip() throws {
        let event = Event(id: "1", title: "Test", location: LocationRef(address: "A", latitude: 0, longitude: 0, timeZoneId: "UTC"), startTime: Date(), endTime: Date(), priorityWeight: 1)
        let data = try JSONEncoder().encode(event)
        let decoded = try JSONDecoder().decode(Event.self, from: data)
        XCTAssertEqual(decoded.id, event.id)
    }
}
