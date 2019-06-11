/*
 Implement the following operations of a stack using queues.


 * push(x) -- Push element x onto stack.
 * pop() -- Removes the element on top of the stack.
 * top() -- Get the top element.
 * empty() -- Return whether the stack is empty.


Example:

MyStack stack = new MyStack();

stack.push(1);
stack.push(2);
stack.top();   // returns 2
stack.pop();   // returns 2
stack.empty(); // returns false

Notes:

* You must use only standard operations of a queue -- which means only push to back, peek/pop from front, size, and is empty operations are valid.

* Depending on your language, queue may not be supported natively. You may simulate a queue by using a list or deque (double-ended queue), as long as you use only standard operations of a queue.


* You may assume that all operations are valid (for example, no pop or top operations will be called on an empty stack).



 https://leetcode.com/problems/implement-stack-using-queues
 */

class MyStack {
    private var stack:[Int]
    /** Initialize your data structure here. */
    init() {
        stack = [Int]()
    }

    /** Push element x onto stack. */
    func push(_ x: Int) {
        stack.insert(x, at: 0)
    }

    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        guard !stack.isEmpty else { fatalError() }
        return stack.removeFirst()
    }

    /** Get the top element. */
    func top() -> Int {
        guard !stack.isEmpty else { fatalError() }
        return stack.first!
    }

    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return stack.isEmpty
    }
}
