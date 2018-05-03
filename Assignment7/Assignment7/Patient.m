//
//  Patient.m
//  Assignment7
//
//  Created by Chao Hsien Li on 2018-04-23.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *) name AndGender:(Gender) gender AndAge:(NSInteger) age AndHasHealthCard:(BOOL) healthCard AndSymptons:(NSArray *) symptons
{
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
        _hasHealthCard = healthCard;
        // _symptons = symptons;
    }
    return self;
}

// Tightly coupled
- (BOOL) visitDoctor: (Doctor *) doctor {
    NSLog(@"Hello, Dr.%@, My name is %@. I need your help!", [doctor name], _name);
    // Doctor should check the patient's health card
    return [doctor addPatientIfHasValidHealthCard: self];
}

//- (BOOL) requestMedication: (Doctor *) doctor {
//    if (_sympton == [doctor
//    return [self isEqualToArray:(NSArray *)object];
//}

@end














