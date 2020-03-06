
import SwiftUI

struct ArticleButton: View {
    
    var body: some View {
        Button(action: {
            // Button Action
            }) {
            Text("Read Now")
        }.frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}
