import Foundation

struct APIConfig {
    let baseURL: URL

    static var current: APIConfig {
        let urlString = Bundle.main.object(forInfoDictionaryKey: "FP_BASE_URL") as? String ?? "https://example.com"
        return APIConfig(baseURL: URL(string: urlString)!)
    }
}
