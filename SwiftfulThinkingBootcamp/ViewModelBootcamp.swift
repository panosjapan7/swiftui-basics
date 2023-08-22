//  ViewModelBootcamp.swift

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// contains all the data and functions related to that data.
// it doesn't contain anything that relates to the View and the elements it renders, styles etc.
class FruitViewModel: ObservableObject {
    /*
     don't need to make it a @State var
     @Published is same thing as @State but it's in the class
     When the fruitArray gets changed, it notifies the FruitViewModel class that something's changed so you might have to update something. And it's going to publish the new changes.
     Just like the state alerts the View, the @Published will alert the class.
     */
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // We’ll create an initializer and call getFruits() on the FruitViewModel class on the first time it is created, so that it's not called every time we render the body View.
    // This way it won't append data to the array everyt time it's rendered.
    init() {
        getFruits()
    }
        
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", count: 1)
        let fruit2 = FruitModel(name: "Bananas", count: 2)
        let fruit3 = FruitModel(name: "Watermelons", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    // replaced by line 12
//    @State var fruitArray: [FruitModel] = []
    
    // @ObservedObject tells the View to update if the data in fruitViewModel changes. Sort of like a useEffect() that has fruitViewModel in its dependency array.
//    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    /* this replaces the @ObservedObject because we want this to be observed when something in its class changes; not at every re-render of the View (ie re-renders that had nothing to do with this class.
        In short, we want the fruitViewModel to PERSIST when the View re-renders for reasons that don't have to do with the FruitViewModel class.
     
        @StateObject -> USE THIS ON CREATION / INIT (in a parent component)
        @ObservedObject -> USE THIS FOR SUB-VIEWS (child components)
     */
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                else {
                    // replaced because we don't use the @State fruitArray anymore
    //                ForEach(fruitArray) { fruit in
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    // used with @State fruitArray
    //                .onDelete(perform: deleteFruit)
                    
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                    })
            )
                
            
            // this gets called everytime the body View appears on the screen
            // We'll fix the problem by removing .onAppear
//            .onAppear {
//                // used with @State fruitArray
////                getFruits()
//
//                fruitViewModel.getFruits()
//            }
            
            
        }
    }
    
    // These functions work with the @State var
//    func getFruits() {
//        let fruit1 = FruitModel(name: "Oranges", count: 1)
//        let fruit2 = FruitModel(name: "Bananas", count: 2)
//        let fruit3 = FruitModel(name: "Watermelons", count: 88)
//
//        fruitArray.append(fruit1)
//        fruitArray.append(fruit2)
//        fruitArray.append(fruit3)
//    }
//
//    func deleteFruit(index: IndexSet) {
//        fruitArray.remove(atOffsets: index)
//    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
