//
//  PostCardView.swift
//  LinkedIn Clone
//
//  Created by Mohammed Mubashir on 28/02/23.
//

import SwiftUI

struct SocialView {
    var ids:Int
    var image:String
    var title:String
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]

var sampleDataPost=postData(id: 1, image: "02", title: "Mohammed Mubashir", followers: 150, profileImage: "1")

struct PostCardView: View {
    
    let postData : postData
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity,height: 10)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center) {
                Image(postData.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 70,height: 70,alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text(postData.title)
                        .font(.body)
                    
                    Text("\(postData.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
                
            }.padding(.horizontal)
            
            Text("Looking a way to learn iOS Development? Then you are surely at a right place.").padding(.horizontal)
            Image(postData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity,height: .infinity,alignment: .center)
            Divider()
        }
        
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(postData: sampleDataPost)
    }
}
