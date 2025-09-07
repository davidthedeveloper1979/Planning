import Foundation

actor PlanAPI {
    let config = APIConfig.current

    func postPlan() async throws {}
    func postReplan() async throws {}
    func streamPlan(id: String) async -> AsyncStream<Data> {
        AsyncStream { continuation in
            continuation.finish()
        }
    }
    func explainPlan(id: String) async throws {}
    func postResource() async throws {}
    func uploadTravelMatrix() async throws {}
    func getTravelMatrix(planId: String) async throws {}
    func calendarLink() async throws {}
    func calendarUnlink() async throws {}
    func calendarSync() async throws {}
}
