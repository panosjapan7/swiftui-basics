//  GroupBootcamp.swift

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.largeTitle)
            .foregroundColor(.green)
            
        }
        .foregroundColor(.red)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
