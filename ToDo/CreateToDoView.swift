//
//  CreateToDoView.swift
//  ToDo
//
//  Created by Kranti on 2023/11/11.
//

import SwiftUI


struct CreateToDoView: View {
    static let DEFAULT_UI_PADDING: CGFloat = 12;
    
    // binding to the @Binding variable text
    @State private var titleText: String = "";
    
    @State private var showCreate: Bool = false;
    
    var body: some View {
        // Navigation
        NavigationStack {
            HStack {
                // list of todos
                Text("New Item").toolbar {
                    ToolbarItem {
                        Button(action: {
                            showCreate.toggle()
                        }, label: {
                            Label("New Item", systemImage: "plus")
                        })
                    }
                }.sheet(isPresented: $showCreate, content: {
                    NavigationStack {
                        CreateToDoView()
                    }
                })
            }
        }
        
        
        List {
            ToDoTextFieldView(label: "Title", text: $titleText, padding: CreateToDoView.DEFAULT_UI_PADDING)
            
            
            DatePicker(selection: .constant(Date()), label: { Text("Date") }).padding(CreateToDoView.DEFAULT_UI_PADDING)
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                
            }
            
            

            
            ToDoTextFieldView(label: "Content", text: .constant(""), padding: CreateToDoView.DEFAULT_UI_PADDING, height: 100)
            
        }
        
    }
    
    
}

#Preview {
    CreateToDoView();
}

