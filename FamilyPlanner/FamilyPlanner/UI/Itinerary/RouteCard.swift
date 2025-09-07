import SwiftUI

struct RouteCard: View {
    var event: Event
    var body: some View {
        VStack(alignment: .leading) {
            Text(event.title).font(FPTypography.title)
            Text(event.location.address).font(FPTypography.body)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray.opacity(0.1)))
    }
}
