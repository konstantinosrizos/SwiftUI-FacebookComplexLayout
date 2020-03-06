
import SwiftUI

struct GroupDetailsView: View {
    let trendingPost: Posts.TrendingPost
    
    var body: some View {
        VStack (alignment: .center, spacing: 16){
            Image(trendingPost.postImage)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(10)
            .shadow(radius: 10)
            
            VStack (alignment: .leading, spacing: 5.0){
                Text(trendingPost.titleText)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(trendingPost.descriptionText)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.top)
                    .padding(.bottom)
            }.padding(.leading)
            .padding(.trailing)
            ArticleButton()
            Spacer()
        }
    }
}
