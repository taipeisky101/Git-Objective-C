//
//  Question.h
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (instancetype) init;
- (NSInteger) answer;
- (NSInteger) answerTime;

- (void) generateQuestion; // non-static instance method
// this is abstract method could be implemented/inherited and override in other SubClasses

@end
