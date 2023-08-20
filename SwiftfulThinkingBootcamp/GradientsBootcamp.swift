//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    colors: [Color.cyan, Color.indigo],
//                    startPoint: .leading,
//                    endPoint: .trailing)
//                    startPoint: .top,
//                    endPoint: .bottom
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                    endPoint: .bottom
                
//                RadialGradient(colors: [Color.cyan, Color.indigo], center: .topLeading, startRadius: 5, endRadius: 400
//                )
                
                AngularGradient(gradient: Gradient(colors: [Color.cyan, Color.indigo]), center: .topLeading, angle: .degrees(225))

)
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
