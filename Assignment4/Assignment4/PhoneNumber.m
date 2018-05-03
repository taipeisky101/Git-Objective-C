//
//  PhoneNumber.m
//  Assignment4
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
- (instancetype)initWithLabel:(NSString *) label AndDigits:(NSString *) digits
{
    self = [super init];
    if (self) {
        _label = label;
        _digits = digits;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ - %@", _label, _digits];
}

@end
