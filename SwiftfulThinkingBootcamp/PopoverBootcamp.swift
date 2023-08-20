//  PopoverBootcamp.swift

// sheets, animation, transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            VStack{
                Button("BUTTON") {
                    
                        showNewScreen.toggle()
                    
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD 2 - TRANSITION
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
                NewScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                    .animation(.spring(), value: showNewScreen)
               
        }
    }
}

// METHOD 1 - SHEET
//struct NewScreen: View {
//
//    @Environment(\.presentationMode) var presentationMode
//
//    var body: some View {
//        ZStack(alignment: .topLeading){
//            Color.purple.ignoresSafeArea()
//
//            Button( action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Image(systemName: "xmark")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .padding()
//            })
//
//        }
//    }
//}

// METHOD 2 - TRANSITION, METHOD 3 - ANIMATION OFFSET
struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple.ignoresSafeArea()
            
            Button( action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
