//
//  Thread1.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 15/12/21.
//

import SwiftUI

struct Thread1: View {
    
    @State private var reply1 = Reply1()
    @State private var reply2 = Reply2()
    @State private var showReplies = true
    @State private var enabled = false
    
    
    
    
    var body: some View {
//        NavigationView {
            
            VStack {
                Text("Thread")
                    .font(.headline)
                    .fontWeight(.bold)
                    .ignoresSafeArea()
                ScrollView {
                    ZStack {
    
                        VStack(spacing: 5) {
                            Group {
                                TweetPrincipal()
                                Divider()
                                TweetStandard()
                                TweetStandard()
                                TweetSmall()
                            }
                            
                            
                            Group {
                                TweetStandard()
                                TweetStandard()
                                TweetStandard(isLast: true)
                            }
                            
                            VStack(alignment: .leading) {
                                Divider()
                                Text("Replies")
                                    .font(.headline)
                                    .padding(.leading)
                                Divider()
                            }
                            Reply1()
                            Divider()
                            Reply2()
                        }
                    }
                }
                
                TextField("Tweet your reply", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                    .frame(width: 350, height: 40)
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    
                   
                   
            }
            .padding(.top)
//            .navigationTitle(Text("Thread"))
            
            .navigationBarTitleDisplayMode(.inline)
            
        }
       
    }
//}

struct Thread1_Previews: PreviewProvider {
    static var previews: some View {
        Thread1()
    }
}
