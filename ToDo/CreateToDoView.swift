//
//  CreateToDoView.swift
//  ToDo
//
//  Created by Kranti on 2023/11/11.
//

import SwiftUI


struct CreateToDoView: View {
    static let DEFAULT_UI_PADDING: CGFloat = 12;
    var body: some View {
        List {
            ToDoTextFieldView(label: "TitleBitch:", text: .constant(""), padding: CreateToDoView.DEFAULT_UI_PADDING)
            
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ }).padding(CreateToDoView.DEFAULT_UI_PADDING)
            
        }
        
    }
    
    
}

#Preview {
    CreateToDoView();
}

