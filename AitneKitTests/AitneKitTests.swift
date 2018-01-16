//  Copyright © 2018 nextmooncoin. All rights reserved.

import XCTest
@testable import AitneKit

class AitneKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFakeAitneKit() {
        let _ = FakeAitne()
    }

}
