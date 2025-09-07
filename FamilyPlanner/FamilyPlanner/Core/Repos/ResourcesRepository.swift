import Foundation
import FirebaseFirestore

actor ResourcesRepository {
    let db = Firestore.firestore()

    func fetchResources() async throws -> [String] {
        []
    }
}
