//  ResizableSheetBootcamp.swift

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
                // inside this array we will tell the MyNextView() view what sizes do we want this sheet to be able to be resized to
//                .presentationDetents([.medium, .large])
//                 75% of the screen
//                .presentationDetents([.fraction(0.75)])
            
            // 150px of the screen. might lead to a problem in how it looks in various devices when using pixesl
//                .presentationDetents([.height(150)])
                
            // You need to add the .fraction(0.5) here also if you are applying it
//                .presentationDetents([.fraction(0.5), .medium, .large], selection: $detents)
            
//                .presentationDragIndicator(.hidden)
                
                // The user can't close the sheet by dragging to the bottom
//                .interactiveDismissDisabled()
        }
        
//        .onAppear{
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello, World!")
            
            VStack(spacing: 20){
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("MEDIUM") {
                    detents = .medium
                }
                
                Button("600px") {
                    detents = .height(600)
                }
                
                Button("LARGE") {
                    detents = .large
                }
            }
        }
        // You can add them here instead of in the sheet
        // You need to add the .fraction(0.5) here also if you are applying it
            .presentationDetents([.fraction(0.2), .fraction(0.5), .medium, .height(600), .large], selection: $detents)
    
        // .presentationDragIndicator(.hidden)
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
