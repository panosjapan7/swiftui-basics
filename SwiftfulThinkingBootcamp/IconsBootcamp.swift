//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        // Multicolor icon code
        Image(systemName: "person.fill.badge.plus")
        .renderingMode(.original)
        // End of Multicolor icon code 
        
//        Image(systemName: "heart")
//        Image(systemName: "heart.fill")
//        Image(systemName: "paperplane.fill")
        
        
            
        
            .resizable() // the image will resize automatically based on the frame size
//            .aspectRatio(contentMode: .fill)
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)))
            .frame(width: 300, height: 300)
//            .clipped()
        
        
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
