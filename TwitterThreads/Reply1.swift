//
//  Reply1.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 10/12/21.
//

import SwiftUI

struct Reply1: View {
    
    var body: some View {
        NavigationLink(destination: BigReply1()) {
            
                HStack(alignment: .top) {
                    Image("user1")
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    VStack(alignment: .leading) {
                        
                        HStack(alignment: .top) {
                            
                            Text("UserOne")
                                .font(.headline)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                            Text("@nickOne")
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
//                .navigationBarHidden(true)
            }
        
        .buttonStyle(.plain)
        .padding(.horizontal)
        }
        
    }


struct Reply1_Previews: PreviewProvider {
    static var previews: some View {
        Reply1()
    }
}
