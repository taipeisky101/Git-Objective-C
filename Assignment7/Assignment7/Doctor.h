//
//  Doctor.h
//  Assignment7
//
//  Created by Chao Hsien Li on 2018-04-23.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "Patient.h"
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;
@property (nonatomic, assign) BOOL isAccept;
// @property (nonatomic, strong) NSHashEnumerator *patientSymptonsHistory;
// @property (nonatomic, strong) NSHashTable *symptonsToPrescriptions;


- (instancetype)initWithName:(NSString *) name AndSpecialty:(NSString *) specialization;
- (BOOL) addPatientIfHasValidHealthCard: (Patient *) pat;

@end
