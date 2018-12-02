import XCTest
@testable import ToolKit

final class ToolKitTests: XCTestCase {
    func testExample() {
        // This function test if the function returns the right path for the
        // the used documents URL
        // testing travis
        let documentURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        XCTAssertEqual(documentURL, FileManager.default.documentDirectoryForCurrentUser)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
