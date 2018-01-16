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
    
    func test_synchronizedCalls() {
        let key = "someKey"
        let secret = "someSecret"
        let spyAitne = SpyAitne(consumerKey: key, consumerSecret: secret)
        spyAitne.run()
        
        XCTAssertEqual(spyAitne.twitterTimelineCallCount, 1)
        XCTAssertEqual(spyAitne.analyzeTwitterTimelineCallCount, 1)
        XCTAssertEqual(spyAitne.tweetResultsCallCount, 1)
        
        XCTAssertTrue(spyAitne.twitterTimelineCallDate < spyAitne.analyzeTwitterTimelineCallDate)
        XCTAssertTrue(spyAitne.analyzeTwitterTimelineCallDate < spyAitne.tweetResultsCallDate)
    }

}
