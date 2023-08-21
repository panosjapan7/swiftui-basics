//  IfLetGuardBootcamp.swift

import SwiftUI

struct IfLetGuardBootcamp: View {
    @State var currentUserId: String? = "test"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Here we are practicing safe coding!")
                
                // If displayText has value and it's not nil, create the Text element and render it (so after 3 secs). Until then, don't create the Text elements
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
//                    loadData()
                    loadData2()
            }
        }
    }
    
    func loadData() {
        
        // if currentUserId has value, create the var userId
        // and execute the code block
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userId)"
                isLoading = false
            }
        }
        else {
            displayText = "Error. There is no User ID"
        }
    }
    
    func loadData2() {
        // if currentUserId is nil, run the code block below
        guard let userId = currentUserId else {
            displayText = "Error. There is no User ID"
            return
        }
        
        // if currentUserId is not nil, run the code below
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userId)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
