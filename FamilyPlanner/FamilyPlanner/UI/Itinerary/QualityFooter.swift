import SwiftUI

struct QualityFooter: View {
    var quality: String
    var body: some View {
        Text("Quality: \(quality)")
            .font(FPTypography.body)
            .padding()
    }
}
