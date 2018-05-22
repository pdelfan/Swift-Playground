import UIKit

// Queue
struct Queue<T> {
    var list = [T]()
    var isEmpty: Bool {
        return list.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        list.append(element)
    }
    
    mutating func dequeue() -> T? {
        if !list.isEmpty {
            return list.removeFirst()
        } else {
            return nil
        }
    }
    
    func peek() -> T? {
        if !list.isEmpty {
            return list[0]
        } else {
            return nil
        }
        // return !list.isEmpty ? list[0] : nil
    }
    
    func showQueue() {
        if list.isEmpty {
            print("List is empty.")
        } else {
            for element in list {
                print(element)
            }
        }
    }
}

var collection = Queue<Int>()


struct Stack<T> {
    var array: [T] = []
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        if !array.isEmpty {
            let index = array.count - 1
            let poppedValue = array.remove(at: index)
            print("Popped \(poppedValue) at index \(index)")
            return poppedValue
        } else {
            print("Nothing to pop")
            return nil
        }
    }
    
    func peek() -> T? {
        if !array.isEmpty {
            print("Peeked: \(array.last!)")
            return array.last
        } else {
            print("Nothing to peek at.")
            return nil
        }
    }
}

var col = Stack<Int>()
col.push(0)
col.push(1)
col.push(2)
col.peek()
col.pop()
