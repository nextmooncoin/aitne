//  Copyright © 2018 nextmooncoin. All rights reserved.

import Foundation
import Accounts
import SwifterMac

class DummyTwitterAccount: ACAccount {
    
}

public class SpyAitne: Aitne {

    var consumerKey: String
    var consumerSecret: String
    var twitterTimelineCallCount = 0
    var analyzeTwitterTimelineCallCount = 0
    var tweetResultsCallCount = 0
    var twitterTimelineCallDate: Date
    var analyzeTwitterTimelineCallDate: Date
    var tweetResultsCallDate: Date

    override public init(consumerKey: String, consumerSecret: String) {
        self.consumerKey = consumerKey
        self.consumerSecret = consumerSecret
        
        let now = Date()
        twitterTimelineCallDate = now
        analyzeTwitterTimelineCallDate = now
        tweetResultsCallDate = now
        
        super.init(consumerKey: self.consumerKey, consumerSecret: self.consumerSecret)
    }
    
    override func twitterTimeline() {
        twitterTimelineCallCount += 1
        twitterTimelineCallDate = Date()
    }
    
    override func analyzeTwitterTimeline() {
        analyzeTwitterTimelineCallCount += 1
        analyzeTwitterTimelineCallDate = Date()
    }
    
    override func tweetResults() {
        tweetResultsCallCount += 1
        tweetResultsCallDate = Date()
    }
}
