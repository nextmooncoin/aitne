//  Copyright © 2018 nextmooncoin. All rights reserved.

import Foundation
import SwifterMac

protocol AitneProtocol {
    func twitterTimeline()
    func analyzeTwitterTimeline()
    func tweetResults()
}

@objc
public class Aitne: NSObject, AitneProtocol {
    let swifter: Swifter
    
    @objc
    public init(consumerKey: String, consumerSecret: String) {
        self.swifter = Swifter(consumerKey: consumerKey, consumerSecret: consumerSecret)
    }
    
    @objc
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
    
    internal func twitterTimeline() {
        print("obtain twitter timeline")
    }
    
    internal func analyzeTwitterTimeline() {
        print("analyze twitter timeline")
    }
    
    internal func tweetResults() {
        print("tweet results")
    }
}
