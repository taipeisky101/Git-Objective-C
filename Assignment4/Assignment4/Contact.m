//
//  Contact.m
//  Assignment4
//
//  Created by Derrick on 2018-04-18.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithName:(NSString *) name AndEmail:(NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumber = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addPhoneNumber: (PhoneNumber *) phoneNumber {
    [_phoneNumber addObject: phoneNumber];
}

@end
