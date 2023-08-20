//  TernaryBootcamp.swift

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE")
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 :  50, height: 100)
                
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
