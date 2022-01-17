//
//  ContentView.swift
//  InstagramClone
//
//  Created by Gary Tokman on 3/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Bottom Screen Navigation
        NavigationView{
            TabView {
                VStack{
                    Navigation()
                        .padding(.horizontal)
                    StoryList()
                        .padding(.leading)
                    ScrollView(showsIndicators: false){
                        ForEach(0..<10) { _ in
                            FeedItem()
                        }
                    }
                    Spacer()
                }
                .navigationBarHidden(true)
                .tabItem{
                    Image(Asset.home.name)
                }
                Text("Search")
                    .tabItem {
                        Image(Asset.search.name)
                    }
                Text("Reels")
                    .tabItem {
                        Image(Asset.reels.name)
                    }
                Text("Shopping")
                    .tabItem {
                        Image(Asset.shop.name)
                    }
                Text("Profile")
                    .tabItem {
                        Image(Asset.meTab.name)
                    }
            }
            .font(.headline)
        }
        
        // Top Screen Navigation
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
