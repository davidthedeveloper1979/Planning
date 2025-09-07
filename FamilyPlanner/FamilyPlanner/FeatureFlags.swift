import Foundation

struct FeatureFlags {
    static var rideshareEstimates: Bool {
        Bundle.main.object(forInfoDictionaryKey: "FP_FLAG_RIDESHARE_ESTIMATES") as? String == "YES"
    }
    static var useMockServer: Bool {
        Bundle.main.object(forInfoDictionaryKey: "FP_FLAG_USE_MOCK_SERVER") as? String == "YES"
    }
    static var notificationsEnabled: Bool {
        Bundle.main.object(forInfoDictionaryKey: "FP_FLAG_NOTIFICATIONS_ENABLED") as? String == "YES"
    }
}
