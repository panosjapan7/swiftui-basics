//  AnimationUpdatedBootcamp.swift

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                
            }
        }
        // works, but it's depcredated
        // also, the spring() animation is applied to both animations (green and orange) (and anything that changes on the View)
//        .animation(.spring())
        // new version: this spring() animation will be applied only if its value (animate1) changes, so it will be applied only to the green element
        .animation(.spring(), value: animate1)
//        this linear() animation will be applied only if its value (animate2) changes, so it will be applied only to the orange element
        .animation(.linear(duration: 2), value: animate2)
    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
