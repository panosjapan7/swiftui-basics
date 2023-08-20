//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1708-2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // the self.variable refers to the the let vars in our View
    // the "= backgroundColor, count, title refer to the props passed into this init() function.
    // And this init() function is the InitializerBootcamp() code block you see at the bottom of this file (InitializerBootcamp(backgroundColor: .purple, count: 55, title: "Peaches"))
    // So we don't need to create the code block below. It's created by Swift with InitializerBootcamp()
//    init(backgroundColor: Color, count: Int, title: String){
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
//    }
    
    // Custom init
    init(count: Int, fruit: Fruit){
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerBootcamp(count: 15, fruit: .apple)
            InitializerBootcamp(count: 20, fruit: .orange)
        }
        
    }
}
