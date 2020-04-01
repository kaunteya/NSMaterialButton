import XCTest
@testable import NSMaterialButton

final class NSMaterialButtonTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NSMaterialButton().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
