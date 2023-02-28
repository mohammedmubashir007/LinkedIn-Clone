//
//  SearchBar.swift
//  LinkedIn Clone
//
//  Created by Mohammed Mubashir on 28/02/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50,height: 50)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.gray.opacity(0.4))
                .frame(width: 270,height: 30)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                }
            
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30)
        }.padding(.top)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
