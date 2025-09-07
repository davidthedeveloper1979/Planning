import Foundation
import FirebaseFirestore

actor FirestoreItineraryRepository {
    let db = Firestore.firestore()

    func listen(id: String) -> AsyncStream<Itinerary?> {
        AsyncStream { continuation in
            db.collection("planResults").document(id).addSnapshotListener { snap, _ in
                if let data = snap?.data(), let json = try? JSONSerialization.data(withJSONObject: data), let itinerary = try? JSONDecoder().decode(Itinerary.self, from: json) {
                    continuation.yield(itinerary)
                }
            }
        }
    }
}
