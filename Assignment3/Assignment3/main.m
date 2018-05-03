//
//  main.m
//  Assignment3
//
//  Created by Chao Hsien Li on 2018-04-17.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "Scorekeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        Scorekeeper *sk = [[Scorekeeper alloc] init];
        NSLog(@"===== START MATH TEST =====");
        
        while(gameOn){
            
            // here override again & again
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            
            //get userinput
            NSString *input = [InputHandler getUserInput: [q1 question]];
            
            //if user input == quit (If player wants to stop while loop)
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            
            //convert int to NSString
            NSString *answer = [NSString stringWithFormat:@"%ld", [q1 answer]];
            
            if([input isEqualToString: answer]){
                NSLog(@"You are right!");
                [sk setRights: [sk rights] + 1]; // [sk setRights] is setter, [sk rights] is getter (cuz property used) with _rights = 0
            }else{
                NSLog(@"You are Wrong!");
                [sk setWrongs: [sk wrongs] + 1];
            }
        }
        [sk displayResult];
    }
    return 0;
}
