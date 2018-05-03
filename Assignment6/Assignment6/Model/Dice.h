//
//  Dice.h
//  Assignment6
//
//  Created by Chao Hsien Li on 2018-04-20.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Dice : NSObject

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, assign) BOOL isHeld;

- (instancetype)initWithValue: (NSInteger) value;
- (void) roll;
- (NSString *)description;

@end
