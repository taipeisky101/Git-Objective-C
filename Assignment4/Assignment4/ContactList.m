//
//  ContactList.m
//  Assignment4
//
//  Created by Derrick on 2018-04-18.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addContact: (Contact *) newContact {
    [_contacts addObject: newContact];
}

- (BOOL) shouldHaveContactWith: (NSString *) keyword {
    for (Contact *contact in _contacts) {
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]) {
            return YES;
        }
    }
    return NO;
}

- (Contact *) findContact:(NSString *) keyword {
    for (Contact *contact in _contacts) {
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]) {
            return contact;
        }
    }
    return nil;
}

@end
