//  BindingBootcamp.swift

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .textCase(.uppercase)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    // The state var below only exists in this View locally, so we don't need to bind it to another State var
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
            buttonColor = .pink
            title = "NEW TITLE!!!"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
