//  ToolbarBootcamp.swift

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text:$text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .frame(width: 200, height: 200)
                    }
                }
                
                            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Image(systemName: "heart.fill")
                })
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Image(systemName: "gear")
                })
            }
            // hides the top navigation bar
//            .toolbar(.hidden, for: .navigationBar)
            
            // Makes the top bar of Dark mode color
//            .toolbarColorScheme(.dark, for: .navigationBar)
            
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                    
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
