import os

enum FPLog {
    static let api = Logger(subsystem: "com.example.familyplanner", category: "api")
    static let repo = Logger(subsystem: "com.example.familyplanner", category: "repo")
    static let solver = Logger(subsystem: "com.example.familyplanner", category: "solver")
    static let matrix = Logger(subsystem: "com.example.familyplanner", category: "matrix")
    static let ui = Logger(subsystem: "com.example.familyplanner", category: "ui")
    static let notify = Logger(subsystem: "com.example.familyplanner", category: "notify")
}
