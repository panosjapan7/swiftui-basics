//  SheetsBootcamp.swift


import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
            }
            // Note 1: A sheet modifier can only be used once in the View hierarchy
                // We can't add another sheet modifier below it
                // Keep it once sheet per View
            // Note 2: Do Not add any conditional logic (ie if/else) to sheet modifiers
            // Note 3: Only show single Sheet per view. You can bind different variables into the Sheet to change what this screen is though but don't add conditional logic because the content of the Sheet won't update.
            
//            .sheet(isPresented: $showSheet) {
//                // this content below will show on a Sheet
                 // DO NOT ADD CONDITIONAL LOGIC HERE
//                SecondScreen()
//            }
            
            // We can only use a sheet or a fufullScreenCover; not both
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            }
            )
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode // this is used to close a Sheet
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()  // this is used to close a Sheet
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
