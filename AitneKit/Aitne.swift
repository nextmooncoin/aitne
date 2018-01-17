//  Copyright © 2018 nextmooncoin. All rights reserved.

import Foundation
import SwifterMac

@objc
public class Aitne: NSObject {
    let swifter: Swifter
    
    @objc
    public init(consumerKey: String, consumerSecret: String, accessToken: String, accessTokenSecret: String) {
        self.swifter = Swifter(consumerKey: consumerKey, consumerSecret: consumerSecret, oauthToken: accessToken, oauthTokenSecret: accessTokenSecret)
    }
    
    @objc
    public func run() {
        // use cooridnators?
        
        // twitter login
        // on completion, get timeline or exit
        // on completion, (analyze timeline and tweet results) or exit
        // on completion exit
    }
}
