import SwiftUI

struct ItemRowView: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(.circle)
                
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                
                Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in
                RestrictionIconView(restriction: restriction)
            }
        }
    }
}

#Preview {
    ItemRowView(item: MenuItem.example)
}
