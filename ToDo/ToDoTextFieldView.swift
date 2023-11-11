//
//  ToDoTextFieldView.swift
//  ToDo
//
//  Created by Kranti on 2023/11/11.
//

import SwiftUI


struct ToDoTextFieldView: View {
    var label: String;
    @Binding var text: String;
    var padding: CGFloat;
    
    
    var body: some View {
        TextField(label, text: $text).padding(padding);
        
    }
}
