//  EnvironmentObjectBootcamp.swift

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item
//                                            , viewModel: viewModel
                                                          )
                    ) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Apple Devices")
        }
        // turns viewModel object into Context and all Views beneath it have access to the viewModel without props drilling
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    // we are passing the viewModel to the Environment so we don't need to pass this in as a prop
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink(destination: FinalView(
//                viewModel: viewModel
            ), label: {
                Text(selectedItem)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            })
                
            
            
        }
    }
}

struct FinalView: View {
    // we are passing the viewModel to the Environment so we don't need to pass this in as a prop
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    // We're taking viewModel from the Environment
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
