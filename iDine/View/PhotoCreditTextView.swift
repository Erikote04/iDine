import SwiftUI

struct PhotoCreditTextView: View {
    let text: String
    
    var body: some View {
        Text("Photo by \(text)")
            .padding(4)
            .background(.black)
            .font(.caption)
            .foregroundStyle(.white)
            .offset(x: -5, y: -5)
    }
}

#Preview {
    PhotoCreditTextView(text: "John Doe")
}
