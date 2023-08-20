//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1708-2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.yellow)
            // adds 10px padding on all sides by default
//            .padding()
        // Same thing as above
//            .padding(.all, 10)
//            .padding(.vertical, 10)
//            .padding(.horizontal, 10)
//            .padding(.top, 10)
//            .padding(.bottom, 10)
//            .padding(.leading, 10) // padding left
//            .padding(.trailing, 10) // padding right
            
            // the following is the equivalent of padding: 10, 20, 30, 40 in css:
//            .padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 40))
        
//            .background(Color.blue)
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we do on the screen. It is multiple lines and we will align the text to the leading edge.")
                
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0, y: 10)
                )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
