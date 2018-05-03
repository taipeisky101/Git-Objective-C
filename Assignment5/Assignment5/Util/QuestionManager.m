//
//  QuestionManager.m
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager // implement this interface QuestionManager.h

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array]; // [NSMutableArray alloc] init]
        // [NSMutableDictionary dictionary];
    }
    return self;
}

+ (QuestionManager *) manager {
    // return [self init];
    return [[QuestionManager alloc] init];
}

- (void) addQuestion: (Question *) question {
    [_questions addObject: question];
}

- (NSString *) timeOutput {
    Question *lastQ = [_questions lastObject];
    Question *firstQ = [_questions firstObject];
    NSTimeInterval total = [lastQ.endTime timeIntervalSinceDate:firstQ.startTime];
    NSUInteger numQ = [_questions count];
    // _questions first question (startTime)
    //              last question (endTime)
    //                  = totalTime
    //              [_questions count] ==> the number of questions
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs", total, total / numQ];
}

@end















