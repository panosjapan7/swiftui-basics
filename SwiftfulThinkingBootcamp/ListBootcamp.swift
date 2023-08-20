//  ListBootcamp.swift

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach"]
    @State var veggies: [String] = ["Tomato", "Potato", "Carrot"]
    
    var body: some View {
        NavigationView {
            List{
                // How to edit a list
                Section(header:
                            HStack {
                                Text("Fruits")
                                Image(systemName: "flame.fill")
                            }
                            .font(.headline)
                            .foregroundColor(.orange)
                        
                ) {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                    }
    //                .onDelete(perform: { indexSet in
    //                    deleteFruit(indexSet: indexSet)
    //                })
                    // The above is simplified to the line below
                    .onDelete(perform: deleteFruit)
                    
//                    .onMove(perform: { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                    .onMove(perform: moveFruit)
                    .listRowBackground(Color.pink)
                }
                
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }
            }
            .accentColor(.purple) // this doesn't work; not sure why
//            .listStyle(GroupedListStyle())
//            .listStyle(SidebarListStyle())
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),

//                trailing:
//                    Button("ADD", action: {
//                        addFruit()
//                    })
                // simplification of the above
                trailing: addButton
            )
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("ADD", action: {
            addFruit()
        })
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveFruit(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addFruit(){
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
