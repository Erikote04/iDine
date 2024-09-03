import SwiftUI

struct RestrictionIconView: View {
    let restriction: String
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        Text(restriction)
            .font(.caption)
            .fontWeight(.bold)
            .padding(5)
            .background(colors[restriction, default: .black])
            .clipShape(.circle)
            .foregroundStyle(.white)
    }
}

#Preview {
    RestrictionIconView(restriction: "V")
}
