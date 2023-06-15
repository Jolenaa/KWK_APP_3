//
//  ContentView.swift
//  AppTry2
//
//  Created by Jolena Akudago on 6/14/23.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

struct TaskRow: View {
    @Binding var task: Task

    var body: some View {
        Toggle(isOn: $task.isCompleted) {
            Text(task.title)
                .font(.title3)
                .strikethrough(task.isCompleted)
                .foregroundColor(task.isCompleted ? Color(#colorLiteral(red: 1.0, green: 0.8, blue: 0.8, alpha: 1.0)) : Color(#colorLiteral(red: 0.89, green: 0.65, blue: 1.0, alpha: 1.0)))
        }
    }
}

struct ToDo: View {
    @State private var tasks: [Task] = []
    @State private var newTaskTitle = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    TaskRow(task: self.$tasks[self.tasks.firstIndex(where: { $0.id == task.id })!])
                }
                .onDelete(perform: delete)
                
                HStack {
                    TextField("New Task", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: addTask) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 0.8, blue: 0.65, alpha: 1.0)))
                            .imageScale(.large)
                    }
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(leading: EditButton())
            .listStyle(InsetGroupedListStyle())
            .accentColor(Color(#colorLiteral(red: 0.93, green: 0.8, blue: 0.65, alpha: 1.0)))
        }
    }
    
    private func addTask() {
        withAnimation {
            let newTask = Task(title: newTaskTitle, isCompleted: false)
            tasks.append(newTask)
            newTaskTitle = ""
        }
    }

    private func delete(offsets: IndexSet) {
        withAnimation {
            tasks.remove(atOffsets: offsets)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDo()
    }
}
