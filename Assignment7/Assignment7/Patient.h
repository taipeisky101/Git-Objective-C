//
//  Patient.h
//  Assignment7
//
//  Created by Chao Hsien Li on 2018-04-23.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
@class Doctor;

//OBJC_ENUM(NSInteger, Gender) {
//    MALE, FEMALE
//};

typedef enum : NSUInteger {
    MALE,
    FEMALE
} Gender;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL hasHealthCard;
// @property (nonatomic, strong) NSArray *symptons;
// @property (nonatomic, strong) NSMutableArray *symptons;

- (instancetype)initWithName:(NSString *) name AndGender:(Gender) gender AndAge:(NSInteger) age AndHasHealthCard:(BOOL) healthCard; // AndSymptons:(NSArray *)symptons;
- (BOOL) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;
// - (void) tellGerneralInfo;

@end















