import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.name)")
                        }
                    }
                }
                
                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }
                }
            }
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
