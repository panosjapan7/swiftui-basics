//  TransitionBootcamp.swift


import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false

    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.easeInOut){
                        showView.toggle()
                    }
                }
                .padding(.top, 50)
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
//                    .animation(.easeInOut, value: showView)
//                    .transition(.move(edge: .bottom))
//                    .transition(.move(edge: .leading))
//                          .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                

                    
                // 'animation' was deprecated in iOS 15.0: Use withAnimation or animation(_:value:) instead.
    //                .animation(.default)
//                Here's what to do :
//                1. Wrap the Button's `showView.toggle()` in a withAnimation() and you pass in the type of animation (.easeInOut) there
//                Button("BUTTON") {
//                                    withAnimation(.easeInOut){
//                                        showView.toggle()
//                                    }
//                2. Remove the `.animation(.easeInOut)` from `RoundedRectangle()`. You don't need it. And keep only the `.transition(.slide)`
            }
            
                
        }
        .ignoresSafeArea()
    }
}

//For anyone having issues with the transitions only working on the outward (false) click, the issue is that there is a bug in the renderer for the Preview.  A workaround for this is to embed your View in a VStack in the preview as below:
//
struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {

        VStack {
            TransitionBootcamp()
        }

    }
}

//struct TransitionBootcamp_Previews: PreviewProvider {
//    static var previews: some View {
//       TransitionBootcamp()
//
//    }
//}
