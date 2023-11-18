//
//  ContentView.swift
//  KingfisherImageViewer
//
//  Created by Shafiq  Ullah on 11/18/23.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView


struct ContentView: View {
    @State var showLoadingIndicator = true
    
    var body: some View {
        ZStack{
           
            KFImage(URL(string: "https://images.pexels.com/photos/16593195/pexels-photo-16593195/free-photo-of-a-flock-of-seagulls-flying-over-a-mountain.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"))
                .onSuccess{ success in
                    
                    self.showLoadingIndicator = false
                }
            
            ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .default())
                 .frame(width: 50.0, height: 50.0)
                 .foregroundColor(.blue)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
