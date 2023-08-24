//  NavigationStackBootcamp.swift

import SwiftUI

struct NavigationStackBootcamp: View {
    
    @State private var stackPath: [String] = []
    
    let fruits: [String] = ["Apples", "Orange", "Banana"]
    
    var body: some View {
        // Now that we've added (path: $stackPath) to NavigationStack, the Int links don't work anymore. Only the String links are working.
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 20) {
                    
                    // when we click the button, it's going to transfer us to the Mango screen (so 3 screens away) and if we tap the back button, it'll take us to "Watermelon" screen, then "Coconut" screen and then to home Screen
                    Button("Super seque") {
                        stackPath.append(contentsOf: ["Coconut", "Watermelon", "Mango"])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        
                        NavigationLink(value: x) {
                            Text("Click Me: \(x)")
                        }
                        
                        // removed after changing NavigationView to NavigationStack
//                        NavigationLink(destination: {
//                            MySecondScreen(value: x)
//                        }, label: {
//                            Text("Click Me: \(x)")
//                        })
                    }
                    
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            
            // We create a navigationDestination for when clilcking on a type of String (not Int) - the fruits with a NavigationPath that is of type String
            .navigationDestination(for: String.self) { value in
                Text("Another Screen: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INITI FOR SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen: \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
