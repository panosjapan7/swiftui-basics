//  NavigationViewBootcamp.swift


import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello, World",
                               destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(.inline)
            // .navigationBarHidden(true) // hides the Nav Bar
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(), label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.red)
            )
        }
        
    }
}

struct MyOtherScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd Screen"))
            }
                
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
