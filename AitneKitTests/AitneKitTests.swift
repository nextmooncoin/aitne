//  Copyright © 2018 nextmooncoin. All rights reserved.

import XCTest
@testable import AitneKit

class AitneKitTests: XCTestCase {
    
    func test_keysAndTokens() {
        let consumerKey = "someKey"
        let consumerSecret = "someSecret"
        let accessToken = "someToken"
        let accessTokenSecret = "someTokenSecret"
        
        let spyAitne = SpyAitne(consumerKey: consumerKey, consumerSecret: consumerSecret, accessToken: accessToken, accessTokenSecret: accessTokenSecret)
        spyAitne.run()
        
        XCTAssertEqual(spyAitne.consumerKey, "someKey")
        XCTAssertEqual(spyAitne.consumerSecret, "someSecret")
        XCTAssertEqual(spyAitne.accessToken, "someToken")
        XCTAssertEqual(spyAitne.accessTokenSecret, "someTokenSecret")
    }

}
