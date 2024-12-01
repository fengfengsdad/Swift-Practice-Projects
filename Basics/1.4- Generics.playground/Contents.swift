import UIKit

func returnFirstElement<T>(array: [T]) -> T? {
    return array.first
}


let nums:[Int] = [1,2,3,4]

print(returnFirstElement(array: nums))


class Stack<T> {
    var elements = [T]()
    
    func push(element: T){
        elements.append(element)
    }
    
    func pop() -> T?{
        if !elements.isEmpty {
            return elements.removeLast()
        }
        return nil
    }
}


var newStack = Stack<String>()

newStack.push(element: "Hi")
newStack.push(element: "How are you")
print(newStack.pop())
