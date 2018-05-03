//
//  Question.m
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "Question.h"

@implementation Question

// encapsulate random number generation in this class this method
// custom initializer
- (instancetype)init // can override init again & again
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91) + 10; // 10~100
        _rightValue = arc4random_uniform(91) + 10;
        
        // convert int to NSString
        // _question = [NSString stringWithFormat:@"%d + %d = ", _leftValue, _rightValue];
        // _answer = _leftValue + _rightValue; // initialize the value inside constructor init
        _startTime = [NSDate date]; // so call "convenience initializer" putting current time
        // or _startTime = [[NSDate alloc] init];
    }
    return self;
}

- (void) generateQuestion {
}

- (NSInteger) answer {
    _endTime = [NSDate date]; // putting current time
    // NSLog(@"%@", _endTime);
    return _answer;
}

- (NSInteger) answerTime {
    NSTimeInterval interval = [_endTime timeIntervalSinceDate:_startTime];
    NSLog(@"%.2f", interval);
    // interval (in secs)
    return interval;
}

@end
