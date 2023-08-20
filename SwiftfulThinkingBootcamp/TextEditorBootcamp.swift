//  TextEditorBootcamp.swift

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String  =  "This is the starting text..."
    
    @State var savedText: String  =  ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.red)
                    .cornerRadius(10)
//                    .colorMultiply(.blue) // it changes the font color to black though
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    
                    }
                )
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
