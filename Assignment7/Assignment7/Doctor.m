//
//  Doctor.m
//  Assignment7
//
//  Created by Chao Hsien Li on 2018-04-23.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *) name AndSpecialty:(NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [NSMutableArray array];
    }
    return self;
}

- (BOOL) addPatientIfHasValidHealthCard: (Patient *) pat {
    NSLog(@"%@: Let me see your healthCard.", _name);
    if ([pat hasHealthCard]) {
        [_patientList addObject: pat];
        NSLog(@"%@: You have a valid healthcard so now you are my patient!", _name);
        return YES;
    } else {
        NSLog(@"%@: You do not have a valid healthcard. Please come back with a valid health card.", _name);
        return NO;
    }
}

//- (void) treatingAPatientWithPrescription: (Patient *) pat {
//    NSLog(@"%@: What's your sympton: %@", _name, _sympton);
//}

@end
















