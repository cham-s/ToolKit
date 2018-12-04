import XCTest
@testable import ToolKit

final class ToolKitTests: XCTestCase {
    func testExample() {
        // This function test if the function returns the right path for the
        // the used documents URL
        let documentURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        XCTAssertEqual(documentURL, FileManager.default.documentDirectoryForCurrentUser)
    }
    
    func testIsDiretory() {
        // This test check for platform version to
        // check if a path is a directory or not
        let url = FileManager.default.documentDirectoryForCurrentUser
        XCTAssertTrue(url.hasDirectoryforPath)
    }

    static var allTests = [
        ("testExample", testExample),
        ("testIsDirectory", testIsDiretory)
    ]
}
