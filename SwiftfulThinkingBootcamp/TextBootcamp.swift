//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
            // .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .underline(true, color: Color.red)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(50)
            // .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
