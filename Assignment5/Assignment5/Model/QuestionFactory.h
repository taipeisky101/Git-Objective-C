//
//  QuestionFactory.h
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes; // NSArray *subclassNames;

- (Question *) generateRandomQuestion;

@end
