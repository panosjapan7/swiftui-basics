//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1608-2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//
//                    .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50 )
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6465827227, green: 0.3075367212, blue: 1, alpha: 0.8470588235)), Color(#colorLiteral(red: 0.102526404, green: 0.01454449352, blue: 0.1780161858, alpha: 0.8470588235))]), startPoint: .topLeading,
                                endPoint: .bottomTrailing
                    )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 5, x: 0, y: 5)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .black, radius: 10, x: 0, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
