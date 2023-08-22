//  AppStorageBootcamp.swift

import SwiftUI

struct AppStorageBootcamp: View {
    
    // Old method of localStorage
//    @State var currentUserName: String?
    
    // New method of localStorage
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
                
                // saves the data with key "name" into an object in the device; it works as localStorage;
                // We need this only if using the old method UserDefaults
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        
        // We need this only if using the old method UserDefaults
//        .onAppear {
//            // gets the data from localStorage (UserDefaults) with the key "name"
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
        
        
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
