import SwiftUI

struct AddResourceSheet: View {
    @Binding var isPresented: Bool
    @State private var name: String = ""
    @State private var scopeGlobal = false

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                Toggle("Global", isOn: $scopeGlobal)
            }
            .navigationTitle("Add Resource")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { isPresented = false }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") { isPresented = false }
                }
            }
        }
    }
}
