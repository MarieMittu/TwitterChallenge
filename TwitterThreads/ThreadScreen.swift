//
//  ThreadScreen.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 10/12/21.
//

import SwiftUI

struct ThreadScreen: View {
    
    @State private var reply1 = Reply1()
    @State private var reply2 = Reply2()
    @State private var showReplies = true
    @State private var enabled = false
    
    
    
    
    var body: some View {
//        NavigationView {
            
            VStack {
                ScrollView {
                    
                    ZStack {
                        
                            
                        VStack(spacing: 5) {
                            Group {
                                TweetStandard()
                                TweetStandard()
                                TweetStandard()
                            }
                            
                            VStack(alignment: .leading) {
                                TweetBig()
                                Button(enabled ? "Show replies" : "Hide replies") {
                                    showReplies.toggle()
                                    enabled.toggle()
                                }
                                .padding(.leading, 23.0)
                                if showReplies {
                                    Divider()
                                    Reply1()
                                    Divider()
                                    Reply2()
                                    Divider()
                                }
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
                .navigationTitle("Thread")
                TextField("Tweet your reply", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                    .frame(width: 350, height: 40)
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    
                   
                
            }
            
//            .navigationBarHidden(true)
        }
//        .toolbar{}.navigationBarTitle("Thread", displayMode: .inline)
    }
//}

struct ThreadScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThreadScreen()
    }
}
