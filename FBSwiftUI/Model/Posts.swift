
import Foundation

class Posts {
    
    struct Post {
        let id: Int
        let username, postText, usernameImage, postImage: String
    }

    struct TrendingPost {
        let id: Int
        let postImage, titleText, descriptionText: String
    }
}
