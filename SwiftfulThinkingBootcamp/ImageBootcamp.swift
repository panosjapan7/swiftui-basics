//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("cv-icon")
        // This goes with ".foregroundColor(.red)" to make the image red
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height:200)
            .foregroundColor(.red)
        // How to make the image a circle
//            .frame(width: 300, height:300)
        // set the value to half of one of the values in frame
//            .cornerRadius(150)
        // End of How to make the image a circle
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 20)
//                Ellipse()
//            )
        
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
