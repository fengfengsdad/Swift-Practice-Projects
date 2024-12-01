import UIKit


struct Task {
    var title: String
    var isCompleted: Bool
}

class Tasks {
    private var tasks:[Task] = []

    func addTask(task: Task){
        tasks.append(task)
        print(tasks)
    }

    func markAsCompleted(at index: Int){
        tasks[index].isCompleted = true
    }

    func filterOutCompletedTasks(){
        tasks = tasks.filter({$0.isCompleted == false})
        print(tasks)
    }
}

var task1 = Task(title: "Research", isCompleted: false)
var task2 = Task(title: "Writing", isCompleted: false)
var task3 = Task(title: "Markting", isCompleted: false)

var tasks = Tasks()
tasks.addTask(task: task1)
tasks.addTask(task: task3)
tasks.addTask(task: task2)

tasks.markAsCompleted(at: 1)
tasks.filterOutCompletedTasks()
