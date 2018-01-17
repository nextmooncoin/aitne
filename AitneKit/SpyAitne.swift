//  Copyright © 2018 nextmooncoin. All rights reserved.

import Foundation
import Accounts
import SwifterMac

public class SpyAitne: Aitne {

    let consumerKey: String
    let consumerSecret: String
    let accessToken: String
    let accessTokenSecret: String
    
    override public init(consumerKey: String, consumerSecret: String, accessToken: String, accessTokenSecret: String) {
        self.consumerKey = consumerKey
        self.consumerSecret = consumerSecret
        self.accessToken = accessToken
        self.accessTokenSecret = accessTokenSecret
        
        super.init(consumerKey: self.consumerKey, consumerSecret: self.consumerSecret, accessToken: self.accessToken, accessTokenSecret: accessTokenSecret)
    }
}
