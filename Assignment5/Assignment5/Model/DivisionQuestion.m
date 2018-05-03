//
//  DivisionQuestion.m
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

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
    [super setQuestion:[NSString stringWithFormat:@"%ld / %ld = ", [super leftValue], [super rightValue]]];
    [super setAnswer: ([super leftValue] / [super rightValue])];
}

@end
