import Foundation
import XCTest

class CodingTests: XCTestCase {
    
    func testMatchingParanthesis() {
        
        XCTAssertTrue(MatchingParanthesis.hasMatchingParanthesis("(test)"))
        XCTAssertTrue(MatchingParanthesis.hasMatchingParanthesis("(test{})"))
        XCTAssertFalse(MatchingParanthesis.hasMatchingParanthesis("[(test)"))
    }
}

CodingTests.defaultTestSuite.run()
