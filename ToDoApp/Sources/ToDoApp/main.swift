import Foundation

struct ToDo {
    var id: Int
    var title: String
    var status: String
}

func filterToDos(for todos: [ToDo]) -> [ToDo] {
    return todos.filter { $0.id % 2 == 0 && $0.status == "completed" }
}

// Sample Data
let todos = [
    ToDo(id: 1, title: "Task 1", status: "completed"),
    ToDo(id: 2, title: "Task 2", status: "completed"),
    ToDo(id: 3, title: "Task 3", status: "pending"),
    ToDo(id: 4, title: "Task 4", status: "completed"),
    ToDo(id: 5, title: "Task 5", status: "completed"),
    ToDo(id: 6, title: "Task 6", status: "pending")
]

let filteredToDos = filterToDos(for: todos)
print(filteredToDos)  // Output filtered to-dos
