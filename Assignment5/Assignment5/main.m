//
//  main.m
//  Assignment5
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "Scorekeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"===== START MATH TEST =====");
        Scorekeeper *sk = [[Scorekeeper alloc] init];
        QuestionManager *qm = [QuestionManager manager]; // - >> + [[QuestionManager alloc] init];
        QuestionFactory *qf = [[QuestionFactory alloc] init];
        
        while(gameOn){
            
            // here override again & again
            // Question *q1 = [[Question alloc] init];
            Question *q1 = [qf generateRandomQuestion];
           
            //get userinput
            NSString *input = [InputHandler getUserInput: [q1 question]];
            
            //if user input == quit (If player wants to stop while loop)
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            
            //convert int to NSString
            NSString *answer = [NSString stringWithFormat:@"%ld", [q1 answer]];
            [qm addQuestion: q1];
            // [q1 answerTime];
            if([input isEqualToString: answer]){
                NSLog(@"Right!");
                [sk setRights: [sk rights] + 1]; // [sk setRights] is setter, [sk rights] is getter (cuz property used) with _rights = 0
            }else{
                NSLog(@"Wrong!");
                [sk setWrongs: [sk wrongs] + 1];
            }
        }
        [sk displayResult];
        // NSLog(@"%ld", [[qm questions] count]);
        NSLog(@"%@", [qm timeOutput]);
    }
    return 0;
}

