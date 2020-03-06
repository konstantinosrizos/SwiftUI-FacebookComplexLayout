
import SwiftUI

struct PostView: View {
    let post: Posts.Post
    
    var body: some View {
        VStack (alignment: .leading, spacing: 16){
            HStack {
                Image(post.usernameImage)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                    .clipped()
                VStack (alignment: .leading, spacing: 4){
                    Text(post.username).font(.headline)
                    Text("Posted \(post.id + 2) hours ago.").font(.subheadline)
                }.padding(.leading, 8)
            }.padding(.leading, 16)
                .padding(.top, 16)
            
            Text(post.postText)
                .lineLimit(nil)
                .padding(.leading, 16)
                .padding(.trailing, 32)
            Image(post.postImage)
            .resizable()
            .scaledToFit()
        }.padding(.leading, -16)
            .padding(.trailing, -16)
            .padding(.bottom, -6)
    }
}
