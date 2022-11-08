//
//  ContentView.swift
//  Tasks-SwiftUI
//
//  Created by GOM on 08/11/22.
//

import SwiftUI

struct ContentView: View {
    var tasks = [
        Task(title: "Buy eggs"),
        Task(title: "Clean house"),
        Task(title: "Go to work"),
        Task(title: "Play games"),
        Task(title: "Enjoy the day")
    ]
    
    @State private var multiSelection = Set<UUID>()
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            List(tasks, selection: $multiSelection) {
                Text($0.title)
            }
            .navigationTitle("Tasks")
            // .toolbar { EditButton() }
            .toolbar {
                EditButton()
                Button("Add") {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Title Text"),
                        message: Text("Message Text")
                    )
                }
            }
            
        }
        Text("\(multiSelection.count) selections")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
