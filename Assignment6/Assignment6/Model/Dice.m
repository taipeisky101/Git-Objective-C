//
//  Dice.m
//  Assignment6
//
//  Created by Chao Hsien Li on 2018-04-20.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)initWithValue: (NSInteger) value
{
    self = [super init];
    if (self) {
        // _value = 0;
        _value = value;
        _isHeld = NO;
    }
    return self;
}

- (void) roll{
    _value = arc4random_uniform(6) + 1; // 0 - 5
}

// Two string method (override)
- (NSString *)description
{
    // NSString *str = @"1️⃣2️⃣3️⃣4️⃣5️⃣6️⃣";
    NSString *die;
    switch (_value) {
        case 1:
            die = _isHeld ? @"[1️⃣]" : @"1️⃣";
            break;
        case 2:
            die = _isHeld ? @"[2️⃣]" : @"2️⃣";
            break;
        case 3:
            die = _isHeld ? @"[3️⃣]" : @"3️⃣";
            break;
        case 4:
            die = _isHeld ? @"[4️⃣]" : @"4️⃣";
            break;
        case 5:
            die = _isHeld ? @"[5️⃣]" : @"5️⃣";
            break;
        case 6:
            die = _isHeld ? @"[6️⃣]" : @"6️⃣";
            break;
        default:
            break;
    }
    return die;
}

@end
