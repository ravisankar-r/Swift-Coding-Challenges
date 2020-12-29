import Foundation

// Given an expression string exp, write a program to examine whether the pairs and the orders of “{“, “}”, “(“, “)”, “[“, “]” are correct in exp.

func hasMatchingParanthesis(_ str: String) -> Bool {
    
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
