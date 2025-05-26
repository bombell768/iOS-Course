import Foundation

public func isBalancedParentheses(input: String) -> Bool {
    var count: Int = 0
    
    for char in input {
        if char == "(" {
            count += 1
        } else if char == ")" {
            count -= 1
            
            if count < 0 {
                return false
            }
        }
    }
    
    return count == 0
}

