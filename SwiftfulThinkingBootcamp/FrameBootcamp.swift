//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.green)
        // The stuff before the .frame is the content inside the frame
//            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
            .background(Color.red)
            .frame(height:100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            
        // By setting alignment to .top, you're telling SwiftUI to align the content to the top of the AVAILABLE SPACE. This causes the entire view to move to the top of the screen.
            .frame(maxHeight: .infinity, alignment: .top)
        // The yellow background color only covers the area defined by the latest frame, which has been set to the maximum height of the AVAILABLE SPACE and aligned to the top.
            .background(Color.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
