//
//  Greeter.m
//  Foodtruck
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (BOOL) askDelegate {
    return [self.delegate shouldSayHello];
}

@end
