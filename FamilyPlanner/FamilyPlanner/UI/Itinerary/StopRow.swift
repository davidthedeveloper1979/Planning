import SwiftUI

struct StopRow: View {
    var event: Event
    var body: some View {
        HStack {
            Text(event.title)
            Spacer()
            Text(event.startTime, style: .time)
        }
    }
}
