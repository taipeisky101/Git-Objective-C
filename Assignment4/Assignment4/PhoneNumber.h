//
//  PhoneNumber.h
//  Assignment4
//
//  Created by Chao Hsien Li on 2018-04-19.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

@property (nonatomic, strong) NSString *label;
@property (nonatomic, strong) NSString *digits;

- (instancetype)initWithLabel:(NSString *) label AndDigits:(NSString *) digits;
- (NSString *)description;


@end
