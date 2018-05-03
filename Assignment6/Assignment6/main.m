//
//  main.m
//  Assignment6
//
//  Created by Chao Hsien Li on 2018-04-20.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSLog(@"1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣");
        
        GameController *player = [[GameController alloc] init];
        
//        NSArray *arr = @[d1, d2, d3, d4, d5];
//        for(int i = 0; i < arr.count; i++) {
//            [arr[i] roll];
//            NSLog(@"%@", arr[i]);
//        }
        
        while ([player MAX_ROLLS] > 0) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Enter roll to roll the dice: "];
            if ([input isEqualToString:@"roll"]) {
                [player rollTheRest];
                while (YES) {
                    NSString *hold = [InputHandler getUserInputWithPrompt:@"Enter a number to hold a die or 'q' to quit: "];
                    if ([hold isEqualToString:@"q"]) {
                        break;
                    }
                    [player holdDie: [hold integerValue]];
                }
//                for(int i = 0; i < arr.count; i++) {
//                    [arr[i] roll];
//                }
//                NSLog(@"%@ %@ %@ %@ %@", arr[0], arr[1], arr[2], arr[3], arr[4]);
            } else {
                break;
            }
        }
    }
    return 0;
}




















