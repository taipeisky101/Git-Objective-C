//
//  QuestionFactory.m
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion", // _subclassNames
                                  @"SubtractionQuestion",
                                  @"MultiplicationQuestion",
                                  @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion {
    // Question * q = [[AdditionQuestion alloc] init];
    // [q generateQuestion];
    
    int index = arc4random_uniform(4);
    
    // subclassNames[index]     // _subclassNames >> _questionTypes
    NSString *questionType = [_questionTypes objectAtIndex:index]; //
    Question *q = [[NSClassFromString(questionType) alloc] init];
    return q;
}

@end
