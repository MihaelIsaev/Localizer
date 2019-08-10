import XCTest
@testable import Localizer

final class LocalizerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Localizer().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
