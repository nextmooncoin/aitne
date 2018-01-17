//  Copyright © 2018 nextmooncoin. All rights reserved.

#import <Foundation/Foundation.h>
@import AitneKit;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *consumerKey = @"consumerKey";
        NSString *consumerSecret = @"consumerSecret";
        NSString *accessToken = @"accessToken";
        NSString *accessTokenSecret = @"accessTokenSecret";
        Aitne *aitne = [[Aitne alloc] initWithConsumerKey: consumerKey consumerSecret: consumerSecret accessToken: accessToken accessTokenSecret: accessTokenSecret];
        [aitne run];
    }
    return 0;
}
