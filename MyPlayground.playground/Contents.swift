import Foundation
import XCTest

class CodingTests: XCTestCase {
    
    func testMatchingParanthesis() {
        
        XCTAssertTrue(MatchingParanthesis.hasMatchingParanthesis("(test)"))
        XCTAssertTrue(MatchingParanthesis.hasMatchingParanthesis("(test{})"))
        XCTAssertFalse(MatchingParanthesis.hasMatchingParanthesis("[(test)"))
    }
    
    func testMatchingPairsWithSum() {
        
       let pairs =  MatchingPairsWithSum.getMatchingPairWithSum(sum: 6, [1, 5, 7, -1, 5])
        XCTAssertEqual(pairs.count, 3)
    }
}

CodingTests.defaultTestSuite.run()
