//  TextFieldBootcamp.swift

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    // checks if input length is 3 chars or more
                    if textIsAppropriate() {
                        // saves input value to array
                        saveText()
                    }
                    
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                    
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { dataItem in
                    Text(dataItem)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield Bootcamp")
        }
    }
    
    // checks if input length is 3 chars or more
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    // saves input value to array
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
