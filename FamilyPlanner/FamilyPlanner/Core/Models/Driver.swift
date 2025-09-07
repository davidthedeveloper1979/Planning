import Foundation

struct Driver: Codable, Identifiable {
    var id: String
    var name: String
    var roleTag: String?
    var scope: String?
    var isTemporary: Bool
}
