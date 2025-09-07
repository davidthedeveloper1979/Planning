import Foundation

struct Vehicle: Codable, Identifiable {
    var id: String
    var name: String
    var capacity: Int
}
