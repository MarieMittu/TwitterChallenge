//
//  TweetSmall.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 15/12/21.
//

import SwiftUI

struct TweetSmall: View {
    
    //    @State private var isFirst = false
        var isLast = false
        var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. "
        
        var body: some View {
            NavigationLink(destination: ThreadScreen()){
                HStack(alignment: .top) {
                    VStack {
                        Image("user-307993_1280")
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        if isLast == false {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 1, height: 100)
                        }
                    }
                    VStack(alignment: .leading) {
                        
                        HStack(alignment: .top) {
                            
                            Text("Username")
                                .font(.headline)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                            Text("@nickname")
                                .font(.headline)
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        Text(text)
                        HStack(spacing: 50.0) {
                            
                            HStack {
                                Text(.init(systemName: "bubble.left"))
                                    .fontWeight(.light)
                                .foregroundColor(Color.gray)
                                Text("3")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            Text(.init(systemName: "arrow.2.squarepath"))
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            Text(.init(systemName: "heart"))
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            Text(.init(systemName: "square.and.arrow.up"))
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            
                        }
                    }
                }
            }
            .buttonStyle(.plain)
            
            
            .padding(.horizontal)
            
        }
    }

struct TweetSmall_Previews: PreviewProvider {
    static var previews: some View {
        TweetSmall()
    }
}
