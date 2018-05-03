//
//  NSString+PigLatin.m
//  Assignment13
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *) stringByPigLatinization {
    // 1. self -> ["w1", "w2", ...];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSArray *clusters = @[@"sc", @"ng", @"ch", @"ck", @"gh", @"ph", @"rh", @"sh", @"th", @"wh", @"zh", @"wr", @"kn"];
    NSMutableArray *pigLatinized = [NSMutableArray new];
    NSArray* words = [self componentsSeparatedByString:@" "];
    for (NSString *word in words) {
        if ([clusters containsObject: [[word substringToIndex:2] lowercaseString]]) {
            NSString *pig = [NSString stringWithFormat:@"%@%@ay",
            [word substringFromIndex:2],
            [word substringToIndex:2]];
            [pigLatinized addObject: [[pig lowercaseString] capitalizedString]];
        } else if (![vowels characterIsMember: [word characterAtIndex:0]]) {
            NSString *pig = [NSString stringWithFormat:@"%@%cay",
                             [word substringFromIndex:1],
                             [word characterAtIndex:0]];
            [pigLatinized addObject: [[pig lowercaseString] capitalizedString]];
        } else {
            NSString *pig = [NSString stringWithFormat:@"%@ay", word];
            [pigLatinized addObject: [[pig lowercaseString] capitalizedString]];
        }
    }
    return [pigLatinized componentsJoinedByString:@" "];
}

@end













