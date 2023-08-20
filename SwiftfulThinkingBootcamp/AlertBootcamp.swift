//  AlertBootcamp.swift

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil // optional
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be updated"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video ✅"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
    //            Alert(title: Text("There was an error"))
                getAlert()
                
            })
        }

    }
    
    func getAlert() -> Alert {
        // Alert with Static values
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
////                primaryButton: .destructive(Text("Delete")),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
//    }
        
        // Alert with dynamic values
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        
        // Alert that uses the enum
        switch alertType {
            case .error:
                return Alert(title: Text("There was an error"))
            
            case .success:
                return Alert(title: Text("This was a success"), message: Text("Well done!"), dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .green
                }))
            default:
                return Alert(title: Text("Error"))
            }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
