//
//  TweetBig.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 10/12/21.
//

import SwiftUI

struct TweetBig: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("user-307993_1280")
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                .frame(width: 80, height: 80)
                VStack(alignment: .leading) {
                    
                    Text("Username")
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text("@nickname")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                }
            }
            
            VStack(alignment: .center) {
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.")
                    .font(.system(size: 22))
                    
                HStack(spacing: 70.0) {
                    
                    HStack() {
                        Text(.init(systemName: "bubble.left"))
                            .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            .font(.system(size: 22))
                        Text("3")
                            .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            .font(.system(size: 22))
                    }
                    Text(.init(systemName: "arrow.2.squarepath"))
                        .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 22))
                    Text(.init(systemName: "heart"))
                        .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 22))
                    Text(.init(systemName: "square.and.arrow.up"))
                        .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 22))
                    
                }
                
            }
        }
        .padding(.horizontal)
    }
}

struct TweetBig_Previews: PreviewProvider {
    static var previews: some View {
        TweetBig()
    }
}
