//  AnimationTimingBootcamp.swift


import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool  = false
    
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(Animation.default){
                    isAnimating.toggle()
//                }
                
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: 1), value: isAnimating)
//                .animation(Animation.spring(), value: isAnimating)
                .animation(Animation.spring(
                    response: 0.5, // the total duration of the animation
                    dampingFraction: 0.4, // how much it will bounce back
                    blendDuration: 1.0),
                   value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
