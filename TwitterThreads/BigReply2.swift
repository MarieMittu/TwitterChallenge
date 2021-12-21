//
//  BigReply2.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 15/12/21.
//

import SwiftUI

struct BigReply2: View {
    var body: some View {
        
//        NavigationView {
        VStack {
            TweetStandard()
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Image("user2")
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                    .frame(width: 80, height: 80)
                    VStack(alignment: .leading) {
                        
                        Text("UserTwo")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text("@nickTwo")
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
            Spacer()
            
            TextField("Tweet your reply", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.leading)
                .frame(width: 350, height: 40)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
//        .navigationBarHidden(true)
    }
//        .toolbar{}.navigationBarTitle("Tweet", displayMode: .inline)
        
}
//}

struct BigReply2_Previews: PreviewProvider {
    static var previews: some View {
        BigReply2()
    }
}
