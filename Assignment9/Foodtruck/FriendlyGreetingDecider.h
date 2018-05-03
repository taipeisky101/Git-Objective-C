//
//  FriendlyGreetingDecider.h
//  Foodtruck
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

// < implement the interface, conform to protocol 符合協議 for iOS
// < angle bracket
@interface FriendlyGreetingDecider : NSObject <GreeterDelegate>
- (BOOL) shouldSayHello;
@end
