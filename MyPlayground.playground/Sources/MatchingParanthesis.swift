import Foundation
import XCTest

// Given an expression string exp, write a program to examine whether the pairs and the orders of “{“, “}”, “(“, “)”, “[“, “]” are correct in exp.


/* Solution
 ----------------------------------
 The challenge here is to identify the correct data structure to use. This can be solved using a stack. We need to identifiy the characters in the string and everytime we come across an opening brace we will push it onto a stack. Whenever we come across a closing brace we check the the top element on the stack , if both matches we pop it from the stack. The string will have matching brace if the stack is empty in the end
 */

public class MatchingParanthesis {
    public static func hasMatchingParanthesis(_ str: String) -> Bool {
        
        let matchingDict:[Character: Character] = [")": "(",
                                                   "}": "{",
                                                   "[":"]"]
        var stack: [Character] = []
        let openingBraces: Set<Character> = ["(", "{", "["]
        str.forEach { char in
            
            if openingBraces.contains(char) {
                stack.append(char)
            } else if let last = stack.last,
                      let matchingBrace = matchingDict[char],
                      last == matchingBrace {
                
                stack.popLast()
            }
        }
        return stack.isEmpty
    }
}
