//
//  ToDoItem.swift
//  ToDo
//
//  Created by Kranti on 2023/11/11.
//

import Foundation
import SwiftData

// using a macro to mark this as a model 
@Model
final class ToDoItem {
    var title: String;
    var content: String;
    var date: Date;
    var isComplete: Bool;
    
    init(title: String = "", date: Date = .now, content: String = "", isComplete: Bool = false) {
        self.title = title;
        self.content = content;
        self.date = date;
        self.isComplete = isComplete;
    }
}
