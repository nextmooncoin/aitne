//  Copyright © 2018 nextmooncoin. All rights reserved.

#import <Foundation/Foundation.h>
@import AitneKit;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *key = @"key";
        NSString *secret = @"secret";
        Aitne *aitne = [[Aitne alloc] initWithConsumerKey: key consumerSecret: secret];
        [aitne run];
    }
    return 0;
}
