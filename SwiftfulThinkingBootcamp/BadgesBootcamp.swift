//  BadgesBootcamp.swift

import SwiftUI

// Badges are only displayed in list rows (List) and tab bars (TabView)

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello World")
                .badge("NEW ITEMS")
            Text("Hello World")
                .badge(5)
            Text("Hello World")
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
