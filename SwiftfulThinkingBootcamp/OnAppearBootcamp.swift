//  OnAppearBootcamp.swift

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Starting text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            
            // this will be executed 5 seconds after we render this screen
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            
            // this will be executed when we'll leave the screen
            .onDisappear(perform: {
                myText = "Ending text!"
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
