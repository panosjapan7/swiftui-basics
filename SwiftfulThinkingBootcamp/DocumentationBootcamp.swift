//  DocumentationBootcamp.swift

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPETIES
    @State var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    // PANOS - Working copy - things to do:
    /*
        1) Fix title
        2) Fix title
        3) Fix title
        4) Fix title
     */
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foreGroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                    Button("ALERT", action: {
                    showAlert.toggle()
                })
                        .alert(isPresented: $showAlert, content: {
                            getAlert(text: "This is the alert")
                        })
            )
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scroll view
    private var foreGroundLayer: some View {
        ScrollView { // START: SCROLLVIEW
            Text("Hello")
            
            ForEach(data, id: \.self) { fruit in
                Text(fruit)
                    .font(.headline)
            }
        } // END: SCROLLVIEW
    }
    
    // MARK: FUNCTIONS
    /// Gets an Alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will not have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an Alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
