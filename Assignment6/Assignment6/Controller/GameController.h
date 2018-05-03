//
//  GameController.h
//  Assignment6
//
//  Created by Chao Hsien Li on 2018-04-20.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
@interface GameController : NSObject

@property (nonatomic, assign) long MAX_ROLLS;
@property (nonatomic, strong) NSMutableArray<Dice *> *dice;

- (void) holdDie: (NSInteger) dieNumber;
- (void) rollTheRest;
- (void) displayDice;


//void GameController(NSMutableArray *diceHeld, NSMutableArray *diceRest) {
//    NSString *select = [InputHandler getUserInputWithPrompt:@"Select and hold the dice: "];
//}
//
//NSMutableArray *diceHeld;
//NSMutableArray *diceRest;

@end
