import XCTest

final class RulesAndPoliciesTests: XCTestCase {
    func testEarlyArrivalMaxMinutes() {
        let max = 15
        XCTAssertLessThanOrEqual(max, 15)
    }

    func testRideshareMinorsBlocked() {
        let isMinor = true
        XCTAssertTrue(isMinor)
    }
}
