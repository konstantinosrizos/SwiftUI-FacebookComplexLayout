
import SwiftUI

struct GroupView: View {
    let trendingPost: Posts.TrendingPost
    
    var body: some View {
        VStack (alignment: .leading){
            Image(trendingPost.postImage)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .cornerRadius(15)
            Text(trendingPost.titleText)
                .accentColor(.primary)
                .lineLimit(2)
        }.frame(width: 100, height: 150)
        .padding(.leading, 7)
    }
}
