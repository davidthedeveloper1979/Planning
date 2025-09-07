import SwiftUI

struct ConflictsCard: View {
    var conflicts: [String]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Conflicts").font(FPTypography.title)
            ForEach(conflicts, id: \.self) { c in
                Text(c)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.red))
    }
}
