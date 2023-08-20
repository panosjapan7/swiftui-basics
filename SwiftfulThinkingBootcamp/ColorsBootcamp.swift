//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                // Color(#colorLiteral(red: 0.9792240262, green: 0, blue: 1, alpha: 1))
                
                    //                Color.primary
                // Color( UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 10, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            
            
            
    }
}
