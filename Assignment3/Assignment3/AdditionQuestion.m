//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

// @Override
- (void) generateQuestion {
    // self.leftValue = super.leftValue;
    // [self setQuestion:[NSString stringWithFormat:@"%ld * %ld = ", [super leftValue], [super rightValue]]];
    // [self setAnswer: ([super leftValue] + [super rightValue])];
    [super setQuestion:[NSString stringWithFormat:@"%ld + %ld = ", [super leftValue], [super rightValue]]];
    [super setAnswer: ([super leftValue] + [super rightValue])];
}

@end
