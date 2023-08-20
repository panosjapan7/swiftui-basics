//  ContextMenuBootcamp.swift

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
//            Text("Menu item 1")
//            Text("Menu item 2")
//            Text("Menu item 3")
            Button(action: {
                backgroundColor = .yellow
            }, label: {Label("Share Post", systemImage: "flame.fill")})
            
            Button(action: {
                backgroundColor = .red
            }, label: {Text("Report Post")})
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                Text("Like Post")
                Image(systemName: "heart.fill")
            }})
                   
       })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
