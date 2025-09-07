import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    @State private var enableFaceID = false

    var body: some View {
        if isLoggedIn {
            ItineraryView()
        } else {
            VStack(spacing: 16) {
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                Toggle("Enable Face ID", isOn: $enableFaceID)
                Button("Login") {
                    isLoggedIn = true
                }
            }
            .padding()
        }
    }
}
