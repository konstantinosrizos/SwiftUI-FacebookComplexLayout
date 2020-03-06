
import SwiftUI

struct ContentView: View {
        
    let posts: [Posts.Post] = [
        .init(id: Data.Post1.id, username: Data.Post1.username, postText: Data.Post1.postText, usernameImage: Data.Post1.usernameImage, postImage: Data.Post1.postImage),
    .init(id: Data.Post2.id, username: Data.Post2.username, postText: Data.Post2.postText, usernameImage: Data.Post2.usernameImage, postImage: Data.Post2.postImage),
    .init(id: Data.Post3.id, username: Data.Post3.username, postText: Data.Post3.postText, usernameImage: Data.Post3.usernameImage, postImage: Data.Post3.postImage),
    .init(id: Data.Post4.id, username: Data.Post4.username, postText: Data.Post4.postText, usernameImage: Data.Post4.usernameImage, postImage: Data.Post4.postImage)
    ]

    let trendingPosts: [Posts.TrendingPost] = [
        .init(id: Data.TrendingPost1.id, postImage: Data.TrendingPost1.postImage, titleText: Data.TrendingPost1.titleText, descriptionText: Data.TrendingPost1.descriptionText),
    .init(id: Data.TrendingPost2.id, postImage: Data.TrendingPost2.postImage, titleText: Data.TrendingPost2.titleText, descriptionText: Data.TrendingPost2.descriptionText),
    .init(id: Data.TrendingPost3.id, postImage: Data.TrendingPost3.postImage, titleText: Data.TrendingPost3.titleText, descriptionText: Data.TrendingPost3.descriptionText),
    .init(id: Data.TrendingPost4.id, postImage: Data.TrendingPost4.postImage, titleText: Data.TrendingPost4.titleText, descriptionText: Data.TrendingPost4.descriptionText),
    .init(id: Data.trendingPost5.id, postImage: Data.trendingPost5.postImage, titleText: Data.trendingPost5.titleText, descriptionText: Data.trendingPost5.descriptionText)
    ]
    
    var body: some View {
        NavigationView{
            List{
                VStack (alignment: .leading){
                    Text("Trending").font(.headline)
                    ScrollView (.horizontal) {
                        VStack (alignment: .leading) {
                            HStack {
                                ForEach(trendingPosts, id: \.id) { trendPost in
                                    NavigationLink(destination: GroupDetailsView(trendingPost: trendPost)) {
                                       GroupView(trendingPost: trendPost)
                                    }
                                }
                            }
                        }
                    }.frame(height: 180)
                    
                    ForEach(posts, id: \.id) { post in
                        PostView(post: post)
                    }
                }
            }.navigationBarTitle("News Feed")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
