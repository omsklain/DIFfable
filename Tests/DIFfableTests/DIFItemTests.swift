
import XCTest
@testable import DIFfable

final class DIFItemTests: XCTestCase {

    func testExample() throws {
        
        let item = DIFItem(id: "0")
        XCTAssertNotEqual(item.hashValue, nil)
    }

}
