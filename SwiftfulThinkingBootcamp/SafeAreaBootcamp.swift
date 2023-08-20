//
//  SafeAreaBootcamp.swift
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//
//            // background
//            Color.blue
//
//            // foreground
//            VStack{
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(Color.red)
//
//        }
        
//        ZStack{
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//        ScrollView{
//            VStack{
//            Text("Title goes here")
//                .font(.title)
//                .frame(maxWidth: .infinity, alignment: .leading)
//
//            ForEach(0..<10){ index in
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(Color.white)
//                    .frame(height:150)
//                    .shadow(radius: 10)
//                    .padding(20)
//            }
//            }
//        }
////        .background(Color.red)
//    }
        
        ScrollView{
            VStack{
            Text("Title goes here")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)

            ForEach(0..<10){ index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height:150)
                    .shadow(radius: 10)
                    .padding(20)
            }
            }
        }
        .background(Color.blue)
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all) // old - deprecated
                .ignoresSafeArea()
            
        )
        
    }
        
        
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}





