//
//  Reply2.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 10/12/21.
//

import SwiftUI

struct Reply2: View {
    
    var body: some View {
        NavigationLink(destination: BigReply2()) {
            
            HStack(alignment: .top) {
                Image("user2")
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                VStack(alignment: .leading) {
                    
                    HStack(alignment: .top) {
                        
                        Text("UserTwo")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("@nickTwo")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                    }
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. ")
                    HStack(spacing: 50.0) {
                        
                        Text(.init(systemName: "bubble.left"))
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
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

struct Reply2_Previews: PreviewProvider {
    static var previews: some View {
        Reply2()
    }
}
