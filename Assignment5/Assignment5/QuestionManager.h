//
//  QuestionManager.h
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject // This interface inherits the SuperClass NSObject

@property (nonatomic, strong) NSMutableArray *questions;

+ (QuestionManager *) manager;
- (void) addQuestion: (Question *) question;
- (NSString *) timeOutput;

@end
