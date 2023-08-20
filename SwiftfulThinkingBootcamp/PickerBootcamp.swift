//  PickerBootcamp.swift

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Liked", "Most Popular"]
    
    var body: some View {
    
        
        VStack {
                    Picker(
                        selection: $selection,
                        label: Text("Picker"),
                        content: {
                            ForEach(filterOptions, id: \.self) { option in
                                Text(option).tag(option)
                            }
                        }
                    )
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Text("Selected: \(selection)")
                }
        

        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100, content: { ageNumber in
//                        Text("\(ageNumber)")
//                            .foregroundColor(.green)
//                            .tag("\(ageNumber)")
//                    })
//
//                    Text("2").tag("2")
//                    Text("3").tag("3")
//                    Text("4").tag("4")
//                    Text("5").tag("5")
//            })
////            .pickerStyle(WheelPickerStyle())
////            .background(Color.pink.opacity(0.4))
//        }
        
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
