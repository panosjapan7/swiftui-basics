//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1708-2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section1")
                                    .foregroundColor(Color.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.blue)
                                    .padding()
                                        , content: {
                        ForEach(0..<10){index in
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height:150)
                        }
                    } )
                    
                    Section(header:
                                Text("Section2")
                                    .foregroundColor(Color.red)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.blue)
                                    .padding()
                                        , content: {
                        ForEach(0..<20){index in
                            Rectangle()
                                .fill(Color.red)
                                .frame(height:150)
                        }
                    } )
                    
                }
            )
        }
        
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
