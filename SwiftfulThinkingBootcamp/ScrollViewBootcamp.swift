//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1708-2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: true) {
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//            }
//        }
        
        ScrollView{
            LazyVStack {
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20) {index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(color: .black, radius: 10, x: 0, y: 0)
                                    .padding()
                            }
                            
                        }
                    })
                    
                }
            }
        }
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
