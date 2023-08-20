//  DatePickerBootcamp.swift

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate:Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDay: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack {
            Text("SELECTED DATE IS:")
//            Text(selectedDate.description)
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //        DatePicker("Select a date", selection: $selectedDate)
            //        DatePicker("Select a date:", selection: $selectedDate, displayedComponents: [.hourAndMinute])
                    
                    // you can't pick a year earlier than startingDate or later than endingDate (today's date)
                    DatePicker("Select a dates:", selection: $selectedDate, in: startingDate...endingDay, displayedComponents: [.date])
                        .accentColor(Color.red)
                        .datePickerStyle(CompactDatePickerStyle())
            //            .datePickerStyle(GraphicalDatePickerStyle())
            //            .datePickerStyle(WheelDatePickerStyle())
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
