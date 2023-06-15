//
//  TODOView.swift
//  KWK APP
//
//  Created by Jolena Akudago on 6/14/23.
//

import SwiftUI

struct Task: Identifiable {
    let id: String
    var title: String
    var isCompleted: Bool
}

class TaskStore: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(_ task: Task) {
        tasks.append(task)
    }
    
    func deleteTask(_ offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

struct TaskRow: View {
    @Binding var task: Task

    var body: some View {
        HStack {
            Toggle(isOn: $task.isCompleted) {
                Text(task.title)
                    .font(.title3)
                    .strikethrough(task.isCompleted)
                    .foregroundColor(task.isCompleted ? Color(#colorLiteral(red: 1.0, green: 0.67, blue: 0.79, alpha: 1.0)) : Color(#colorLiteral(red: 0.89, green: 0.65, blue: 1.0, alpha: 1.0)))
            }
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .padding([.leading, .trailing])
    }
}

struct AddTaskView: View {
    @Binding var isPresented: Bool
    @ObservedObject var taskStore: TaskStore
    @State private var newTaskTitle: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("New Task", text: $newTaskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: addNewTask) {
                    Text("Add Task")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            }
            .navigationTitle("Add a New Task")
            .navigationBarItems(leading: Button("Cancel") {
                isPresented = false
            })
        }
    }
    
    func addNewTask() {
        let task = Task(id: "\(taskStore.tasks.count + 1)", title: newTaskTitle, isCompleted: false)
        taskStore.addTask(task)
        newTaskTitle = ""
        isPresented = false
    }
}

struct TODOView: View {
    @ObservedObject var taskStore = TaskStore()
    @State private var showingAddTaskView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Add this line to put an image in the background. Replace "backgroundImage" with the name of your image.
                Image("backgroundImage")
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: -12.0, height: 5.0)
                    

                List {
                    ForEach(taskStore.tasks.indices.filter { !taskStore.tasks[$0].isCompleted }, id: \.self) { index in
                        TaskRow(task: self.$taskStore.tasks[index])
                    }
                    .onDelete(perform: deleteTask)
                }
                .background(Color.clear) // To make List background clear
                .navigationTitle("My To-Do List")
                .navigationBarItems(leading: EditButton(), trailing: Button(action: { showingAddTaskView = true }) {
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .accessibilityLabel("Add task")
                })
                .sheet(isPresented: $showingAddTaskView) {
                    AddTaskView(isPresented: $showingAddTaskView, taskStore: taskStore)
                }
                .listStyle(InsetGroupedListStyle())
                .accentColor(Color.black)
            }
        }
    }
    
    func deleteTask(at offsets: IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}

struct TODOView_Previews: PreviewProvider {
    static var previews: some View {
        TODOView()
    }
}
