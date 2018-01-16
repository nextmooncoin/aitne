//  Copyright © 2018 nextmooncoin. All rights reserved.

import Foundation
import Accounts
import SwifterMac

class DummyTwitterAccount: ACAccount {
    
}

public class FakeAitne: Aitne {
    
    public init() {
        let fakeSwifter = Swifter(account: DummyTwitterAccount())
        
        super.init(swifter: fakeSwifter)
    }
}
