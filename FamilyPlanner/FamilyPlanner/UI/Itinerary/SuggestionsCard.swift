import SwiftUI

struct SuggestionsCard: View {
    var suggestions: [Suggestion]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Suggestions").font(FPTypography.title)
            ForEach(suggestions) { s in
                Text(s.message)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.blue))
    }
}
