//
//  ContentView.swift
//  TwitterThreads
//
//  Created by Maria Smirnova on 16/12/21.
//

import SwiftUI

struct Start: View {
    var body: some View {
        NavigationView { Thread1()
                .navigationBarHidden(true)
        }
        
    }
        
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
