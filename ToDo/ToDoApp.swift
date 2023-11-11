//
//  ToDoApp.swift
//  ToDo
//
//  Created by Kranti on 2023/11/11.
//

import SwiftUI
import SwiftData

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: ToDoItem.self) // link up the model
        }
    }
}
