//  ListSwipeActionsBootcamp.swift

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
            // .onDelete(perform: delete)
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                Button("Archive") {
                    
                }
                .tint(.green)
                Button("Save") {
                    
                }
                .tint(.blue)
                Button("Junk") {
                    
                }
                .tint(.purple)
            }
            
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button("Share") {
                    
                }
                .tint(.yellow)
                
            }
        }
        
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
