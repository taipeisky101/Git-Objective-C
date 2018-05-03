//
//  HorribleGreetingDecider.h
//  Foodtruck
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

@interface HorribleGreetingDecider : NSObject <GreeterDelegate>

- (BOOL)shouldSayHello;

@end
