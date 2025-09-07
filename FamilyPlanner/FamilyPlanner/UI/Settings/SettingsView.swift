import SwiftUI

struct SettingsView: View {
    @State private var useBiometrics = false
    var body: some View {
        Form {
            Toggle("Use Face ID", isOn: $useBiometrics)
            Text("Version \(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "")")
        }
        .navigationTitle("Settings")
    }
}
