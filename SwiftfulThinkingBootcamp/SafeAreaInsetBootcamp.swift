//  SafeAreaInsetBootcamp.swift

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10){ _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("SafeArea Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                , alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                    Text("Hi")
                        .frame(maxWidth: .infinity)
//                        .padding()
                        .background(Color.yellow)
//                        .clipShape(Circle())
//                        .padding()
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
