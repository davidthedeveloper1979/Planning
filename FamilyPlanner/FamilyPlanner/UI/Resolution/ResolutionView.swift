import SwiftUI

struct ResolutionView: View {
    @State private var showingAdd = false
    var body: some View {
        VStack {
            Button("Add Resource") { showingAdd = true }
        }
        .fullScreenCover(isPresented: $showingAdd) {
            AddResourceSheet(isPresented: $showingAdd)
        }
    }
}
