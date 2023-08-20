//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Panagiotis Tsapanidis on -1708-2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
//        ZStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 130, height: 130)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        }
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack{
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        VStack(spacing: 50) {
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
