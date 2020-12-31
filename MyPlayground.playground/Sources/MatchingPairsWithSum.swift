import Foundation
/*
 Given an array of integers, and a number ‘sum’, print all pairs in the array
 whose sum is equal to ‘sum’.
 */

public class MatchingPairsWithSum {
    
    /*
     Solution: - We use a set to add elements of an array.
     Get the difference between sum and current element,
     if the difference is found in set then a matching pair is found else
     add it set and move forward.
     */
    public static func getMatchingPairWithSum(sum: Int, _ test: [Int]) -> [(Int, Int)] {
        
        var set: Set<Int> = []
        var result: [(Int, Int)] = []
        test.forEach { number in
            
            let temp = sum - number
            if set.contains(temp) {
                result.append((temp, number))
            } else {
                set.insert(number)
            }
        }
        print(result)
        return result
    }
}
