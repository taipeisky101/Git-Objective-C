//
//  ContactList.h
//  Assignment4
//
//  Created by Derrick on 2018-04-18.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@class Contact;

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;
- (void) addContact: (Contact *) newContact;
- (BOOL) shouldHaveContactWith: (NSString *) keyword;
- (Contact*) findContact:(NSString*) keyWord;

@end
