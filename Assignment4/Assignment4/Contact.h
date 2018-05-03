//
//  Contact.h
//  Assignment4
//
//  Created by Derrick on 2018-04-18.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"
// TODO: bonus 4 - multiple phone numbers
@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSMutableArray *phoneNumber;


- (instancetype)initWithName:(NSString *) name AndEmail:(NSString *) email;
- (void)addPhoneNumber: (PhoneNumber *) number;

@end
