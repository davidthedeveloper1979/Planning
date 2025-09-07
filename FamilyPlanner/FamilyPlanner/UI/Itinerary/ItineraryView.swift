import SwiftUI

struct ItineraryView: View {
    @State private var vm = ItineraryVM()

    var body: some View {
        NavigationView {
            List {
                ForEach(vm.itinerary.events) { event in
                    Text(event.title)
                }
            }
            .navigationTitle("Itinerary")
        }
    }
}
