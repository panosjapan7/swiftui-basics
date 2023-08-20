//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1708-2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hi, everyone"]
    let myString: String = "Hello"
    
    
    var body: some View {
        VStack {
//            ForEach(0..<10) {index in
//                HStack{
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
            ForEach(data.indices) {index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
