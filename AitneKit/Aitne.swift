//  Copyright © 2018 nextmooncoin. All rights reserved.

import Foundation
import SwifterMac

public class Aitne  {
    private let swifter: Swifter
    
    public init(swifter: Swifter) {
        self.swifter = swifter
    }
    
    public func run() {
        let serialQueue = DispatchQueue(label: "com.nextmooncoin.adrastea", qos: .default)
        
        serialQueue.sync() {
            self.twitterTimeline()
        }
        
        serialQueue.sync() {
            self.analyzeTwitterTimeline()
        }
        
        serialQueue.sync() {
            self.tweetResults()
        }
    }
    
    private func twitterTimeline() {
        print("obtain twitter timeline")
    }
    
    private func analyzeTwitterTimeline() {
        print("analyze twitter timeline")
    }
    
    private func tweetResults() {
        print("tweet results")
    }
}
