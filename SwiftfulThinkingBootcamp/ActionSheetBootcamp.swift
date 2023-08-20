//  ActionSheetBootcamp.swift

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button( action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("default"))
//        let button2: ActionSheet.Button = .destructive(Text("destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the Message"),
//            buttons: [button1, button2, button3]
//        )
        
        // Using enum
        let shareButton: ActionSheet.Button = .default(Text("Share"), action: {
            // this is where we would add code to share post
        })
        let reportButton: ActionSheet.Button = .destructive(Text("Report"), action: {
            // add code to report this post
        })
        let deleteButton: ActionSheet.Button  = .default(Text("Delete"), action: {
            // add code to delete this post
        })
        let cancelButton: ActionSheet.Button  = .cancel()
        
        let title = Text("What would you like to do?")
        
    switch actionSheetOption {
    case .isOtherPost:
        return ActionSheet(
            title: title,
            message: nil,
            buttons: [shareButton, reportButton, cancelButton])
    case .isMyPost:
        return ActionSheet(
            title: title,
            message: nil,
            buttons: [shareButton, reportButton, deleteButton, cancelButton])
    }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
