import SwiftUI

struct ItemDetailView: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                PhotoCreditTextView(text: item.photoCredit)
            }
            
            Text(item.description)
                .padding()
            
            Button("Add to Order") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ItemDetailView(item: MenuItem.example)
            .environmentObject(Order())
    }
}
